import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_emotion.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_game.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_image.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_namecard.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_redpacket.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_dice.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_video.dart';
import 'package:openchat_client/src/rust/api/model/ffi_emotion_model.dart';
import 'widgets/chat_list_image_widget.dart';
import 'widgets/chat_list_namecard_widget.dart';
import 'widgets/chat_list_redpacket_widget.dart';
import 'widgets/chat_list_text_widget.dart';
import 'widgets/chat_list_dice_widget.dart';
import 'widgets/chat_list_video_widget.dart';
import 'widgets/image_gallery_viewer.dart';
import 'widgets/chat_list_emoji_popview_widget.dart';
import 'widgets/chat_list_input_widget.dart'; // 🔥 新增：导入输入框组件
import 'widgets/chat_reply_bar_widget.dart'; // 新增：导入回复栏组件
import 'utils/performance_monitor.dart';
import 'utils/demo_image_urls.dart'; // 🔥 新增：导入图片URL管理工具
import 'models/chat_message.dart';
import 'blocs/chat_list_notifier.dart';
import 'blocs/chat_list_event.dart';
import 'blocs/chat_list_state.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'services/asset_picker_service.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import '../../../common/ffi.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'dart:async'; // 添加Timer import
import 'widgets/chat_list_message_widget.dart'; // 新增导入
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'widgets/chat_list_app_bar.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../../common/widgets/progress_image_demo_page.dart'; // 新增导入
import '../../common/widgets/simple_image_test.dart'; // 新增导入
import 'more_features_page.dart'; // 新增导入
import 'widgets/chat_retweet_bar_widget.dart'; // 新增导入

// 模拟的FFI模型类
class MockFfiModel {
  final int id;
  final bool isMe;
  final DateTime timestamp;
  final String content;

  MockFfiModel({
    required this.id,
    required this.isMe,
    required this.timestamp,
    required this.content,
  });
}

// 简化的网络状态枚举
enum NetworkConnectionStatus { connected, disconnected, unknown }

class ChatDemoPage extends ConsumerStatefulWidget {
  final String chatTitle;
  final String? avatarUrl;
  final FfiChatType chatType; // 使用真实的FfiChatType
  final int targetId;
  final List<ChatMessage>? messagesToForward;

  const ChatDemoPage({
    super.key,
    this.chatTitle = '137602',
    this.avatarUrl,
    this.chatType = FfiChatType.single, // 默认单聊
    this.targetId = 137602,
    this.messagesToForward,
  });

  @override
  ConsumerState<ChatDemoPage> createState() => _ChatDemoPageState();
}

class _ChatDemoPageState extends ConsumerState<ChatDemoPage> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final FocusNode _focusNode = FocusNode();

  // 使用ValueNotifier来管理发送按钮状态，避免全局setState
  final ValueNotifier<bool> _canSendMessage = ValueNotifier<bool>(false);

  // 🔥 性能优化：使用ValueNotifier管理滚动相关状态，避免频繁setState
  final ValueNotifier<bool> _showScrollToBottomButton = ValueNotifier<bool>(
    false,
  );
  final ValueNotifier<bool> _showBottomOptions = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _showEmojiPicker = ValueNotifier<bool>(false);

  // 回复功能相关状态
  final ValueNotifier<ChatMessage?> _replyToMessage =
      ValueNotifier<ChatMessage?>(null);

  // 转发功能相关状态
  final ValueNotifier<List<ChatMessage>?> _messagesToForward =
      ValueNotifier<List<ChatMessage>?>(null);

  // 网络连接状态相关
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;
  final ValueNotifier<NetworkConnectionStatus> _networkStatus =
      ValueNotifier<NetworkConnectionStatus>(NetworkConnectionStatus.unknown);

  // 使用传入的参数生成conversationId
  String get conversationId => '${widget.targetId}_${widget.chatType.index}';

  bool _isAutoScrolling = false; // 标记是否正在程序控制滚动
  double _lastScrollPosition = 0.0; // 记录上次滚动位置
  bool _hasInitializedScroll = false; // 添加初始化滚动标记
  int _lastMessageCount = 0; // 跟踪上一次的消息数量

  // 🔥 性能优化：防抖机制
  Timer? _scrollDebounceTimer;
  Timer? _uiUpdateDebounceTimer;

  // 🔥 性能优化：缓存计算结果
  bool _lastIsNearBottom = false;
  bool _lastShouldShowButton = false;

  @override
  void initState() {
    super.initState();

    // 初始化转发消息
    if (widget.messagesToForward != null) {
      _messagesToForward.value = widget.messagesToForward;
    }

    // 监听文本控制器变化，更新发送按钮状态
    _textController.addListener(() {
      final canSend = _textController.text.trim().isNotEmpty;
      if (_canSendMessage.value != canSend) {
        _canSendMessage.value = canSend;
      }
    });

    _focusNode.addListener(() {
      // 🔥 性能优化：使用ValueNotifier避免setState
      if (_focusNode.hasFocus && _showEmojiPicker.value) {
        _showEmojiPicker.value = false;
      }
      if (_focusNode.hasFocus && _showBottomOptions.value) {
        _showBottomOptions.value = false;
      }

      // 当输入框获得焦点时，延迟滚动到底部
      if (_focusNode.hasFocus) {
        Future.delayed(const Duration(milliseconds: 400), () {
          if (mounted) {
            _scrollToBottomByIndex();
          }
        });
      }
    });

    // 延迟初始化消息并滚动到底部
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeMessages();
    });

    // 🔥 性能优化：优化滚动监听器
    _scrollController.addListener(_onScrollOptimized);

    // 初始化网络状态监听
    _initializeNetworkMonitoring();
  }

  /// 初始化网络监听
  void _initializeNetworkMonitoring() {
    _connectivitySubscription = Connectivity().onConnectivityChanged.listen((
      results,
    ) {
      _handleNetworkChange(results);
    });

    // 立即检查一次网络状态
    _checkInitialNetworkStatus();
  }

  /// 检查初始网络状态
  void _checkInitialNetworkStatus() async {
    try {
      final results = await Connectivity().checkConnectivity();
      _handleNetworkChange(results);
    } catch (e) {
      print('❌ 检查初始网络状态失败: $e');
    }
  }

  /// 处理网络状态变化
  void _handleNetworkChange(List<ConnectivityResult> results) {
    final hasConnection = !results.contains(ConnectivityResult.none);

    _networkStatus.value =
        hasConnection
            ? NetworkConnectionStatus.connected
            : NetworkConnectionStatus.disconnected;

    if (hasConnection) {
      print('🌐 网络已连接');
    } else {
      print('❌ 网络连接断开');
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.removeListener(_onScrollOptimized); // 显式移除监听器
    _scrollController.dispose();
    _focusNode.dispose();
    _canSendMessage.dispose();

    // 🔥 性能优化：释放ValueNotifier资源
    _showScrollToBottomButton.dispose();
    _showBottomOptions.dispose();
    _showEmojiPicker.dispose();
    _networkStatus.dispose(); // 释放网络状态ValueNotifier
    _replyToMessage.dispose(); // 释放回复状态ValueNotifier
    _messagesToForward.dispose(); // 释放转发状态ValueNotifier

    // 取消定时器
    _scrollDebounceTimer?.cancel();
    _uiUpdateDebounceTimer?.cancel();
    _connectivitySubscription?.cancel(); // 取消网络监听
    super.dispose();
  }

  // 🔥 性能优化：优化的滚动监听器
  void _onScrollOptimized() {
    if (!_scrollController.hasClients || _isAutoScrolling) return;

    // 使用防抖机制减少频繁计算
    _scrollDebounceTimer?.cancel();
    _scrollDebounceTimer = Timer(const Duration(milliseconds: 16), () {
      if (!mounted || !_scrollController.hasClients) return;

      _performScrollCalculations();
    });
  }

  // 🔥 性能优化：独立的滚动计算方法
  void _performScrollCalculations() {
    final currentPosition = _scrollController.offset;

    // 如果是第一次滚动，初始化位置
    if (_lastScrollPosition == 0.0 && currentPosition > 0) {
      _lastScrollPosition = currentPosition;
      return;
    }

    final isScrollingUp = currentPosition < _lastScrollPosition;
    final maxScrollExtent = _scrollController.position.maxScrollExtent;
    final isNearBottom = currentPosition > (maxScrollExtent - 100);

    // 🔥 性能优化：只在状态真正改变时更新UI
    if (isNearBottom != _lastIsNearBottom) {
      _lastIsNearBottom = isNearBottom;

      // 控制悬浮按钮显示
      final shouldShowButton = !isNearBottom && maxScrollExtent > 100;
      if (shouldShowButton != _lastShouldShowButton) {
        _lastShouldShowButton = shouldShowButton;
        _showScrollToBottomButton.value = shouldShowButton;

        // 减少print语句，仅在debug模式下输出
        if (kDebugMode) {
          print('📍 ${shouldShowButton ? "显示" : "隐藏"}悬浮滚动按钮');
        }
      }
    }

    // 只有在向上滚动且不在底部附近时才隐藏面板
    if (isScrollingUp &&
        !isNearBottom &&
        (_showBottomOptions.value ||
            _showEmojiPicker.value ||
            _focusNode.hasFocus)) {
      _hideBottomPanelsOnScroll();
    }

    // 更新上次滚动位置
    _lastScrollPosition = currentPosition;
  }

  void _initializeMessages() async {
    // 🔥 修复：重置初始化滚动标记，确保每次进入页面都能正确滚动
    _hasInitializedScroll = false;
    print('🎯 页面初始化：重置滚动标记，_hasInitializedScroll = false');

    final notifier = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId).notifier,
    );

    // 触发初始化事件
    notifier.add(
      ChatListEvent.initialized(
        widget.chatType,
        widget.targetId,
        widget.messagesToForward,
      ),
    );
    print('已触发聊天初始化事件');

    // 使用延迟方式等待数据加载完成
    _waitForDataWithDelay();
  }

  /// 使用延迟方式等待数据加载完成
  void _waitForDataWithDelay() {
    // 检查页面是否还在mounted状态
    if (!mounted) {
      print('⚠️ 页面已dispose，跳过数据等待');
      return;
    }

    // 首先立即检查一次数据是否已经存在
    final immediateState = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId),
    );
    final immediateMessages = immediateState.maybeMap(
      success: (s) => s.messages.cast<ChatMessage>(),
      input: (i) => i.messages.cast<ChatMessage>(),
      orElse: () => const <ChatMessage>[],
    );

    if (immediateMessages.isNotEmpty && !_hasInitializedScroll) {
      print('🎯 立即检查：数据已存在，立即执行初始滚动');
      _performInitialScroll();
      return;
    }

    print('🎯 立即检查：数据未加载，延迟500ms后重试');

    // 延迟500ms后检查数据
    Future.delayed(const Duration(milliseconds: 500), () {
      if (!mounted || _hasInitializedScroll) return;

      final state = ref.read(
        chatListNotifierProvider(widget.chatType, widget.targetId),
      );
      final messages = state.maybeMap(
        success: (s) => s.messages.cast<ChatMessage>(),
        input: (i) => i.messages.cast<ChatMessage>(),
        orElse: () => const <ChatMessage>[],
      );

      if (messages.isNotEmpty) {
        print('🎯 延迟检查：数据已加载，执行初始滚动');
        _performInitialScroll();
      } else {
        print('🎯 延迟检查：数据未加载，继续等待');
        // 如果数据还没加载，再延迟1秒重试
        Future.delayed(const Duration(milliseconds: 1000), () {
          if (!mounted || _hasInitializedScroll) return;

          final retryState = ref.read(
            chatListNotifierProvider(widget.chatType, widget.targetId),
          );
          final retryMessages = retryState.maybeMap(
            success: (s) => s.messages.cast<ChatMessage>(),
            input: (i) => i.messages.cast<ChatMessage>(),
            orElse: () => const <ChatMessage>[],
          );

          if (retryMessages.isNotEmpty) {
            print('🎯 重试检查：数据已加载，执行初始滚动');
            _performInitialScroll();
          } else {
            print('🎯 重试检查：数据仍未加载，强制执行初始滚动');
            _performInitialScroll(); // 强制执行，避免一直等待
          }
        });
      }
    });
  }

  /// 执行初始滚动到底部
  void _performInitialScroll() {
    if (_hasInitializedScroll) return;

    print('🎯 开始执行初始滚动到底部');
    _hasInitializedScroll = true;

    // 获取当前消息数量
    final state = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId),
    );
    final messages = state.maybeMap(
      success: (s) => s.messages.cast<ChatMessage>(),
      input: (i) => i.messages.cast<ChatMessage>(),
      orElse: () => const <ChatMessage>[],
    );

    _lastMessageCount = messages.length;
    print('🎯 初始消息数量: ${messages.length}');

    // 使用快速跳转进行初始滚动
    _jumpToBottom();

    // 额外的保险滚动（带动画）
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        print('🎯 执行保险滚动');
        _scrollToBottomByIndex();
      }
    });
  }

  /// 开始回复消息
  void _startReply(ChatMessage message) {
    print('💬 开始回复消息: ${message.ffiModel.common.flag}');

    // 通知bloc更新回复状态
    final notifier = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId).notifier,
    );
    notifier.add(ChatListEvent.startReply(message));
  }

  /// 取消回复
  void _cancelReply() {
    print('❌ 取消回复');

    // 通知bloc取消回复状态
    final notifier = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId).notifier,
    );
    notifier.add(const ChatListEvent.cancelReply());
  }

  /// 滚动到顶部（最旧消息）
  void _scrollToTop() {
    if (!mounted || !_scrollController.hasClients) return;

    _scrollController.animateTo(
      0.0, // 滚动到顶部（最旧消息位置）
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );

    print('🔝 滚动到顶部');
  }

  /// 滚动到底部的统一方法（优化版）
  void _scrollToBottomByIndex() {
    if (!mounted || !_scrollController.hasClients) return;

    // 标记开始自动滚动
    _isAutoScrolling = true;

    // 使用SchedulerBinding确保在下一帧执行滚动
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !_scrollController.hasClients) {
        _isAutoScrolling = false;
        return;
      }

      // 滚动到最大位置（底部）
      final maxScrollExtent = _scrollController.position.maxScrollExtent;

      print('🎯 滚动到底部: maxScrollExtent=$maxScrollExtent');

      _scrollController
          .animateTo(
            maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          )
          .then((_) {
            // 自动滚动完成，清除标记
            _isAutoScrolling = false;
            print('✅ 滚动到底部完成');

            // 滚动完成后，隐藏悬浮按钮
            if (_showScrollToBottomButton.value) {
              _showScrollToBottomButton.value = false;
              print('📍 滚动完成，隐藏悬浮滚动按钮');
            }
          })
          .catchError((error) {
            _isAutoScrolling = false;
            print('❌ 滚动失败: $error');
          });
    });
  }

  /// 快速滚动到底部（无动画）
  void _jumpToBottom() {
    if (!mounted || !_scrollController.hasClients) return;

    final maxScrollExtent = _scrollController.position.maxScrollExtent;
    _scrollController.jumpTo(maxScrollExtent);

    // 隐藏悬浮按钮
    if (_showScrollToBottomButton.value) {
      _showScrollToBottomButton.value = false;
    }

    print('⚡ 快速跳转到底部完成');
  }

  void _sendTextMessage() {
    if (_textController.text.trim().isEmpty) return;

    final notifier = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId).notifier,
    );

    // 首先更新输入文本到状态中
    notifier.add(
      ChatListEvent.messageInputChanged(_textController.text.trim()),
    );

    // 然后发送文本消息
    notifier.add(ChatListEvent.sendTextMessage());

    _textController.clear();

    // 清除转发栏
    _messagesToForward.value = null;

    // 直接调用滚动方法，不用复杂的延迟逻辑
    print('📤 消息发送完成，准备滚动到底部');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _scrollToBottomByIndex();
      }
    });

    // // 额外的延迟重试，确保复杂消息的渲染完成
    // Future.delayed(const Duration(milliseconds: 300), () {
    //   if (mounted) {
    //     print('📤 发送消息延迟滚动重试');
    //     _scrollToBottomByIndex();
    //   }
    // });
  }

  //发送dice消息
  void _sendDiceMessage() {
    final notifier = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId).notifier,
    );

    // 创建骰子消息内容
    final diceContent = FfiDiceMessageContent(
      setImageId: 1, // 骰子图片集ID
      imageSize: 7, // 骰子面数
      currentImage: 0, // 当前显示的图片索引，0表示还在动画中
    );

    // 发送骰子消息
    notifier.add(ChatListEvent.sendDiceMessage(diceContent));

    // 关闭底部功能区
    _showBottomOptions.value = false;

    // 直接调用滚动方法，不用复杂的延迟逻辑
    print('🎲 骰子消息发送完成，准备滚动到底部');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _scrollToBottomByIndex();
      }
    });

    // 额外的延迟重试，确保复杂消息的渲染完成
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        print('🎲 发送骰子消息延迟滚动重试');
        _scrollToBottomByIndex();
      }
    });
  }

  //发送游戏消息
  void _sendGameMessage(FfiEmoticonBase emoticonInfo) {
    final notifier = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId).notifier,
    );

    // 创建骰子消息内容
    final gameContent = FfiAnmatedMessageContent(
      gameId: emoticonInfo.gameId ?? 1, // 游戏ID
      currentImage: "", // 当前显示的图片索引，0表示还在动画中
    );

    // 发送骰子消息
    notifier.add(ChatListEvent.sendGameMessage(gameContent));

    // 关闭底部功能区
    _showBottomOptions.value = false;

    // 直接调用滚动方法，不用复杂的延迟逻辑
    print('🎲 游戏消息发送完成，准备滚动到底部');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _scrollToBottomByIndex();
      }
    });

    // 额外的延迟重试，确保复杂消息的渲染完成
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        print('🎲 发送游戏消息延迟滚动重试');
        _scrollToBottomByIndex();
      }
    });
  }

  //发送动态图片消息
  void _sendDynamicImageMessage(FfiEmoticonBase emoticonInfo) {
    final notifier = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId).notifier,
    );

    // 创建骰子消息内容
    final dynamicImageContent = FfiDynamicImageMessageContent(
      width: emoticonInfo.width.toInt(),
      height: emoticonInfo.height.toInt(),
      fileSize: 100,
      url: emoticonInfo.emoticonUrl, // 保持原有的视频URL
      thumbUrl: emoticonInfo.emoticonUrl, // 🔥 修复：使用稳定的缩略图URL
      emoticonId: emoticonInfo.emoticonId,
    );

    // 发送骰子消息
    notifier.add(ChatListEvent.sendDynamicImageMessage(dynamicImageContent));

    // 关闭底部功能区
    _showBottomOptions.value = false;

    // 直接调用滚动方法，不用复杂的延迟逻辑
    print('🎲 动态图片消息发送完成，准备滚动到底部');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _scrollToBottomByIndex();
      }
    });

    // 额外的延迟重试，确保复杂消息的渲染完成
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        print('🎲 发送动态图片消息延迟滚动重试');
        _scrollToBottomByIndex();
      }
    });
  }

  //发送名片消息
  void _sendNameCardMessage() {
    final notifier = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId).notifier,
    );

    final namecard = FfiNameCardMessageContent(
      uid: 684796,
      nickName: '张三',
      icon: DemoImageUrls.getAvatarUrl(0), // 🔥 修复：使用稳定的头像URL
      identify: 'sdasdadasd',
    );
    // 然后发送文本消息
    notifier.add(ChatListEvent.sendNameCardMessage(namecard));

    // 直接调用滚动方法，不用复杂的延迟逻辑
    if (kDebugMode) {
      print('📤 名片消息发送完成，准备滚动到底部');
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _scrollToBottomByIndex();
      }
    });

    // 额外的延迟重试，确保复杂消息的渲染完成
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        if (kDebugMode) {
          print('📤 发送名片消息延迟滚动重试');
        }
        _scrollToBottomByIndex();
      }
    });
  }

  //发送视频消息
  void _sendVideoMessage() {
    final notifier = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId).notifier,
    );

    final videoContent = FfiVideoMessageContent(
      width: 100,
      height: 100,
      fileSize: 100,
      url: 'http://vjs.zencdn.net/v/oceans.mp4', // 保持原有的视频URL
      thumbUrl: DemoImageUrls.getVideoThumbnailUrl(0), // 🔥 修复：使用稳定的缩略图URL

      duration: 100,
    );
    // 然后发送文本消息
    notifier.add(ChatListEvent.sendVideoMessage(videoContent));

    // 直接调用滚动方法，不用复杂的延迟逻辑
    if (kDebugMode) {
      print('📤 视频消息发送完成，准备滚动到底部');
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _scrollToBottomByIndex();
      }
    });

    // 额外的延迟重试，确保复杂消息的渲染完成
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        if (kDebugMode) {
          print('📤 发送视频消息延迟滚动重试');
        }
        _scrollToBottomByIndex();
      }
    });
  }

  //发送红包消息
  void _sendRedpacketMessage() {
    final notifier = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId).notifier,
    );

    final redpacketContent = FfiRedPacketMessageContent(
      redPacketId: '1',
      status: 0,
      expiredTime: 1718332800,
      luckyWord: '恭喜发财，大吉大利',
      count: 1,
      type: 1,
      receiverId: 1,
      receiverName: '红包',
      issuerUid: 1,
      issuerName: '红包',
      issuerIcon: '红包',
      luckyImageUrl: '红包',
      openedCoverUrl: '红包',
      unOpenedCoverUrl: '红包',
      coverExpireTime: 1718332800,
      plusOneWithhold: 1,
    );
    // 然后发送文本消息
    notifier.add(ChatListEvent.sendRedPacketMessage(redpacketContent));

    // 直接调用滚动方法，不用复杂的延迟逻辑
    if (kDebugMode) {
      print('📤 红包消息发送完成，准备滚动到底部');
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _scrollToBottomByIndex();
      }
    });

    // 额外的延迟重试，确保复杂消息的渲染完成
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        if (kDebugMode) {
          print('📤 发送红包消息延迟滚动重试');
        }
        _scrollToBottomByIndex();
      }
    });
  }

  //发送转账
  void _sendTransferMessage() {
    final notifier = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId).notifier,
    );

    final transferContent = FfiChatTransferMessageContent(
      transferNo: '1',
      count: '1',
      coinName: '红包',
      status: 0,
      expiredTime: 1718332800,
      receiverId: 1,
      receiverName: '红包',
      issuerUid: 1,
      issuerName: '红包',
      issuerIcon: '红包',
      remark: '红包',
      plusOneWithhold: 1,
    );
    // 然后发送文本消息
    notifier.add(ChatListEvent.sendTransferMessage(transferContent));

    // 直接调用滚动方法，不用复杂的延迟逻辑
    if (kDebugMode) {
      print('📤 转账消息发送完成，准备滚动到底部');
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _scrollToBottomByIndex();
      }
    });

    // 额外的延迟重试，确保复杂消息的渲染完成
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        if (kDebugMode) {
          print('📤 发送视频消息延迟滚动重试');
        }
        _scrollToBottomByIndex();
      }
    });
  }

  //发送文件消息  ffiChatFileMessageContent
  void _sendFileMessage() {
    final notifier = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId).notifier,
    );
    final fileContent = FfiFileMessageContent(
      size: 10060, // 10.06 KB
      name: 'wechat.jpeg',
      mimeType: 'image/jpeg',
      fileUrl:
          'https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png',
    );
    notifier.add(ChatListEvent.sendFileMessage(fileContent));

    // 关闭底部功能区
    _showBottomOptions.value = false;

    // 直接调用滚动方法，不用复杂的延迟逻辑
    if (kDebugMode) {
      print('📤 文件消息发送完成，准备滚动到底部');
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _scrollToBottomByIndex();
      }
    });

    // 额外的延迟重试，确保复杂消息的渲染完成
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        if (kDebugMode) {
          print('📤 发送文件消息延迟滚动重试');
        }
        _scrollToBottomByIndex();
      }
    });
  }

  void _onImageRetryLoad(String messageId) {
    // 重试加载图片
    print('重试加载图片: $messageId');
  }

  void _onImageLoadError(String messageId) {
    // 图片加载失败
    print('图片加载失败: $messageId');
  }

  void _onImageProgress(String messageId, double progress) {
    // 更新图片加载进度
    print('📊 图片加载进度: $messageId -> ${(progress * 100).toInt()}%');
  }

  void _onVideoRetryLoad(String messageId) {
    // 重试加载视频
    print('重试加载视频: $messageId');
  }

  void _onVideoLoadError(String messageId) {
    // 视频加载失败
    print('视频加载失败: $messageId');
  }

  void _onVideoProgress(String messageId, double progress) {
    // 更新视频加载进度
    print('📊 视频加载进度: $messageId -> ${(progress * 100).toInt()}%');
  }

  void _onNamecardTap(ChatMessageNamecardModel message) {
    // 处理名片点击事件
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('名片详情'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildDialogAvatar(message),
                const SizedBox(height: 16),
                Text(
                  message.nameCardContent.nickName.isNotEmpty
                      ? message.nameCardContent.nickName
                      : '未知用户',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (message.nameCardContent.uid != 0)
                  Text(
                    'ID: ${message.nameCardContent.uid}',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('关闭'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  // 这里可以添加添加联系人的逻辑
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SnackBar(content: Text('已添加到联系人')));
                },
                child: const Text('添加联系人'),
              ),
            ],
          ),
    );
  }

  /// 构建弹窗中的头像
  Widget _buildDialogAvatar(ChatMessageNamecardModel message) {
    final hasIcon = message.nameCardContent.icon.isNotEmpty;

    if (!hasIcon) {
      return _buildDialogDefaultAvatar(message);
    }

    return SizedBox(
      width: 80,
      height: 80,
      child: CachedNetworkImage(
        imageUrl: message.nameCardContent.icon,
        imageBuilder:
            (context, imageProvider) =>
                CircleAvatar(radius: 40, backgroundImage: imageProvider),
        placeholder:
            (context, url) => CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey[300],
              child: const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(strokeWidth: 3),
              ),
            ),
        errorWidget: (context, url, error) {
          print('❌ 弹窗名片头像加载失败: ${message.nameCardContent.icon} - $error');
          return _buildDialogDefaultAvatar(message);
        },
      ),
    );
  }

  /// 构建弹窗中的默认头像
  Widget _buildDialogDefaultAvatar(ChatMessageNamecardModel message) {
    final nickName = message.nameCardContent.nickName;
    final firstLetter = nickName.isNotEmpty ? nickName[0].toUpperCase() : '?';

    return CircleAvatar(
      radius: 40,
      backgroundColor: _getAvatarColor(message.nameCardContent.uid),
      child: Text(
        firstLetter,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  /// 根据用户ID生成头像颜色
  Color _getAvatarColor(int uid) {
    final colors = [
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.red,
      Colors.teal,
      Colors.indigo,
      Colors.pink,
    ];
    return colors[uid.abs() % colors.length];
  }

  void _onRedpacketTap(ChatMessageRedpacketModel message) {
    // 处理红包点击事件
    final status = message.status;

    if (status != 'unclaimed') {
      // 已领取或过期的红包只显示详情
      _showRedpacketDetails(message);
      return;
    }

    // 可领取的红包显示领取确认
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            content: Container(
              width: 300,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFE53935), Color(0xFFB71C1C)],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.card_giftcard,
                    color: Colors.yellow,
                    size: 60,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    message.redPacketContent.luckyWord.isNotEmpty
                        ? message.redPacketContent.luckyWord
                        : '恭喜发财，大吉大利',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  if (message.redPacketContent.count > 0)
                    Text(
                      '¥${message.redPacketContent.count}',
                      style: const TextStyle(
                        color: Colors.yellow,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text(
                          '取消',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          _claimRedpacket(message);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow[600],
                          foregroundColor: Colors.red,
                        ),
                        child: const Text(
                          '领取红包',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.transparent,
            contentPadding: EdgeInsets.zero,
          ),
    );
  }

  void _showRedpacketDetails(ChatMessageRedpacketModel message) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('红包详情'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.card_giftcard, color: Colors.red, size: 48),
                const SizedBox(height: 16),
                Text(
                  message.redPacketContent.luckyWord.isNotEmpty
                      ? message.redPacketContent.luckyWord
                      : '红包',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                if (message.redPacketContent.count > 0)
                  Text(
                    '金额：¥${message.redPacketContent.count}',
                    style: const TextStyle(fontSize: 14),
                  ),
                Text(
                  '数量：${message.redPacketContent.count}/${message.redPacketContent.count}',
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 8),
                Text(
                  '状态：${_getRedpacketStatusText(message.status)}',
                  style: TextStyle(
                    fontSize: 14,
                    color: _getRedpacketStatusColor(message.status),
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('确定'),
              ),
            ],
          ),
    );
  }

  void _claimRedpacket(ChatMessageRedpacketModel message) {
    // 模拟领取红包 - 由于目前使用的是适配器模式，需要通过其他方式更新
    // 这里简化处理，只显示成功信息
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('恭喜！成功领取 ¥${message.redPacketContent.count}'),
        backgroundColor: Colors.red,
      ),
    );
  }

  String _getRedpacketStatusText(String? status) {
    switch (status) {
      case 'claimed':
        return '已领取';
      case 'expired':
        return '已过期';
      default:
        return '未领取';
    }
  }

  Color _getRedpacketStatusColor(String? status) {
    switch (status) {
      case 'claimed':
        return Colors.grey;
      case 'expired':
        return Colors.orange;
      default:
        return Colors.green;
    }
  }

  void _markAllAsRead() {
    // 标记所有消息为已读（这里可以扩展具体逻辑）
    print('标记所有消息为已读');
  }

  void _deleteLastMessage() {
    final state = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId),
    );
    final notifier = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId).notifier,
    );
    state.maybeMap(
      success: (s) {
        if (s.messages.isNotEmpty) {
          notifier.add(
            ChatListEvent.deleteMessage(s.messages.first.ffiModel.common.flag),
          );
        }
      },
      input: (s) {
        if (s.messages.isNotEmpty) {
          notifier.add(
            ChatListEvent.deleteMessage(s.messages.first.ffiModel.common.flag),
          );
        } else {
          print('当前状态不支持删除消息');
        }
      },
      orElse: () => print('当前状态不支持删除消息'),
    );
  }

  void _resetMessages() {
    final notifier = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId).notifier,
    );
    // 重新初始化聊天
    notifier.add(
      ChatListEvent.initialized(
        widget.chatType,
        widget.targetId,
        widget.messagesToForward,
      ),
    );
  }

  // 清理图片缓存相关方法
  Future<void> _clearAllImageCache() async {
    try {
      // 清理所有缓存（内存 + 磁盘）
      await CachedNetworkImage.evictFromCache('');

      // 清理内存缓存
      imageCache.clear();

      // 清理磁盘缓存
      final cacheManager = DefaultCacheManager();
      await cacheManager.emptyCache();

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('✅ 所有图片缓存已清理'),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
          ),
        );
      }

      print('🧹 已清理所有图片缓存');
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('❌ 清理缓存失败: $e'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
      }
      print('❌ 清理缓存失败: $e');
    }
  }

  Future<void> _clearMemoryCache() async {
    try {
      // 仅清理内存缓存
      imageCache.clear();

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('🧠 内存缓存已清理'),
            backgroundColor: Colors.blue,
            duration: Duration(seconds: 2),
          ),
        );
      }

      print('🧠 已清理内存缓存');
    } catch (e) {
      print('❌ 清理内存缓存失败: $e');
    }
  }

  Future<void> _clearDiskCache() async {
    try {
      // 仅清理磁盘缓存
      final cacheManager = DefaultCacheManager();
      await cacheManager.emptyCache();

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('💾 磁盘缓存已清理'),
            backgroundColor: Colors.orange,
            duration: Duration(seconds: 2),
          ),
        );
      }

      print('💾 已清理磁盘缓存');
    } catch (e) {
      print('❌ 清理磁盘缓存失败: $e');
    }
  }

  Future<void> _clearSpecificImageCache(String imageUrl) async {
    try {
      // 清理特定图片的缓存
      await CachedNetworkImage.evictFromCache(imageUrl);

      print('🖼️ 已清理图片缓存: $imageUrl');
    } catch (e) {
      print('❌ 清理特定图片缓存失败: $e');
    }
  }

  Future<void> _getCacheInfo() async {
    try {
      final cacheManager = DefaultCacheManager();

      // 获取缓存文件数量和大小（这个API可能不存在，仅作示例）
      print('📊 缓存信息查询...');

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('📊 查看控制台获取缓存信息'),
            backgroundColor: Colors.grey,
            duration: Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      print('❌ 获取缓存信息失败: $e');
    }
  }

  /// 滚动时隐藏底部面板和键盘 - 🔥 性能优化版本
  void _hideBottomPanelsOnScroll() {
    // 使用防抖机制，避免频繁更新UI
    _uiUpdateDebounceTimer?.cancel();
    _uiUpdateDebounceTimer = Timer(const Duration(milliseconds: 50), () {
      if (!mounted) return;

      bool needsUpdate = false;
      List<String> hiddenPanels = [];

      // 隐藏底部功能区
      if (_showBottomOptions.value) {
        _showBottomOptions.value = false;
        needsUpdate = true;
        hiddenPanels.add('功能区');
      }

      // 隐藏表情选择器
      if (_showEmojiPicker.value) {
        _showEmojiPicker.value = false;
        needsUpdate = true;
        hiddenPanels.add('表情选择器');
      }

      // 取消输入框焦点以隐藏键盘
      if (_focusNode.hasFocus) {
        _focusNode.unfocus();
        needsUpdate = true;
        hiddenPanels.add('键盘');
      }

      // 🔥 性能优化：只有在确实有变化时才调用setState
      if (needsUpdate) {
        // setState(() {}); // 移除：所有状态都使用ValueNotifier管理，不需要触发整个页面重建
        if (kDebugMode && hiddenPanels.isNotEmpty) {
          final currentPos = _scrollController.offset;
          final maxPos = _scrollController.position.maxScrollExtent;
          final distanceFromBottom = maxPos - currentPos;
          print(
            '📱 向上滚动隐藏: ${hiddenPanels.join('、')} (距底部: ${distanceFromBottom.toInt()}px)',
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final chatState = ref.watch(
      chatListNotifierProvider(widget.chatType, widget.targetId),
    );

    // 🔥 优化：在build方法中正确使用ref.listen监听状态变化
    ref.listen<ChatListState>(
      chatListNotifierProvider(widget.chatType, widget.targetId),
      (previous, current) {
        if (previous != null && mounted) {
          // 获取当前的消息列表
          final currentMessages = current.maybeMap(
            success: (s) => s.messages.cast<ChatMessage>(),
            input: (i) => i.messages.cast<ChatMessage>(),
            sending: (s) => s.messages.cast<ChatMessage>(),
            orElse: () => const <ChatMessage>[],
          );

          final currentMessageCount = currentMessages.length;

          // 检查是否有新消息（消息数量增加）
          if (currentMessageCount > _lastMessageCount &&
              _hasInitializedScroll) {
            print('📥 检测到新消息: $_lastMessageCount -> $currentMessageCount');

            // 检查是否需要自动滚动
            bool shouldAutoScroll = true;
            // 简化处理：新消息到达时总是滚动到底部
            shouldAutoScroll = true;

            print('📊 滚动状态: 有新消息，准备自动滚动');

            if (shouldAutoScroll) {
              print('📥 准备自动滚动到底部...');
              // 使用WidgetsBinding确保在当前帧完成后再滚动
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (mounted) {
                  _scrollToBottomByIndex();
                }
              });

              // 再延迟尝试一次，确保渲染完成
              Future.delayed(const Duration(milliseconds: 300), () {
                if (mounted) {
                  print('📥 延迟滚动到底部...');
                  _scrollToBottomByIndex();
                }
              });
            } else {
              print('📥 用户不在底部附近，跳过自动滚动');
            }

            // 更新消息计数
            _lastMessageCount = currentMessageCount;
          } else if (!_hasInitializedScroll && currentMessages.isNotEmpty) {
            // 如果还没有初始化滚动但有消息数据，更新消息计数
            _lastMessageCount = currentMessageCount;
          }
        }
      },
    );

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: ChatListAppBar(
        chatTitle: widget.chatTitle,
        avatarUrl: widget.avatarUrl,
        chatType: widget.chatType,
        memberCount: chatState.maybeMap(
          success: (s) => s.conversationMemberCount,
          input: (i) => i.conversationMemberCount,
          sending: (s) => s.conversationMemberCount,
          orElse: () => 0,
        ),
        isNetworkConnected:
            _networkStatus.value == NetworkConnectionStatus.connected,
      ),
      body: Stack(
        children: [
          // 主要内容
          chatState.maybeMap(
            loading: (_) => const Center(child: CircularProgressIndicator()),
            failure:
                (failure) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('加载失败: ${failure.errorMessage}'),
                      ElevatedButton(
                        onPressed: _initializeMessages,
                        child: const Text('重试'),
                      ),
                    ],
                  ),
                ),
            success:
                (s) => Column(
                  children: [
                    // 状态信息栏（开发时显示）
                    _buildStatusBar(chatState),
                    Expanded(child: _buildMessageList(chatState)),
                    _buildInputArea(),
                  ],
                ),
            orElse:
                () => Column(
                  children: [
                    // 状态信息栏（开发时显示）
                    _buildStatusBar(chatState),
                    Expanded(child: _buildMessageList(chatState)),
                    _buildInputArea(),
                  ],
                ),
          ),

          // 🔥 性能优化：悬浮的滚动到底部按钮 - 使用ValueListenableBuilder
          ValueListenableBuilder<bool>(
            valueListenable: _showScrollToBottomButton,
            builder: (context, showButton, child) {
              return AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                right: 16,
                bottom: showButton ? 120 : 60,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: showButton ? 1.0 : 0.0,
                  child: AnimatedScale(
                    duration: const Duration(milliseconds: 300),
                    scale: showButton ? 1.0 : 0.0,
                    child: child,
                  ),
                ),
              );
            },
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(28),
              color: Colors.blue[600],
              child: InkWell(
                borderRadius: BorderRadius.circular(28),
                onTap: () {
                  print('🔴 点击悬浮滚动按钮');
                  // 添加触感反馈
                  HapticFeedback.lightImpact();
                  _scrollToBottomByIndex();
                },
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue[500]!, Colors.blue[700]!],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withValues(alpha: 0.3),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 构建状态信息栏
  Widget _buildStatusBar(ChatListState state) {
    final messages = state.maybeMap(
      success: (s) => s.messages.cast<ChatMessage>(),
      input: (i) => i.messages.cast<ChatMessage>(),
      sending: (s) => s.messages.cast<ChatMessage>(),
      orElse: () => const <ChatMessage>[],
    );
    final messageCount = messages.length;
    final lastMessage = messageCount > 0 ? messages.last : null;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.blue[50],
      child: Row(
        children: [
          Icon(Icons.info_outline, size: 16, color: Colors.blue[600]),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              '状态管理: $messageCount条消息 | 最后消息ID: ${lastMessage?.ffiModel.common.msgId ?? "无"}',
              style: TextStyle(fontSize: 12, color: Colors.blue[600]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageList(ChatListState state) {
    final messages = state.maybeMap(
      success: (s) => s.messages.cast<ChatMessage>(),
      input: (i) => i.messages.cast<ChatMessage>(),
      sending: (s) => s.messages.cast<ChatMessage>(),
      orElse: () => const <ChatMessage>[],
    );

    // 🔥 优化：移除原来的初始化滚动逻辑，现在由_waitForDataAndScroll统一处理
    print(
      '📊 _buildMessageList: 消息数量=${messages.length}, 已初始化滚动=$_hasInitializedScroll',
    );

    return GestureDetector(
      onTap: () {
        // 检查是否在底部附近 - 简化处理
        // 点击消息列表时隐藏面板
        _hideBottomPanelsOnScroll();
      },
      child: ListView.builder(
        key: const PageStorageKey('chat_messages'), // 添加稳定的key
        controller: _scrollController,
        reverse: false, // 正常顺序：最旧消息在前，最新消息在后
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemCount: messages.length + _getDateSeparatorCount(),
        // 🔥 性能优化配置
        cacheExtent: 1000, // 增加缓存范围，减少重建
        addAutomaticKeepAlives: true, // 自动保持子组件状态
        addRepaintBoundaries: true, // 自动添加重绘边界
        addSemanticIndexes: true, // 添加语义索引，提升可访问性
        clipBehavior: Clip.hardEdge, // 硬边缘裁剪，提升性能
        physics: const AlwaysScrollableScrollPhysics(), // 始终可滚动
        itemBuilder: (context, index) {
          // 为每个消息项添加唯一key和RepaintBoundary
          return RepaintBoundary(
            key: ValueKey('message_item_$index'),
            child: _buildMessageItem(index, messages),
          );
        },
      ),
    );
  }

  int _getDateSeparatorCount() {
    // 简化处理，假设只有一个日期分隔符
    return 1;
  }

  Widget _buildMessageItem(int index, List<ChatMessage> messages) {
    // 简化处理：在第7个位置插入日期分隔符
    if (index == 6) {
      return Container(
        key: const ValueKey('date_separator_6'),
        child: _buildDateSeparator(),
      );
    }

    // 调整索引，跳过日期分隔符
    final messageIndex = index > 6 ? index - 1 : index;
    if (messageIndex >= messages.length) return const SizedBox.shrink();

    // 现在消息列表已经按正确顺序排列（最旧在前，最新在后），直接使用索引
    final message = messages[messageIndex];

    // 🔥 性能优化：直接使用具体的组件，减少包装层级
    return ChatListMessageWidget(
      message: message,
      onReply: _startReply, // 添加回复回调
      targetId: widget.targetId, // 添加目标ID
    );
  }

  Widget _buildInputArea() {
    return Column(
      children: [
        // 转发栏 - 使用ValueListenableBuilder监听转发状态
        ValueListenableBuilder<List<ChatMessage>?>(
          valueListenable: _messagesToForward,
          builder: (context, messagesToForward, child) {
            if (messagesToForward != null && messagesToForward.isNotEmpty) {
              return ChatRetweetBarWidget(
                messagesToForward: messagesToForward,
                chatType: widget.chatType,
                targetId: widget.targetId,
                onClose: _clearForwardMessages,
                onModifyRecipient: _clearForwardMessages, // 新增：修改接收方时清除转发状态
              );
            }
            return const SizedBox.shrink();
          },
        ),
        // 回复栏 - 使用bloc状态中的replyToMessage
        Consumer(
          builder: (context, ref, child) {
            final chatState = ref.watch(
              chatListNotifierProvider(widget.chatType, widget.targetId),
            );
            final replyMessage = chatState.maybeMap(
              success: (s) => s.replyToMessage,
              input: (i) => i.replyToMessage,
              sending: (s) => s.replyToMessage,
              orElse: () => null,
            );

            if (replyMessage != null) {
              return ChatReplyBarWidget(
                replyToMessage: replyMessage,
                onClose: _cancelReply,
              );
            }
            return const SizedBox.shrink();
          },
        ),
        // 输入区域
        ChatListInputWidget(
          textController: _textController,
          focusNode: _focusNode,
          canSendMessage: _canSendMessage,
          showBottomOptions: _showBottomOptions,
          showEmojiPicker: _showEmojiPicker,
          onSendTextMessage: _sendTextMessage,
          onScrollToBottom: _scrollToBottomByIndex,
          onEmojiSelected: _insertEmoji,
          onDeleteLastCharacter: _deleteLastCharacter,
          onSendEmoticonMessage: _sendEmoticonMessage,
          onBottomOptionTap: _onBottomOptionTap,
          onStateButtonTap: _onStateButtonTap,
        ),
      ],
    );
  }

  // 插入表情到输入框
  void _insertEmoji(int pageIndex, int index, String emoji) {
    if (pageIndex == 2) {
      if (index == 2) {
        _openDice();
      } else if (index == 3) {
        _openAutoMessage();
      }
      return;
    }

    final currentText = _textController.text;
    final cursorPosition = _textController.selection.baseOffset;

    String newText;
    int newCursorPosition;

    if (cursorPosition < 0) {
      // 如果没有光标位置，直接在末尾添加
      newText = currentText + emoji;
      newCursorPosition = newText.length;
    } else {
      // 在光标位置插入表情
      newText =
          currentText.substring(0, cursorPosition) +
          emoji +
          currentText.substring(cursorPosition);
      newCursorPosition = cursorPosition + emoji.length;
    }

    _textController.text = newText;
    _textController.selection = TextSelection.fromPosition(
      TextPosition(offset: newCursorPosition),
    );

    // 不再需要setState，文本控制器监听器会自动更新发送按钮状态
  }

  // 删除最后一个字符
  void _deleteLastCharacter() {
    final currentText = _textController.text;
    if (currentText.isNotEmpty) {
      // 首先尝试删除自定义表情字符串（如[哭泣]、[微笑]等）
      if (_deleteCustomEmojiText()) {
        return; // 成功删除自定义表情，直接返回
      }

      // 如果没有删除自定义表情，则按正常字符删除
      final cursorPosition = _textController.selection.baseOffset;

      if (cursorPosition > 0) {
        // 使用Characters来正确处理Unicode字符（包括表情符号）
        final textBeforeCursor = currentText.substring(0, cursorPosition);
        final textAfterCursor = currentText.substring(cursorPosition);

        // 将光标前的文本转换为字符集合，然后删除最后一个字符
        final charactersBeforeCursor = textBeforeCursor.characters;
        if (charactersBeforeCursor.isNotEmpty) {
          final newTextBeforeCursor =
              charactersBeforeCursor.skipLast(1).toString();
          final newText = newTextBeforeCursor + textAfterCursor;

          _textController.text = newText;
          _textController.selection = TextSelection.fromPosition(
            TextPosition(offset: newTextBeforeCursor.length),
          );
        }
      } else if (cursorPosition <= 0 && currentText.isNotEmpty) {
        // 如果没有光标位置或光标在开头，删除最后一个字符
        final characters = currentText.characters;
        if (characters.isNotEmpty) {
          final newText = characters.skipLast(1).toString();
          _textController.text = newText;
          _textController.selection = TextSelection.fromPosition(
            TextPosition(offset: newText.length),
          );
        }
      }

      // 不再需要setState，文本控制器监听器会自动更新发送按钮状态
    }
  }

  /// 删除自定义表情字符串，如[哭泣]、[微笑]等
  bool _deleteCustomEmojiText() {
    final currentText = _textController.text;
    final cursorPosition = _textController.selection.baseOffset;

    if (currentText.isEmpty || cursorPosition <= 0) {
      return false;
    }

    // 从光标位置向前查找最近的']'
    int rightBracketIndex = -1;
    for (int i = cursorPosition - 1; i < currentText.length; i++) {
      if (currentText[i] == ']') {
        rightBracketIndex = i;
        break;
      }
    }

    if (rightBracketIndex == -1) {
      return false; // 没有找到右括号
    }

    // 从光标位置向后查找最近的'['
    int leftBracketIndex = -1;
    for (int i = cursorPosition - 1; i >= 0; i--) {
      if (currentText[i] == '[') {
        leftBracketIndex = i;
        break;
      }
    }

    if (leftBracketIndex == -1) {
      return false; // 没有找到左括号
    }

    // 检查括号位置是否合理
    if (leftBracketIndex >= rightBracketIndex) {
      return false; // 左括号不能在右括号后面
    }

    // 提取括号内的内容
    final emojiText = currentText.substring(
      leftBracketIndex,
      rightBracketIndex + 1,
    );
    final emojiName = currentText.substring(
      leftBracketIndex + 1,
      rightBracketIndex,
    );

    // 检查表情字符串的有效性
    if (emojiText.length < 3 || emojiName.isEmpty) {
      return false; // 表情字符串太短或为空
    }

    // 异步检查是否为有效表情（这里简化处理，可以根据需要扩展）
    _checkAndDeleteEmojiText(
      leftBracketIndex,
      rightBracketIndex + 1,
      emojiName,
    );

    return true;
  }

  /// 检查并删除表情文本
  Future<void> _checkAndDeleteEmojiText(
    int startIndex,
    int endIndex,
    String emojiName,
  ) async {
    try {
      // 简化处理：检查表情名称是否符合基本格式（非空且不包含特殊字符）
      final isValidEmojiFormat =
          emojiName.isNotEmpty &&
          emojiName.length <= 10 &&
          !emojiName.contains('[') &&
          !emojiName.contains(']');

      if (isValidEmojiFormat) {
        // 删除表情文本
        final currentText = _textController.text;
        final newText =
            currentText.substring(0, startIndex) +
            currentText.substring(endIndex);

        _textController.text = newText;
        _textController.selection = TextSelection.fromPosition(
          TextPosition(offset: startIndex),
        );

        // 触发setState更新UI
        // setState(() {}); // 不再需要，文本控制器监听器会自动更新发送按钮状态

        print('✅ 已删除自定义表情: [$emojiName]');
      } else {
        print('⚠️ 表情格式无效: [$emojiName]');
      }
    } catch (e) {
      print('❌ 检查表情失败: $e');
    }
  }

  void _showImageCacheOptions(ChatMessageImageModel message) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('图片缓存管理'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '图片ID: ${message.id}',
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                if (message.imageContent.url.isNotEmpty)
                  Text(
                    '图片URL: ${message.imageContent.url.length > 50 ? "${message.imageContent.url.substring(0, 50)}..." : message.imageContent.url}',
                    style: const TextStyle(fontSize: 10, color: Colors.grey),
                  ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('取消'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  if (message.imageContent.url.isNotEmpty) {
                    _clearSpecificImageCache(message.imageContent.url);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('🖼️ 已清理图片 ${message.id} 的缓存'),
                        backgroundColor: Colors.blue,
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  }
                },
                child: const Text('清理此图片缓存'),
              ),
            ],
          ),
    );
  }

  /// 处理图片点击事件，打开图片浏览器
  void _onImageTap(ChatMessageImageModel tappedMessage) {
    final state = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId),
    );
    final messages = state.maybeMap(
      success: (s) => s.messages.cast<ChatMessage>(),
      input: (i) => i.messages.cast<ChatMessage>(),
      sending: (s) => s.messages.cast<ChatMessage>(),
      orElse: () => const <ChatMessage>[],
    );

    // 提取所有图片、视频和GIF消息
    final imageMessages =
        messages
            .whereType<ChatMessageImageModel>()
            .where((msg) => msg.imageContent.url.isNotEmpty)
            .toList();

    if (imageMessages.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('没有找到图片')));
      return;
    }

    // 找到被点击图片的索引
    final initialIndex = imageMessages.indexWhere(
      (msg) => msg.ffiModel.common.msgId == tappedMessage.ffiModel.common.msgId,
    );

    if (initialIndex == -1) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('图片未找到')));
      return;
    }

    print(
      '🖼️ 点击图片: ${tappedMessage.ffiModel.common.msgId}, 总共${imageMessages.length}张图片, 当前索引: $initialIndex',
    );

    // 打开图片浏览器
    Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (context) => ImageGalleryViewer(
              imageMessages: imageMessages,
              initialIndex: initialIndex,
              allMessages: messages,
            ),
      ),
    );
  }

  Widget _buildDateSeparator() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            '6月5日',
            style: TextStyle(color: Colors.grey[600], fontSize: 12),
          ),
        ),
      ),
    );
  }

  /// 尝试滚动到底部，最多重试5次（针对首次加载优化）

  /// 打开骰子
  void _openDice() {
    _sendDiceMessage();
  }

  /// 打开自动发消息
  void _openAutoMessage() {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('🤖 自动发消息功能开发中...')));
  }

  /// 处理底部功能选项点击事件
  void _onBottomOptionTap(String label) {
    switch (label) {
      case '图片':
        _sendImageMessage();
        break;
      case '拍摄':
        _sendVideoMessage();
        break;
      case '名片':
        _sendNameCardMessage();
        break;
      case '文件':
        _openFilePicker();
        break;
      case '红包':
        _sendRedpacketMessage();
        break;
      case '转账':
        _sendTransferMessage();
        break;
      case '骰子':
        _openDice();
        break;
      case '自动发消息':
        _openAutoMessage();
        break;
      case '图片组件演示':
        _openProgressImageDemo();
        break;
      case '简单图片测试':
        _openSimpleImageTest();
        break;
      case '设置':
        _openSettings();
        break;
      case '帮助':
        _openHelp();
        break;
      case '关于':
        _openAbout();
        break;
      default:
        _openMoreFeaturesPage();
    }
  }

  /// 处理状态按钮点击事件
  void _onStateButtonTap(String label) {
    switch (label) {
      case '全部已读':
        _markAllAsRead();
        break;
      case '删除最后':
        _deleteLastMessage();
        break;
      case '重置':
        _resetMessages();
        break;
      case '清理缓存':
        _clearAllImageCache();
        break;
      case '清内存':
        _clearMemoryCache();
        break;
      case '清磁盘':
        _clearDiskCache();
        break;
      case '性能报告':
        PerformanceMonitor.printReport();
        break;
      case '清除统计':
        PerformanceMonitor.clearStats();
        break;
      case '优化建议':
        ListViewPerformanceConfig.printRecommendations();
        break;
      default:
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('$label 功能开发中...')));
    }
  }

  /// 发送收藏表情消息
  Future<void> _sendEmoticonMessage(FfiEmoticonBase emoticonInfo) async {
    if (emoticonInfo.emotionType == FfiEmotionInfoType.dice) {
      _sendDiceMessage();
    } else if (emoticonInfo.emotionType == FfiEmotionInfoType.animatedGame) {
      // 处理动画游戏表情 发送游戏消息
      _sendGameMessage(emoticonInfo);
    } else if (emoticonInfo.emotionType == FfiEmotionInfoType.add) {
      // 添加跳转页面
    } else {
      // 处理其他表情
      _sendDynamicImageMessage(emoticonInfo);
    }
  }

  /// 发送图片消息
  Future<void> _sendImageMessage() async {
    final notifier = ref.read(
      chatListNotifierProvider(widget.chatType, widget.targetId).notifier,
    );

    final imageContent = FfiImageMessageContent(
      width: 100,
      height: 100,
      fileSize: 0,
      url: "https://img0.baidu.com/it/u=2412470295,599287519&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=1087", // 🔥 修复：使用稳定的图片URL
      thumbUrl: "https://img0.baidu.com/it/u=2412470295,599287519&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=1087", // 🔥 修复：使用稳定的缩略图URL
      sizeType: 0,
    );
    // 然后发送文本消息
    notifier.add(ChatListEvent.sendImageMessage(imageContent));

    // 直接调用滚动方法，不用复杂的延迟逻辑
    if (kDebugMode) {
      print('📤 图片消息发送完成，准备滚动到底部');
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _scrollToBottomByIndex();
      }
    });

    // 额外的延迟重试，确保复杂消息的渲染完成
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        if (kDebugMode) {
          print('📤 发送图片消息延迟滚动重试');
        }
        _scrollToBottomByIndex();
      }
    });
  }

  /// 打开文件选择器
  void _openFilePicker() {
    _sendFileMessage();
  }

  /// 打开图片组件演示
  void _openProgressImageDemo() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const ProgressImageDemoPage()),
    );
  }

  /// 打开简单图片测试
  void _openSimpleImageTest() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const SimpleImageTestPage()),
    );
  }

  /// 打开设置
  void _openSettings() {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('⚙️ 设置功能开发中...')));
  }

  /// 打开帮助
  void _openHelp() {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('❓ 帮助功能开发中...')));
  }

  /// 打开关于
  void _openAbout() {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('ℹ️ 关于功能开发中...')));
  }

  /// 计算输入框区域的高度
  double _getInputAreaHeight() {
    // 基础输入框高度
    double baseHeight = 60.0; // 输入框基础高度 (包含padding)

    // 底部安全区域高度
    final bottomPadding = MediaQuery.of(context).padding.bottom;

    // 如果显示底部功能区，需要额外的高度
    double bottomOptionsHeight = 0.0;
    if (_showBottomOptions.value) {
      bottomOptionsHeight = 240.0; // 底部功能区的大概高度
    }

    // 如果显示表情选择器，需要额外的高度
    double emojiPickerHeight = 0.0;
    if (_showEmojiPicker.value) {
      emojiPickerHeight = 280.0; // 表情选择器的高度
    }

    return baseHeight + bottomPadding + bottomOptionsHeight + emojiPickerHeight;
  }

  /// 计算引用窗的正确位置
  double _calculateRefWindowPosition(
    bool showBottomOptions,
    bool showEmojiPicker,
  ) {
    // 基础输入框高度（主输入行）
    double baseInputHeight = 60.0;

    // 底部安全区域高度
    final bottomPadding = MediaQuery.of(context).padding.bottom;

    // 获取键盘高度，如果没有键盘则使用默认高度
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    final targetHeight = keyboardHeight > 0 ? keyboardHeight : 280.0;

    // 底部功能区高度（现在与键盘高度一致）
    double bottomOptionsHeight = 0.0;
    if (showBottomOptions) {
      bottomOptionsHeight = targetHeight;
    }

    // 表情选择器高度（现在与键盘高度一致）
    double emojiPickerHeight = 0.0;
    if (showEmojiPicker) {
      emojiPickerHeight = targetHeight;
    }

    // 引用窗应该位于输入框区域的正上方
    // 计算从屏幕底部到引用窗底部的距离
    double totalInputAreaHeight =
        baseInputHeight +
        bottomPadding +
        bottomOptionsHeight +
        emojiPickerHeight +
        2.0;

    print(
      '🔍 引用窗位置计算: 基础=${baseInputHeight}, 安全区=${bottomPadding}, 功能区=${bottomOptionsHeight}, 表情=${emojiPickerHeight}, 键盘=${keyboardHeight}, 总计=${totalInputAreaHeight}',
    );

    return totalInputAreaHeight;
  }

  /// 打开更多功能页面
  void _openMoreFeaturesPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (context) => MoreFeaturesPage(
              onDiceMessage: _sendDiceMessage,
              onAutoMessage: _openAutoMessage,
              onProgressImageDemo: _openProgressImageDemo,
              onSimpleImageTest: _openSimpleImageTest,
              onSettings: _openSettings,
              onHelp: _openHelp,
              onAbout: _openAbout,
              onMarkAllRead: _markAllAsRead,
              onDeleteLast: _deleteLastMessage,
              onReset: _resetMessages,
              onClearCache: _clearAllImageCache,
              onClearMemory: _clearMemoryCache,
              onClearDisk: _clearDiskCache,
              onPerformanceReport: () => PerformanceMonitor.printReport(),
              onClearStats: () => PerformanceMonitor.clearStats(),
              onOptimizationTips:
                  () => ListViewPerformanceConfig.printRecommendations(),
            ),
      ),
    );
  }

  /// 清除转发状态
  void _clearForwardMessages() {
    _messagesToForward.value = null;
  }
}

// XFile 扩展方法
extension XFileExtension on XFile {
  /// 获取文件大小（字节）
  Future<int> get sizeInBytes async {
    final file = File(path);
    return await file.length();
  }

  /// 获取友好的文件大小描述
  Future<String> get friendlySize async {
    final bytes = await sizeInBytes;
    return _formatFileSize(bytes);
  }

  /// 格式化文件大小
  static String _formatFileSize(int bytes) {
    if (bytes <= 0) return '0 B';

    const List<String> units = ['B', 'KB', 'MB', 'GB'];
    int unitIndex = 0;
    double size = bytes.toDouble();

    while (size >= 1024 && unitIndex < units.length - 1) {
      size /= 1024;
      unitIndex++;
    }

    return '${size.toStringAsFixed(size < 10 ? 1 : 0)} ${units[unitIndex]}';
  }
}

// 简化版图片选择服务
class SimpleImagePickerService {
  static final ImagePicker _picker = ImagePicker();

  static Future<List<XFile>?> pickMultiImage({
    required BuildContext context,
    int? imageQuality,
  }) async {
    try {
      final images = await _picker.pickMultiImage(
        imageQuality: imageQuality ?? 80,
      );
      return images.isNotEmpty ? images : null;
    } catch (e) {
      print('❌ 选择图片失败: $e');
      return null;
    }
  }

  static Future<XFile?> pickSingleImage({
    required BuildContext context,
    required ImageSource source,
    int? imageQuality,
  }) async {
    try {
      return await _picker.pickImage(
        source: source,
        imageQuality: imageQuality ?? 80,
      );
    } catch (e) {
      print('❌ 选择图片失败: $e');
      return null;
    }
  }

  static Future<XFile?> pickVideo({
    required BuildContext context,
    required ImageSource source,
    Duration? maxDuration,
  }) async {
    try {
      return await _picker.pickVideo(source: source, maxDuration: maxDuration);
    } catch (e) {
      print('❌ 选择视频失败: $e');
      return null;
    }
  }
}
