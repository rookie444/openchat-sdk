import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../core/utils/log.dart';
import '../blocs/chat_detail_notifier.dart';
import '../blocs/chat_detail_event.dart';
import '../blocs/chat_detail_state.dart';

import '../models/chat_message.dart';
import 'image_viewer_screen.dart';
import '../../../common/ffi.dart';

class ChatDetailScreen extends ConsumerStatefulWidget {
  final FfiChatType chatType;
  final int targetId;
  // 添加一个只读的 get 属性
  String get conversationId => '${chatType.index}_${targetId}';
  

  const ChatDetailScreen({super.key, required this.chatType, required this.targetId});

  @override
  ConsumerState<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends ConsumerState<ChatDetailScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _isComposing = false;
  bool _isKeyboardVisible = false;
  final FocusNode _focusNode = FocusNode();
  bool _showScrollToBottomButton = false;
  bool _hasNewMessages = false; // 添加标记是否有新消息

  // 新增：跟踪最新消息，用于动画效果
  final Map<int, bool> _newMessageIds = {};

  // 跟踪列表高度和锚定消息
  double _previousListHeight = 0;
  int? _anchorMessageId;
  double _anchorPosition = 0;

  // 判断是否正在查看历史
  bool get _isViewingHistory {
    return _scrollController.hasClients &&
        _scrollController.position.pixels >
            _scrollController.position.minScrollExtent + 200;
  }

  @override
  void initState() {
    super.initState();

    // 初始化聊天
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Log.info('初始化聊天详情: ${widget.conversationId}');
      ref
          .read(chatDetailNotifierProvider.notifier)
          .add(ChatDetailEvent.initialized(widget.chatType, widget.targetId));
    });

    // 添加滚动监听，实现下拉加载更多
    _scrollController.addListener(_onScroll);

    // 添加焦点监听
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    // 释放焦点监听器
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (_focusNode.hasFocus) {
      _isKeyboardVisible = true;
      // 延迟执行滚动操作，确保键盘完全展开
      Future.delayed(const Duration(milliseconds: 300), () {
        _scrollToBottom();
      });
    } else {
      _isKeyboardVisible = false;
    }
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        0.0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  void _onScroll() {
    if (_scrollController.position.pixels <=
        _scrollController.position.minScrollExtent + 200) {
      // 当滚动到顶部附近时加载更多历史消息
      Log.debug('触发加载更多消息');
      ref
          .read(chatDetailNotifierProvider.notifier)
          .add(const ChatDetailEvent.loadMoreMessages());
    }

    // 当滚动到底部时，清除新消息标记
    if (_scrollController.position.pixels <=
        _scrollController.position.minScrollExtent + 50) {
      if (_hasNewMessages) {
        setState(() {
          _hasNewMessages = false;
        });
      }
    }

    // 更新滚动按钮状态
    final shouldShowButton = _scrollController.position.pixels > 200;
    if (shouldShowButton != _showScrollToBottomButton) {
      setState(() {
        _showScrollToBottomButton = shouldShowButton;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // 监听状态变化
    final state = ref.watch(chatDetailNotifierProvider);

    // 添加状态变化监听来处理新消息到达时的滚动
    ref.listen<ChatDetailState>(chatDetailNotifierProvider, (
      previous,
      current,
    ) {
      // 如果之前有消息状态
      if (previous != null && mounted) {
        // 获取之前和当前状态的消息
        final List<ChatMessage>? prevMessages = previous.maybeWhen(
          success:
              (
                conversationId,
                conversationName,
                conversationMemberCount,
                totalUnreadCount,
                conversationAvatar,
                messages,
                isLoadingMore,
                hasReachedEnd,
              ) => messages,
          input:
              (
                conversationId,
                conversationName,
                conversationAvatar,
                conversationMemberCount,
                totalUnreadCount,
                messages,
                inputText,
                isInputValid,
                isLoadingMore,
                hasReachedEnd,
              ) => messages,
          sending:
              (
                conversationId,
                conversationName,
                conversationAvatar,
                conversationMemberCount,
                totalUnreadCount,
                messages,
                inputText,
                pendingMessage,
                isLoadingMore,
                hasReachedEnd,
              ) => messages,
          orElse: () => null,
        );

        final List<ChatMessage>? currentMessages = current.maybeWhen(
          success:
              (
                conversationId,
                conversationName,
                conversationMemberCount,
                totalUnreadCount,
                conversationAvatar,
                messages,
                isLoadingMore,
                hasReachedEnd,
              ) => messages,
          input:
              (
                conversationId,
                conversationName,
                conversationAvatar,
                conversationMemberCount,
                totalUnreadCount,
                messages,
                inputText,
                isInputValid,
                isLoadingMore,
                hasReachedEnd,
              ) => messages,
          sending:
              (
                conversationId,
                conversationName,
                conversationAvatar,
                conversationMemberCount,
                totalUnreadCount,
                messages,
                inputText,
                pendingMessage,
                isLoadingMore,
                hasReachedEnd,
              ) => messages,
          orElse: () => null,
        );

        // 如果当前消息数量比之前多，并且最新的消息不是由加载更多导致的
        if (prevMessages != null &&
            currentMessages != null &&
            currentMessages.length > prevMessages.length &&
            (currentMessages.isNotEmpty &&
                prevMessages.isNotEmpty &&
                currentMessages.first.id != prevMessages.first.id)) {
          // 记录当前滚动位置相关信息，用于保持位置
          if (_scrollController.hasClients && _isViewingHistory) {
            try {
              // 如果没有已保存的锚点，或者不是用户正在查看历史(可能是刚刚收到消息)，则计算当前可见的消息
              if (_anchorMessageId == null) {
                int visibleItemIndex = _estimateVisibleItemIndex();
                if (visibleItemIndex >= 0 &&
                    visibleItemIndex < prevMessages.length) {
                  _anchorMessageId = prevMessages[visibleItemIndex].id;
                  _anchorPosition = _scrollController.position.pixels;
                  Log.debug(
                    '新消息到达，计算锚定消息: ID=${_anchorMessageId}, 位置=${_anchorPosition}',
                  );
                }
              }

              // 延迟恢复滚动位置，确保布局已完成计算
              if (_anchorMessageId != null) {
                // 先立即尝试恢复一次，防止闪烁
                _restoreScrollPosition(currentMessages);

                // 然后在下一帧再次尝试，确保布局已完全更新
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  _restoreScrollPosition(currentMessages);

                  // 100ms后再次检查，确保所有动画和布局计算都已完成
                  Future.delayed(const Duration(milliseconds: 100), () {
                    if (mounted && _scrollController.hasClients) {
                      _restoreScrollPosition(currentMessages);
                    }
                  });
                });
              }

              // 设置新消息提示
              setState(() {
                _hasNewMessages = true;
              });
            } catch (e) {
              Log.error('计算滚动位置时发生错误', error: e);
            }
          }

          // 标记新消息，用于动画效果
          final newMessages =
              currentMessages
                  .where(
                    (current) =>
                        !prevMessages.any((prev) => prev.id == current.id),
                  )
                  .toList();

          if (newMessages.isNotEmpty) {
            setState(() {
              for (var message in newMessages) {
                _newMessageIds[message.id] = true;
              }
            });
          }
        }
      }
    });

    return state.when(
      initial: () => _buildLoadingUI(),
      loading: () => _buildLoadingUI(),
      success:
          (
            conversationId,
            conversationName,
            conversationMemberCount,
            totalUnreadCount,
            conversationAvatar,
            messages,
            isLoadingMore,
            hasReachedEnd,
          ) => _buildChatUI(
            conversationId: conversationId,
            conversationName: conversationName,
            conversationAvatar: conversationAvatar,
            conversationMemberCount: conversationMemberCount,
            totalUnreadCount: totalUnreadCount,
            messages: messages,
            isLoadingMore: isLoadingMore,
            hasReachedEnd: hasReachedEnd,
          ),
      input:
          (
            conversationId,
            conversationName,
            conversationAvatar,
            conversationMemberCount,
            totalUnreadCount,
            messages,
            inputText,
            isInputValid,
            isLoadingMore,
            hasReachedEnd,
          ) => _buildChatUI(
            conversationId: conversationId,
            conversationName: conversationName,
            conversationAvatar: conversationAvatar,
            conversationMemberCount: conversationMemberCount,
            totalUnreadCount: totalUnreadCount,
            messages: messages,
            inputText: inputText,
            isInputValid: isInputValid,
            isLoadingMore: isLoadingMore,
            hasReachedEnd: hasReachedEnd,
          ),
      sending:
          (
            conversationId,
            conversationName,
            conversationAvatar,
            conversationMemberCount,
            totalUnreadCount,
            messages,
            inputText,
            pendingMessage,
            isLoadingMore,
            hasReachedEnd,
          ) => _buildChatUI(
            conversationId: conversationId,
            conversationName: conversationName,
            conversationAvatar: conversationAvatar,
            conversationMemberCount: conversationMemberCount,
            totalUnreadCount: totalUnreadCount,
            messages: messages,
            inputText: inputText,
            isSending: true,
            pendingMessage: pendingMessage,
            isLoadingMore: isLoadingMore,
            hasReachedEnd: hasReachedEnd,
          ),
      failure:
          (
            conversationId,
            conversationName,
            conversationAvatar,
            messages,
            errorMessage,
          ) => _buildErrorUI(errorMessage, messages.isNotEmpty),
    );
  }

  Widget _buildLoadingUI() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('加载中...'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildErrorUI(String errorMessage, bool hasMessages) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('聊天'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, color: Colors.red, size: 48),
            const SizedBox(height: 16),
            Text(
              errorMessage,
              style: const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            if (hasMessages)
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(chatDetailNotifierProvider.notifier)
                      .add(ChatDetailEvent.initialized(widget.chatType, widget.targetId));
                },
                child: const Text('重试'),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildChatUI({
    required String conversationId,
    required String conversationName,
    String? conversationAvatar,
    int conversationMemberCount = 0,
    int totalUnreadCount = 0,
    required List<ChatMessage> messages,
    String inputText = '',
    bool isInputValid = false,
    bool isSending = false,
    ChatMessage? pendingMessage,
    bool isLoadingMore = false,
    bool hasReachedEnd = false,
  }) {
    // 如果控制器文本与状态不一致，更新控制器
    if (_messageController.text != inputText) {
      _messageController.text = inputText;
      _messageController.selection = TextSelection.fromPosition(
        TextPosition(offset: inputText.length),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        leadingWidth: 45,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, size: 24),
          onPressed: () => context.pop(),
        ),
        titleSpacing: 0,
        title: Row(
          children: [
            // 未读消息红点
            if (totalUnreadCount > 0)
              Container(
                margin: const EdgeInsets.only(right: 4),
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                constraints: const BoxConstraints(minWidth: 20, minHeight: 20),
                child: Center(
                  child: Text(
                    totalUnreadCount >= 99 ? '99+' : '$totalUnreadCount',
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            // 头像
            if (conversationAvatar != null && conversationAvatar.isNotEmpty)
              Container(
                width: 32,
                height: 32,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(conversationAvatar),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            else
              Container(
                width: 32,
                height: 32,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: const Icon(Icons.person, color: Colors.white, size: 18),
              ),
            // 标题和成员数量
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    conversationMemberCount > 0
                        ? "$conversationName (${conversationMemberCount})"
                        : conversationName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // 显示聊天设置菜单
              _showChatOptions(context, conversationId, conversationName);
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              // 加载更多指示器
              if (isLoadingMore)
                const LinearProgressIndicator(
                  minHeight: 2,
                  backgroundColor: Colors.transparent,
                ),

              // 消息列表
              Expanded(
                child:
                    messages.isEmpty
                        ? _buildEmptyChatUI()
                        : LayoutBuilder(
                          builder: (context, constraints) {
                            return NotificationListener<ScrollNotification>(
                              onNotification: (notification) {
                                // 用于判断是否滚动位置变化是由用户手动引起的
                                if (notification is ScrollUpdateNotification &&
                                    notification.dragDetails != null) {
                                  // 用户正在拖动，记录当前的锚定消息
                                  if (_isViewingHistory &&
                                      messages.isNotEmpty) {
                                    int visibleItemIndex =
                                        _estimateVisibleItemIndex();
                                    if (visibleItemIndex >= 0 &&
                                        visibleItemIndex < messages.length) {
                                      _anchorMessageId =
                                          messages[visibleItemIndex].id;
                                      _anchorPosition =
                                          _scrollController.position.pixels;
                                      // Log.debug('用户拖动，记录锚定消息: ID=${_anchorMessageId}, 位置=${_anchorPosition}');
                                    }
                                  }
                                }
                                return false; // 继续传递通知
                              },
                              child: ListView.builder(
                                key: const PageStorageKey('chat_messages'),
                                controller: _scrollController,
                                reverse: true,
                                padding: const EdgeInsets.all(8.0),
                                cacheExtent: 1500,
                                itemCount: messages.length,
                                itemBuilder: (context, index) {
                                  final message = messages[index];
                                  final isLastMessage =
                                      index == messages.length - 1;
                                  final showDate =
                                      isLastMessage ||
                                      _shouldShowDate(
                                        message,
                                        index < messages.length - 1
                                            ? messages[index + 1]
                                            : null,
                                      );

                                  // 使用RepaintBoundary包装每个消息项，减少重绘范围
                                  return RepaintBoundary(
                                    child: MessageItemWidget(
                                      key: ValueKey('msg_${message.id}'),
                                      message: message,
                                      showDate: showDate,
                                      previousMessageTime:
                                          index < messages.length - 1
                                              ? messages[index + 1].timestamp
                                              : null,
                                      isNewMessage:
                                          _newMessageIds[message.id] == true,
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
              ),

              // 消息输入区域
              _buildMessageInput(
                isInputValid: isInputValid,
                isSending: isSending,
              ),
            ],
          ),

          // 添加滚动到底部的悬浮按钮
          if (_showScrollToBottomButton)
            Positioned(
              right: 16,
              bottom: 80, // 位于输入框上方
              child: AnimatedOpacity(
                opacity: _showScrollToBottomButton ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 200),
                child: Stack(
                  children: [
                    FloatingActionButton(
                      mini: true,
                      backgroundColor: Colors.white,
                      elevation: 4.0,
                      onPressed: () {
                        _scrollToBottom();
                        setState(() {
                          _hasNewMessages = false;
                        });
                      },
                      child: const Icon(
                        Icons.arrow_downward,
                        color: Colors.blue,
                      ),
                    ),
                    // 新消息提示徽章
                    if (_hasNewMessages)
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 12,
                            minHeight: 12,
                          ),
                          child: const Text(
                            '',
                            style: TextStyle(color: Colors.white, fontSize: 8),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),

          // 发送状态指示器
          if (isSending)
            Positioned(
              bottom: 60,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '发送中...',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildEmptyChatUI() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.chat_bubble_outline, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          const Text(
            '没有聊天记录',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 8),
          const Text(
            '发送消息开始聊天吧',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildDateDivider(DateTime timestamp) {
    final dateFormat = DateFormat('yyyy-MM-dd');
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final messageDate = DateTime(
      timestamp.year,
      timestamp.month,
      timestamp.day,
    );

    String dateText;
    if (messageDate == today) {
      dateText = '今天';
    } else if (messageDate == yesterday) {
      dateText = '昨天';
    } else {
      dateText = dateFormat.format(timestamp);
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0xFFE8E8E8),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            dateText,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),
      ),
    );
  }

  bool _shouldShowDate(ChatMessage message, ChatMessage? prevMessage) {
    if (prevMessage == null) return true;

    final messageDate = DateTime(
      message.timestamp.year,
      message.timestamp.month,
      message.timestamp.day,
    );

    final prevMessageDate = DateTime(
      prevMessage.timestamp.year,
      prevMessage.timestamp.month,
      prevMessage.timestamp.day,
    );

    return messageDate != prevMessageDate;
  }

  Widget _buildMessageBubble(ChatMessage message) {
    final timeFormat = DateFormat('HH:mm');
    final isMe = message.isMe;
    final isNewMessage = _newMessageIds[message.id] == true;

    // 为新消息添加动画效果
    final animatedBubble =
        isNewMessage
            ? _buildAnimatedMessageBubble(message, isMe, timeFormat)
            : _buildRegularMessageBubble(message, isMe, timeFormat);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8), // 增加垂直间距
      child: Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start, // 改为顶部对齐
        children: [
          if (!isMe) _buildAvatar(message),

          if (!isMe) const SizedBox(width: 8),

          Flexible(child: animatedBubble),

          if (isMe) const SizedBox(width: 8),

          if (isMe) _buildAvatar(message),
        ],
      ),
    );
  }

  // 新方法：创建带动画的消息气泡
  Widget _buildAnimatedMessageBubble(
    ChatMessage message,
    bool isMe,
    DateFormat timeFormat,
  ) {
    // 1秒后移除新消息标记
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          _newMessageIds.remove(message.id);
        });
      }
    });

    // 简化动画效果，避免闪屏问题
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.3, end: 0.0),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, value * 25), // 缩小滑动距离，减轻闪屏风险
          child: _buildMessageContent(message, isMe, timeFormat),
        );
      },
    );
  }

  // 新方法：创建普通消息气泡
  Widget _buildRegularMessageBubble(
    ChatMessage message,
    bool isMe,
    DateFormat timeFormat,
  ) {
    return _buildMessageContent(message, isMe, timeFormat);
  }

  // 抽取消息内容部分
  Widget _buildMessageContent(
    ChatMessage message,
    bool isMe,
    DateFormat timeFormat,
  ) {
    final isNewMessage = _newMessageIds[message.id] == true;

    return Column(
      crossAxisAlignment:
          isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        // 添加发送人名称显示（仅在非自己发送的消息上显示）
        if (!isMe)
          Padding(
            padding: const EdgeInsets.only(left: 4.0, bottom: 2.0),
            child: Text(
              message.ffiModel.senderUser.senderNickName,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF5F78A2), // 统一使用固定颜色
              ),
            ),
          ),
        GestureDetector(
          onTap:
              message.type == FfiMsgType.image
                  ? () => _showImageViewer(context, message)
                  : null,
          child: Container(
            padding:
                message.type == FfiMsgType.image
                    ? EdgeInsets.zero
                    : const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color:
                  isMe
                      ? (isNewMessage ? Colors.blue.shade600 : Colors.blue)
                      : (isNewMessage ? Colors.grey.shade300 : Colors.white),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildMessageContentByType(message),
                const SizedBox(height: 2),
                Padding(
                  padding:
                      message.type == FfiMsgType.image
                          ? const EdgeInsets.only(right: 8, bottom: 4)
                          : EdgeInsets.zero,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        timeFormat.format(message.timestamp),
                        style: TextStyle(
                          color: isMe ? Colors.white70 : Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                      if (isMe) const SizedBox(width: 4),
                      if (isMe) _buildMessageStatus(message.status),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isMe && message.status == FfiMsgStatus.failed)
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: GestureDetector(
              onTap: () {
                ref
                    .read(chatDetailNotifierProvider.notifier)
                    .add(ChatDetailEvent.retryMessage(message.id));
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.error_outline, color: Colors.red, size: 14),
                  SizedBox(width: 4),
                  Text(
                    '发送失败，点击重试',
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  // 根据消息类型构建不同的内容
  Widget _buildMessageContentByType(ChatMessage message) {
    switch (message.type) {
      case FfiMsgType.image:
        // 图片消息
        return Hero(
          tag: 'image_${message.id}',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl: message.imageContent.thumbUrl,
              width: 200,
              fit: BoxFit.cover,
              placeholder:
                  (context, url) => Container(
                    height: 150,
                    width: 200,
                    color: Colors.grey[300],
                    child: const Center(child: CircularProgressIndicator()),
                  ),
              errorWidget:
                  (context, url, error) => Container(
                    height: 150,
                    width: 200,
                    color: Colors.grey[300],
                    child: const Icon(Icons.error),
                  ),
            ),
          ),
        );
      case FfiMsgType.text:
      default:
        // 文本消息
        return Text(
          message.textContent.text,
          style: TextStyle(
            color: message.isMe ? Colors.white : Colors.black,
            fontSize: 16,
          ),
        );
    }
  }

  Widget _buildAvatar(ChatMessage message) {
    final hasAvatar =
        message.senderAvatar != null && message.senderAvatar!.isNotEmpty;

    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: hasAvatar ? null : _getAvatarColor(message.senderId),
        borderRadius: BorderRadius.circular(18),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child:
            hasAvatar
                ? CachedNetworkImage(
                  imageUrl: message.senderAvatar!,
                  fit: BoxFit.cover,
                  placeholder:
                      (context, url) => _buildAvatarPlaceholder(message),
                  errorWidget:
                      (context, url, error) => _buildAvatarPlaceholder(message),
                )
                : _buildAvatarPlaceholder(message),
      ),
    );
  }

  Widget _buildAvatarPlaceholder(ChatMessage message) {
    // 直接使用Image.asset，不需要占位图
    return Image.asset(
      'assets/images/chat/user_default_icon.png',
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        // 添加日志记录错误
        Log.error('头像图片加载失败', error: error, stackTrace: stackTrace);

        final firstLetter =
            message.senderName.isNotEmpty
                ? message.senderName.substring(0, 1).toUpperCase()
                : '?';

        return Container(
          color: _getAvatarColor(message.senderId),
          child: Center(
            child: Text(
              firstLetter,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        );
      },
    );
  }

  Color _getAvatarColor(int userId) {
    final colors = [
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.teal,
    ];

    final colorIndex = userId % colors.length;
    return colors[colorIndex.abs()];
  }

  Widget _buildMessageStatus(FfiMsgStatus status) {
    switch (status) {
      case FfiMsgStatus.sending:
        return const SizedBox(
          width: 12,
          height: 12,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        );
      case FfiMsgStatus.sent:
        return const Icon(Icons.check, size: 12, color: Colors.white70);
      case FfiMsgStatus.received:
        return const Icon(Icons.done_all, size: 12, color: Colors.white70);
      case FfiMsgStatus.read:
        return const Icon(Icons.done_all, size: 12, color: Colors.white);
      case FfiMsgStatus.failed:
        return const Icon(Icons.error_outline, size: 12, color: Colors.red);
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildMessageInput({
    bool isInputValid = false,
    bool isSending = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // 显示添加菜单（图片、文件等）
              _showAddContentMenu(context);
            },
          ),
          Expanded(
            child: TextField(
              controller: _messageController,
              focusNode: _focusNode,
              onChanged: (text) {
                setState(() {
                  _isComposing = text.trim().isNotEmpty;
                });
                ref
                    .read(chatDetailNotifierProvider.notifier)
                    .add(ChatDetailEvent.messageInputChanged(text));
              },
              decoration: const InputDecoration(
                hintText: '输入消息...',
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
              ),
              maxLines: 4,
              minLines: 1,
              textInputAction: TextInputAction.send,
              onSubmitted:
                  isInputValid && !isSending
                      ? (_) => _handleSendMessage()
                      : null,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            color: Colors.blue,
            onPressed: isInputValid && !isSending ? _handleSendMessage : null,
          ),
        ],
      ),
    );
  }

  void _handleSendMessage() {
    ref
        .read(chatDetailNotifierProvider.notifier)
        .add(const ChatDetailEvent.sendTextMessage());
    // 用户主动发送消息时，仍然滚动到底部
    _scrollToBottom();
  }

  void _showAddContentMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return SafeArea(
          child: SizedBox(
            height: 180,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 4,
                    children: [
                      _buildAddMenuItem(
                        icon: Icons.photo,
                        label: '相册',
                        onTap: () {
                          Navigator.pop(context);
                          // 实现从相册选择图片
                        },
                      ),
                      _buildAddMenuItem(
                        icon: Icons.camera_alt,
                        label: '拍照',
                        onTap: () {
                          Navigator.pop(context);
                          // 实现拍照功能
                        },
                      ),
                      _buildAddMenuItem(
                        icon: Icons.videocam,
                        label: '视频',
                        onTap: () {
                          Navigator.pop(context);
                          // 实现视频消息
                        },
                      ),
                      _buildAddMenuItem(
                        icon: Icons.mic,
                        label: '语音',
                        onTap: () {
                          Navigator.pop(context);
                          // 实现语音消息
                        },
                      ),
                      _buildAddMenuItem(
                        icon: Icons.location_on,
                        label: '位置',
                        onTap: () {
                          Navigator.pop(context);
                          // 实现位置消息
                        },
                      ),
                      _buildAddMenuItem(
                        icon: Icons.article,
                        label: '文件',
                        onTap: () {
                          Navigator.pop(context);
                          // 实现文件消息
                        },
                      ),
                      _buildAddMenuItem(
                        icon: Icons.contacts,
                        label: '联系人',
                        onTap: () {
                          Navigator.pop(context);
                          // 实现联系人消息
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildAddMenuItem({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.blue),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  void _showChatOptions(
    BuildContext context,
    String conversationId,
    String conversationName,
  ) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              ListTile(
                leading: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.videocam, color: Colors.blue),
                ),
                title: const Text('视频通话'),
                onTap: () {
                  Navigator.pop(context);
                  // 实现视频通话
                },
              ),
              ListTile(
                leading: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.search, color: Colors.blue),
                ),
                title: const Text('搜索聊天记录'),
                onTap: () {
                  Navigator.pop(context);
                  // 实现搜索聊天记录
                },
              ),
              ListTile(
                leading: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.image, color: Colors.blue),
                ),
                title: const Text('查看图片和视频'),
                onTap: () {
                  Navigator.pop(context);
                  // 实现查看媒体文件
                },
              ),
              ListTile(
                leading: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.delete, color: Colors.red),
                ),
                title: const Text('清空聊天记录'),
                onTap: () {
                  Navigator.pop(context);
                  _showClearChatConfirmation(
                    context,
                    conversationId,
                    conversationName,
                  );
                },
              ),
              const SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }

  void _showClearChatConfirmation(
    BuildContext context,
    String conversationId,
    String conversationName,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('清空聊天记录'),
          content: Text('确定要清空与"$conversationName"的所有聊天记录吗？'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('取消'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                // 实现清空聊天记录
              },
              child: const Text('清空', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  // 显示图片查看器
  void _showImageViewer(BuildContext context, ChatMessage message) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (context) => ImageViewerScreen(
              imageUrl: message.imageContent.thumbUrl,
              heroTag: 'image_${message.id}',
            ),
      ),
    );
  }

  // 估算当前可见的消息索引
  int _estimateVisibleItemIndex() {
    if (!_scrollController.hasClients) return -1;

    // 从滚动位置估算当前查看的消息索引
    final double currentOffset = _scrollController.position.pixels;
    final double viewportHeight = _scrollController.position.viewportDimension;
    final double maxScrollExtent = _scrollController.position.maxScrollExtent;

    // 当前的滚动位置在总长度中的比例
    double scrollRatio =
        currentOffset / (maxScrollExtent > 0 ? maxScrollExtent : 1);

    // 在反向列表中，位置0是最新消息，向下滚动增加pixels值
    // 更精确的估算方法，考虑滚动比例和消息总数
    int totalMessages = 0;

    // 获取消息总数
    final currentState = ref.read(chatDetailNotifierProvider);
    currentState.maybeWhen(
      success:
          (
            conversationId,
            conversationName,
            conversationMemberCount,
            totalUnreadCount,
            conversationAvatar,
            messages,
            isLoadingMore,
            hasReachedEnd,
          ) => totalMessages = messages.length,
      input:
          (
            conversationId,
            conversationName,
            conversationAvatar,
            conversationMemberCount,
            totalUnreadCount,
            messages,
            inputText,
            isInputValid,
            isLoadingMore,
            hasReachedEnd,
          ) => totalMessages = messages.length,
      sending:
          (
            conversationId,
            conversationName,
            conversationAvatar,
            conversationMemberCount,
            totalUnreadCount,
            messages,
            inputText,
            pendingMessage,
            isLoadingMore,
            hasReachedEnd,
          ) => totalMessages = messages.length,
      orElse: () {},
    );

    if (totalMessages == 0) return 0;

    // 基于滚动比例和可见区域估算当前索引
    int estimatedIndex = (scrollRatio * totalMessages).floor();

    // 如果滚动位置很小，优先显示第一条消息
    if (currentOffset < 50) return 0;

    // 确保索引在有效范围内
    return estimatedIndex.clamp(0, totalMessages - 1);
  }

  // 在消息列表变化后恢复滚动位置
  void _restoreScrollPosition(List<ChatMessage> currentMessages) {
    if (!mounted || !_scrollController.hasClients || _anchorMessageId == null)
      return;

    try {
      // 查找锚定消息在新列表中的位置
      int newAnchorIndex = -1;
      for (int i = 0; i < currentMessages.length; i++) {
        if (currentMessages[i].id == _anchorMessageId) {
          newAnchorIndex = i;
          break;
        }
      }

      if (newAnchorIndex >= 0) {
        // 锚定消息仍然存在
        // 使用jumpTo而不是animateTo，避免动画导致的额外偏移
        _scrollController.jumpTo(_anchorPosition);
        Log.info(
          '恢复到锚定消息位置: index=$newAnchorIndex, position=${_anchorPosition}',
        );
      } else {
        // 如果找不到锚定消息，可能是已被加载更多消息顶出或删除
        // 尝试找到最近的消息ID
        int closestId = _anchorMessageId!; // 使用!运算符确保非空
        int closestIndex = -1;
        int minDiff = 999999;

        for (int i = 0; i < currentMessages.length; i++) {
          int diff =
              (currentMessages[i].id - _anchorMessageId!).abs(); // 使用!运算符确保非空
          if (diff < minDiff) {
            minDiff = diff;
            closestIndex = i;
            closestId = currentMessages[i].id;
          }
        }

        if (closestIndex >= 0) {
          // 找到最近的消息，尝试根据ID差值调整滚动位置
          Log.info(
            '找到接近的消息: ID=$closestId, index=$closestIndex, 原ID=${_anchorMessageId}',
          );
          // 简单保持当前位置
          // 这里逻辑可以根据具体情况进一步优化
        } else {
          Log.info('无法找到锚定消息或接近的消息，保持当前位置');
        }
      }
    } catch (e) {
      Log.error('恢复滚动位置时发生错误', error: e);
    }
    // 注意：不再清除_anchorMessageId，允许它在下一次滚动恢复中继续使用
  }
}

// 消息项保持状态包装器
class MessageItemWidget extends StatefulWidget {
  final ChatMessage message;
  final bool showDate;
  final DateTime? previousMessageTime;
  final bool isNewMessage;

  const MessageItemWidget({
    super.key,
    required this.message,
    required this.showDate,
    this.previousMessageTime,
    this.isNewMessage = false,
  });

  @override
  State<MessageItemWidget> createState() => _MessageItemWidgetState();
}

class _MessageItemWidgetState extends State<MessageItemWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true; // 保持状态

  @override
  Widget build(BuildContext context) {
    super.build(context); // 必须调用

    return Consumer(
      builder: (context, ref, child) {
        return Column(
          children: [
            if (widget.showDate) _buildDateDivider(widget.message.timestamp),
            // 为新消息添加动画效果
            widget.isNewMessage
                ? _buildAnimatedMessageBubble(ref, widget.message)
                : _buildMessageBubble(ref, widget.message),
          ],
        );
      },
    );
  }

  Widget _buildAnimatedMessageBubble(WidgetRef ref, ChatMessage message) {
    // 简化动画效果，避免闪屏问题
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.2, end: 0.0),
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, value * 20), // 缩小滑动距离，减轻闪屏风险
          child: _buildMessageBubble(ref, message),
        );
      },
    );
  }

  Widget _buildDateDivider(DateTime timestamp) {
    final dateFormat = DateFormat('yyyy-MM-dd');
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final messageDate = DateTime(
      timestamp.year,
      timestamp.month,
      timestamp.day,
    );

    String dateText;
    if (messageDate == today) {
      dateText = '今天';
    } else if (messageDate == yesterday) {
      dateText = '昨天';
    } else {
      dateText = dateFormat.format(timestamp);
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0xFFE8E8E8),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            dateText,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),
      ),
    );
  }

  Widget _buildMessageBubble(WidgetRef ref, ChatMessage message) {
    final timeFormat = DateFormat('HH:mm');
    final isMe = message.isMe;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8), // 增加垂直间距
      child: Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start, // 改为顶部对齐
        children: [
          if (!isMe) _buildAvatar(message),

          if (!isMe) const SizedBox(width: 8),

          Flexible(child: _buildMessageContent(ref, message, isMe, timeFormat)),

          if (isMe) const SizedBox(width: 8),

          if (isMe) _buildAvatar(message),
        ],
      ),
    );
  }

  Widget _buildAvatar(ChatMessage message) {
    final hasAvatar =
        message.senderAvatar != null && message.senderAvatar!.isNotEmpty;

    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: hasAvatar ? null : _getAvatarColor(message.senderId),
        borderRadius: BorderRadius.circular(18),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child:
            hasAvatar
                ? CachedNetworkImage(
                  imageUrl: message.senderAvatar!,
                  fit: BoxFit.cover,
                  placeholder:
                      (context, url) => _buildAvatarPlaceholder(message),
                  errorWidget:
                      (context, url, error) => _buildAvatarPlaceholder(message),
                )
                : _buildAvatarPlaceholder(message),
      ),
    );
  }

  Widget _buildAvatarPlaceholder(ChatMessage message) {
    // 直接使用Image.asset，不需要占位图
    return Image.asset(
      'assets/images/chat/user_default_icon.png',
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        // 添加日志记录错误
        Log.error('头像图片加载失败', error: error, stackTrace: stackTrace);

        final firstLetter =
            message.senderName.isNotEmpty
                ? message.senderName.substring(0, 1).toUpperCase()
                : '?';

        return Container(
          color: _getAvatarColor(message.senderId),
          child: Center(
            child: Text(
              firstLetter,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildMessageContent(
    WidgetRef ref,
    ChatMessage message,
    bool isMe,
    DateFormat timeFormat,
  ) {
    return Column(
      crossAxisAlignment:
          isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        // 添加发送人名称显示（仅在非自己发送的消息上显示）
        if (!isMe)
          Padding(
            padding: const EdgeInsets.only(left: 4.0, bottom: 2.0),
            child: Text(
              message.senderName,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF5F78A2), // 统一使用固定颜色
              ),
            ),
          ),
        GestureDetector(
          onTap:
              message.type == FfiMsgType.image
                  ? () => _showImageViewer(context, message)
                  : null,
          child: Container(
            padding:
                message.type == FfiMsgType.image
                    ? EdgeInsets.zero
                    : const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: isMe ? Colors.blue : Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildMessageContentByType(message),
                const SizedBox(height: 2),
                Padding(
                  padding:
                      message.type == FfiMsgType.image
                          ? const EdgeInsets.only(right: 8, bottom: 4)
                          : EdgeInsets.zero,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        timeFormat.format(message.timestamp),
                        style: TextStyle(
                          color: isMe ? Colors.white70 : Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                      if (isMe) const SizedBox(width: 4),
                      if (isMe) _buildMessageStatus(message.status),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isMe && message.status == FfiMsgStatus.failed)
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: GestureDetector(
              onTap: () {
                ref
                    .read(chatDetailNotifierProvider.notifier)
                    .add(ChatDetailEvent.retryMessage(message.ffiModel.common.flag));
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.error_outline, color: Colors.red, size: 14),
                  SizedBox(width: 4),
                  Text(
                    '发送失败，点击重试',
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildMessageContentByType(ChatMessage message) {
    switch (message.type) {
      case FfiMsgType.image:
        // 图片消息
        return Hero(
          tag: 'image_${message.ffiModel.common.flag}',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl: message.imageContent.thumbUrl,
              width: 200,
              fit: BoxFit.cover,
              placeholder:
                  (context, url) => Container(
                    height: 150,
                    width: 200,
                    color: Colors.grey[300],
                    child: const Center(child: CircularProgressIndicator()),
                  ),
              errorWidget:
                  (context, url, error) => Container(
                    height: 150,
                    width: 200,
                    color: Colors.grey[300],
                    child: const Icon(Icons.error),
                  ),
            ),
          ),
        );
      case FfiMsgType.text:
      default:
        // 文本消息
        return Text(
          message.textContent.text,
          style: TextStyle(
            color: message.isMe ? Colors.white : Colors.black,
            fontSize: 16,
          ),
        );
    }
  }

  Widget _buildMessageStatus(FfiMsgStatus status) {
    switch (status) {
      case FfiMsgStatus.sending:
        return const SizedBox(
          width: 12,
          height: 12,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        );
      case FfiMsgStatus.sent:
        return const Icon(Icons.check, size: 12, color: Colors.white70);
      case FfiMsgStatus.received:
        return const Icon(Icons.done_all, size: 12, color: Colors.white70);
      case FfiMsgStatus.read:
        return const Icon(Icons.done_all, size: 12, color: Colors.white);
      case FfiMsgStatus.failed:
        return const Icon(Icons.error_outline, size: 12, color: Colors.red);
      default:
        return const SizedBox.shrink();
    }
  }

  Color _getAvatarColor(int userId) {
    final colors = [
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.teal,
    ];

    final colorIndex = userId % colors.length;
    return colors[colorIndex.abs()];
  }

  void _showImageViewer(BuildContext context, ChatMessage message) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (context) => ImageViewerScreen(
              imageUrl: message.imageContent.thumbUrl,
              heroTag: 'image_${message.ffiModel.common.flag}',
            ),
      ),
    );
  }
}
