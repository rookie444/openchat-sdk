import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_audio.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_dice.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_dynamic_image.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_file.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_image.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_namecard.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_system.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_transfer.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_video.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_game.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/services/chat_list_service.dart';
import 'package:openchat_client/src/rust/api/model/user.dart';
import 'package:openchat_client/src/rust/api/chat_api.dart' as chat_api;
import 'package:openchat_client/src/rust/api/user_api.dart' as user_api;
import 'package:openchat_client/src/rust/api/download_api.dart' as download_api;
import 'package:openchat_client/src/rust/api/group_api.dart' as group_api;
import '../models/chat_message.dart';
import '../../../../core/utils/log.dart';
import 'chat_list_event.dart';
import 'chat_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../common/ffi.dart';
import '../models/chat_message_redpacket.dart';

part '../../../../../generated/src/features/contacts/chat_demo/blocs/chat_list_bloc.g.dart';

@riverpod
ChatListBloc chatListBloc(Ref ref, FfiChatType chatType, int targetId) {
  final chatListService = ref.read(chatListServiceProvider);
  final bloc = ChatListBloc(chatListService: chatListService);

  // 确保在dispose时正确清理资源
  ref.onDispose(() {
    Log.info('ChatDetailBloc Provider 销毁: ${chatType.index}-$targetId');
    bloc.close();
  });

  return bloc;
}

class ChatListBloc extends Bloc<ChatListEvent, ChatListState> {
  final ChatListService _chatListService;
  StreamSubscription? _messageSubscription;
  bool _hasSubscribed = false;
  bool _isClosed = false;
  FfiChatType? _chatType;
  int? _targetId;

  // 添加消息对象缓存，避免重复创建
  final Map<String, ChatMessage> _messageCache = {};
  List<ChatMessage>? _messagesToForward;

  ChatListBloc({required ChatListService chatListService})
    : _chatListService = chatListService,
      super(const ChatListState.initial()) {
    Log.info('ChatDetailBloc 初始化');
    // 添加事件处理器
    _addEventHandlers();

    // 监听新消息
    _setupMessageListener();

    // 监听用户信息更新
    _setupUserInfoListener();
  }

  void _addEventHandlers() {
    // 使用单一事件处理器，按照flutter_riverpod_bloc.mdc模式实现
    on<ChatListEvent>((event, emit) async {
      // 处理异步操作
      await event.maybeMap(
        initialized:
            (e) async => await _onInitialized(
              emit,
              e.chatType,
              e.targetId,
              e.messagesToForward,
            ),
        loadMoreMessages: (e) async => await _onLoadMoreMessages(emit),
        sendTextMessage: (e) async => await _onSendTextMessage(emit),
        sendImageMessage:
            (e) async => await _onSendImageMessage(emit, e.imageMessageContent),
        sendNameCardMessage:
            (e) async =>
                await _onSendNameCardMessage(emit, e.nameCardMessageContent),
        sendRedPacketMessage:
            (e) async =>
                await _onSendRedPacketMessage(emit, e.redPacketMessageContent),
        sendVideoMessage:
            (e) async => await _onSendVideoMessage(emit, e.videoMessageContent),
        sendFileMessage:
            (e) async => await _onSendFileMessage(emit, e.fileMessageContent),
        sendDynamicImageMessage:
            (e) async => await _onSendDynamicImageMessage(
              emit,
              e.dynamicImageMessageContent,
            ),
        sendGameMessage:
            (e) async => await _onSendGameMessage(emit, e.gameMessageContent),
        sendDiceMessage:
            (e) async => await _onSendDiceMessage(emit, e.diceMessageContent),
        sendAudioMessage:
            (e) async => await _onSendAudioMessage(emit, e.audioMessageContent),
        sendTransferMessage:
            (e) async =>
                await _onSendTransferMessage(emit, e.transferMessageContent),
        sendSystemMessage:
            (e) async =>
                await _onSendSystemMessage(emit, e.systemMessageContent),
        retryMessage: (e) async => await _onRetryMessage(emit, e.messageId),
        sendReplyMessage: (e) async => await _onSendReplyMessage(emit),
        orElse: () async {},
      );

      // 处理同步操作
      event.maybeMap(
        messageInputChanged: (e) => _onMessageInputChanged(emit, e.text),
        messageReceived: (e) => _onMessageReceived(emit, e.message),
        messageStatusUpdated:
            (e) => _onMessageStatusUpdated(emit, e.messageId, e.status),
        deleteMessage: (e) => _onDeleteMessage(emit, e.messageId),
        multipleMessagesReceived:
            (e) => _onMultipleMessagesReceived(emit, e.messages),
        userInfoUpdated: (e) => _onUserInfoUpdated(emit, e.user),
        startReply: (e) => _onStartReply(emit, e.message),
        cancelReply: (e) => _onCancelReply(emit),
        clearForwardMessages: (e) => _onClearForwardMessages(emit),
        orElse: () {},
      );
    });
  }

  void _setupMessageListener() {
    if (_isClosed || _hasSubscribed) return;

    Log.info('ChatListBloc 设置消息监听');
    _messageSubscription = _chatListService.listenForMessages().listen((
      chat_api.Rust2ClientMessagePayload message,
    ) async {
      if (_isClosed) return;

      final payload = message.payload;
      final messageType = message.messageType;

      if (messageType ==
          chat_api.Rust2ClientMessageType.conversationDetailUpdate) {
        Log.info('chat_api.Rust2ClientMessageType.conversationDetailUpdate');
        // 解析会话详情更新消息
        List<dynamic> jsonList = [];
        if (payload.isNotEmpty && payload != "[]") {
          jsonList = jsonDecode(payload);
        } else {
          Log.info('payload is empty or payload == "[]"');
          return;
        }
        Log.info('jsonList-${jsonList}');
        List<FfiMessageModel> messages = [];
        for (final e in jsonList) {
          try {
            messages.add(FfiMessageModel.fromJson(e));
          } catch (e) {
            Log.error('会话更新消息转换失败', error: e);
          }
        }
        Log.info('messages-${messages}');

        // 使用Bloc实例中存储的_chatType和_targetId来过滤消息
        if (_chatType == null || _targetId == null) {
          Log.info('ChatListBloc 尚未初始化，跳过消息处理');
          return;
        }

        // 过滤属于当前会话的消息
        final currentSessionMessages =
            messages.where((msg) {
              return msg.common.chatType == _chatType &&
                  msg.common.targetId == _targetId;
            }).toList();

        if (currentSessionMessages.isEmpty) {
          Log.info(
            '收到消息但不属于当前会话(chatType=$_chatType targetId=$_targetId)，跳过处理',
          );
          return;
        }

        Log.info('收到属于当前会话的消息: ${currentSessionMessages.length}条');

        final chatMessages =
            currentSessionMessages
                .map((ffiMsg) => _createChatMessage(ffiMsg))
                .toList();

        if (chatMessages.isNotEmpty) {
          Log.info(
            'ChatDetailBloc 收到当前会话(chatType=$_chatType targetId=$_targetId conversationId=${_chatType!.index}-$_targetId)的新消息: ${chatMessages.length}条',
          );

          final inputState = state.maybeMap(
            input: (s) => s,
            orElse: () => null,
          );

          if (inputState == null) {
            Log.info('处理消息被忽略，当前状态不适合处理');
            return;
          }

          // 拷贝旧消息列表，处理新消息和更新消息
          final updatedMessages = [...inputState.messages];

          for (var chatMessage in chatMessages) {
            // 根据消息发送者使用不同的匹配逻辑
            final isMyMessage = chatMessage.isMe;
            int existingIndex = -1;

            if (isMyMessage) {
              // 自己发送的消息：使用 flag 进行匹配
              existingIndex = updatedMessages.indexWhere(
                (msg) =>
                    msg.ffiModel.common.flag ==
                    chatMessage.ffiModel.common.flag,
              );
            } else {
              // 他人发送的消息：使用 msgId 进行匹配
              existingIndex = updatedMessages.indexWhere(
                (msg) =>
                    msg.ffiModel.common.msgId ==
                    chatMessage.ffiModel.common.msgId,
              );
            }

            if (existingIndex >= 0) {
              // 如果消息已存在，则更新
              updatedMessages[existingIndex] = chatMessage;
              Log.info(
                '✅ 更新已存在消息: ${isMyMessage ? "自己" : "他人"}发送, ${isMyMessage ? "flag" : "msgId"}=${isMyMessage ? chatMessage.ffiModel.common.flag : chatMessage.ffiModel.common.msgId}',
              );
            } else {
              // 如果消息不存在，则添加到列表末尾
              updatedMessages.add(chatMessage);
              Log.info(
                '✅ 新增消息: ${isMyMessage ? "自己" : "他人"}发送, ${isMyMessage ? "flag" : "msgId"}=${isMyMessage ? chatMessage.ffiModel.common.flag : chatMessage.ffiModel.common.msgId}',
              );
            }
             // 发出更新后的状态
             emit(inputState.copyWith(messages: updatedMessages));
          }


          Log.info(
            '✅ 消息处理完成，总消息数: ${updatedMessages.length}，缓存数量: ${_messageCache.length}',
          );
        }
      }
    });

    _hasSubscribed = true;
  }

  void _setupUserInfoListener() {
    // 添加用户信息更新事件监听
    user_api.listenForUserInfoUpdates().listen((user) {
      try {
        Log.info(
          'listenForUserInfoUpdates 用户信息更新: ${user.nickName} ${user.uid}',
        );
        // 发送到事件总线
        add(ChatListEvent.userInfoUpdated(user));
      } catch (e) {
        Log.error('会话详情页: 用户信息更新事件监听失败', error: e);
      }
    });

    download_api.listenForDownloadProgress().listen((progress) { 
      Log.info('listenForDownloadProgress 下载进度: $progress');
    });
  }

  // 初始化聊天页面，加载会话信息和消息历史
  Future<void> _onInitialized(
    Emitter<ChatListState> emit,
    FfiChatType chatType,
    int targetId,
    List<ChatMessage>? messagesToForward,
  ) async {
    try {
      Log.info('初始化聊天列表页: chatType=$chatType targetId=$targetId');
      _chatType = chatType;
      _targetId = targetId;
      _messagesToForward = messagesToForward;

      // 发出加载状态
      emit(const ChatListState.loading());

      // 获取历史消息
      final messages = await _chatListService.getChatHistory(
        chatType: chatType,
        targetId: targetId,
      );
      //过滤掉game消息 transfer 未知消息
      final reMessages =
          messages
              .where((message) => message.common.msgType != FfiMsgType.unknown)
              .toList()
              .reversed
              .toList();

      final chatMessages =
          reMessages
              .map((ffiMessage) => _createChatMessage(ffiMessage))
              .toList();

      //重新计算文本的宽高
      for (var chatMessage in chatMessages) {
        if (chatMessage.messageType == FfiMsgType.text) {
          await ChatMessageTextModel.calculateTextInfoContentSize(chatMessage);
        }
      }

      // 标记会话为已读
      await _chatListService.markSessionAsRead(
        chatType: chatType,
        targetId: targetId,
      );

      // 由于我们没有单独的会话信息接口，这里使用会话列表找到对应会话
      final sessions = await _chatListService.getChatSessions();
      final session = sessions.firstWhere(
        (s) => s.chatType == chatType && s.targetId == targetId,
        orElse:
            () => FfiConversation(
              conversationId: '{$chatType}_$targetId',
              targetId: targetId,
              chatType: chatType, // 默认单聊
              name: '会话 $chatType $targetId',
              lastMessage: '最后一条消息',
              lastMessageTime: 0,
              avatar: null,
              unreadCount: 0,
              isTopPinned: false,
              isMuted: false,
              lastMessageType: FfiMsgType.text,
              senderUid: 0,
              senderName: '',
              isArchive: false,
            ),
      );

      // 获取群成员数量（如果是群聊）
      int memberCount = 0;
      if (session.chatType == FfiChatType.group) {
        try {
          // 调用群组API获取成员数量
          memberCount = await group_api.getGroupMemberCount(
            conversationId: session.conversationId,
          );
          Log.info('获取到群成员数量：$memberCount');
        } catch (e) {
          Log.error('获取群成员数量失败', error: e);
        }
      }

      // 获取总未读消息数
      // 遍历sessions 获取未读消息数
      final totalUnreadCount = sessions.fold(
        0,
        (sum, session) => sum + session.unreadCount,
      );
      Log.info('获取到总未读消息数：$totalUnreadCount');

      // 发出成功状态
      emit(
        ChatListState.success(
          conversationId: session.conversationId,
          conversationName: session.name,
          conversationAvatar: session.avatar,
          conversationMemberCount: memberCount,
          totalUnreadCount: totalUnreadCount,
          messages: chatMessages,
          hasReachedEnd: messages.length < 20,
        ),
      );

      // 转换为输入状态
      emit(
        ChatListState.input(
          conversationId: session.conversationId,
          conversationName: session.name,
          conversationAvatar: session.avatar,
          conversationMemberCount: memberCount,
          totalUnreadCount: totalUnreadCount,
          messages: chatMessages,
          hasReachedEnd: messages.length < 20,
        ),
      );

      Log.info(
        '聊天详情页初始化完成，加载了${messages.length}条消息，缓存数量: ${_messageCache.length}',
      );
    } catch (e) {
      Log.error('初始化聊天详情页失败', error: e);
      emit(
        ChatListState.failure(
          errorMessage: '加载聊天记录失败: ${e.toString()}',
          conversationId: '${_chatType}_$_targetId',
        ),
      );
    }
  }

  // 加载更多历史消息
  Future<void> _onLoadMoreMessages(Emitter<ChatListState> emit) async {
    // 只在成功或输入状态处理
    final currentState = state;

    await currentState.maybeMap(
      success: (successState) async {
        if (successState.isLoadingMore || successState.hasReachedEnd) return;

        // 更新当前状态为正在加载更多
        emit(successState.copyWith(isLoadingMore: true));
        Log.info('加载更多消息开始 - 成功状态');

        try {
          // 获取更多历史消息
          final oldMessages = successState.messages;
          final oldestMessageId =
              oldMessages.isNotEmpty ? oldMessages.last.id : null;
          final moreMessages = await _chatListService.getChatHistory(
            chatType: _chatType!,
            targetId: _targetId!,
            limit: 20,
            beforeId: oldestMessageId,
          );
          final moreChatMessages =
              moreMessages.map((ffiMsg) {
                // 根据消息类型创建对应的消息模型
                if (ffiMsg.common.msgType == FfiMsgType.image) {
                  return ChatMessageImageModel(
                    ffiModel: ffiMsg,
                    contentObj: ffiMsg.contentObj,
                  );
                } else {
                  return ChatMessageTextModel(
                    ffiModel: ffiMsg,
                    contentObj: ffiMsg.contentObj,
                  );
                }
              }).toList();
          // 合并消息列表
          final allMessages = [...moreChatMessages, ...oldMessages];
          // 更新状态
          if (!emit.isDone) {
            emit(
              successState.copyWith(
                messages: allMessages,
                isLoadingMore: false,
                hasReachedEnd: moreMessages.length < 20,
              ),
            );
            Log.info('加载更多消息完成，新增${moreMessages.length}条消息');
          }
        } catch (e) {
          Log.error('加载更多消息失败', error: e);
          if (!emit.isDone) {
            emit(successState.copyWith(isLoadingMore: false));
          }
        }
      },
      input: (inputState) async {
        if (inputState.isLoadingMore || inputState.hasReachedEnd) return;

        // 更新当前状态为正在加载更多
        emit(inputState.copyWith(isLoadingMore: true));
        Log.info('加载更多消息开始 - 输入状态');

        try {
          // 获取更多历史消息
          final oldMessages = inputState.messages;
          final oldestMessageId =
              oldMessages.isNotEmpty ? oldMessages.last.id : null;
          final moreMessages = await _chatListService.getChatHistory(
            chatType: _chatType!,
            targetId: _targetId!,
            limit: 20,
            beforeId: oldestMessageId,
          );
          final moreChatMessages =
              moreMessages.map((ffiMsg) {
                // 根据消息类型创建对应的消息模型
                if (ffiMsg.common.msgType == FfiMsgType.image) {
                  return ChatMessageImageModel(
                    ffiModel: ffiMsg,
                    contentObj: ffiMsg.contentObj,
                  );
                } else {
                  return ChatMessageTextModel(
                    ffiModel: ffiMsg,
                    contentObj: ffiMsg.contentObj,
                  );
                }
              }).toList();
          // 合并消息列表
          final allMessages = [...moreChatMessages, ...oldMessages];

          // 更新状态
          if (!emit.isDone) {
            emit(
              inputState.copyWith(
                messages: allMessages,
                isLoadingMore: false,
                hasReachedEnd: moreMessages.length < 20,
              ),
            );
            Log.info('加载更多消息完成，新增${moreMessages.length}条消息');
          }
        } catch (e) {
          Log.error('加载更多消息失败', error: e);
          if (!emit.isDone) {
            emit(inputState.copyWith(isLoadingMore: false));
          }
        }
      },
      orElse: () async {
        // 在其他状态下不处理
        Log.info('加载更多消息被忽略，当前状态不适合加载');
      },
    );
  }

  ChatMessage _createChatMessage(FfiMessageModel ffiMessage) {
    // 生成消息的唯一键
    final messageKey = '${ffiMessage.common.msgId}_${ffiMessage.common.flag}';

    // 检查缓存中是否已存在该消息
    if (_messageCache.containsKey(messageKey)) {
      final cachedMessage = _messageCache[messageKey]!;
      print(
        '📦 使用缓存消息: msgId=${ffiMessage.common.msgId}, type=${ffiMessage.common.msgType}',
      );
      return cachedMessage;
    }

    print(
      '🆕 创建新消息对象: msgId=${ffiMessage.common.msgId}, type=${ffiMessage.common.msgType}',
    );

    // 根据消息类型创建对应的消息模型 用switch
    final ChatMessage newMessage;
    switch (ffiMessage.common.msgType) {
      case FfiMsgType.image:
        final jsonObj = jsonDecode(
          ffiMessage.contentObj!,
        ); // contentObj 是 JSON 字符串
        final contentObj = FfiImageMessageContent.fromJson(jsonObj);
        newMessage = ChatMessageImageModel(
          ffiModel: ffiMessage,
          contentObj: contentObj,
        );
        break;
      case FfiMsgType.text:
        final jsonObj = jsonDecode(
          ffiMessage.contentObj!,
        ); // contentObj 是 JSON 字符串
        final contentObj = FfiTextMessageContent.fromJson(jsonObj);
        newMessage = ChatMessageTextModel(
          ffiModel: ffiMessage,
          contentObj: contentObj,
        );
        break;
      case FfiMsgType.card:
        final jsonObj = jsonDecode(
          ffiMessage.contentObj!,
        ); // contentObj 是 JSON 字符串
        final contentObj = FfiNameCardMessageContent.fromJson(jsonObj);
        newMessage = ChatMessageNamecardModel(
          ffiModel: ffiMessage,
          contentObj: contentObj,
        );
        break;
      case FfiMsgType.dice:
        final jsonObj = jsonDecode(
          ffiMessage.contentObj!,
        ); // contentObj 是 JSON 字符串
        final contentObj = FfiDiceMessageContent.fromJson(jsonObj);
        newMessage = ChatMessageDiceModel(
          ffiModel: ffiMessage,
          contentObj: contentObj,
        );
        break;
      case FfiMsgType.video:
        final jsonObj = jsonDecode(
          ffiMessage.contentObj!,
        ); // contentObj 是 JSON 字符串
        final contentObj = FfiVideoMessageContent.fromJson(jsonObj);
        newMessage = ChatMessageVideoModel(
          ffiModel: ffiMessage,
          contentObj: contentObj,
        );
        break;
      case FfiMsgType.packet:
        final jsonObj = jsonDecode(
          ffiMessage.contentObj!,
        ); // contentObj 是 JSON 字符串
        final contentObj = FfiRedPacketMessageContent.default_();
        newMessage = ChatMessageRedpacketModel(
          ffiModel: ffiMessage,
          contentObj: contentObj,
        );
        break;
      case FfiMsgType.image2:
        final jsonObj = jsonDecode(
          ffiMessage.contentObj!,
        ); // contentObj 是 JSON 字符串
        final contentObj = FfiDynamicImageMessageContent.fromJson(jsonObj);
        newMessage = ChatMessageDynamicImageModel(
          ffiModel: ffiMessage,
          contentObj: contentObj,
        );
        break;
      case FfiMsgType.transfer:
        final jsonObj = jsonDecode(
          ffiMessage.contentObj!,
        ); // contentObj 是 JSON 字符串
        final contentObj = FfiChatTransferMessageContent.default_();
        newMessage = ChatMessageTransferModel(
          ffiModel: ffiMessage,
          contentObj: contentObj,
        );
        break;
      case FfiMsgType.file:
        final jsonObj = jsonDecode(
          ffiMessage.contentObj!,
        ); // contentObj 是 JSON 字符串
        final contentObj = FfiFileMessageContent.default_();
        newMessage = ChatMessageFileModel(
          ffiModel: ffiMessage,
          contentObj: contentObj,
        );
        break;
      case FfiMsgType.game:
        final jsonObj = jsonDecode(
          ffiMessage.contentObj!,
        ); // contentObj 是 JSON 字符串
        final contentObj = FfiAnmatedMessageContent.fromJson(jsonObj);
        newMessage = ChatMessageGameModel(
          ffiModel: ffiMessage,
          contentObj: contentObj,
        );
        break;
      case FfiMsgType.html:
        final jsonObj = jsonDecode(
          ffiMessage.contentObj!,
        ); // contentObj 是 JSON 字符串
        final contentObj = FfiHtmlMessageContent.fromJson(jsonObj);
        newMessage = ChatMessageFileModel(
          ffiModel: ffiMessage,
          contentObj: contentObj,
        );
        break;
      case FfiMsgType.html2:
        final jsonObj = jsonDecode(
          ffiMessage.contentObj!,
        ); // contentObj 是 JSON 字符串
        final contentObj = FfiHtml2MessageContent.fromJson(jsonObj);
        newMessage = ChatMessageFileModel(
          ffiModel: ffiMessage,
          contentObj: contentObj,
        );
        break;
      default:
        final jsonObj = jsonDecode(
          ffiMessage.contentObj!,
        ); // contentObj 是 JSON 字符串
        final contentObj = FfiTextMessageContent.fromJson(jsonObj);
        newMessage = ChatMessageTextModel(
          ffiModel: ffiMessage,
          contentObj: contentObj,
        );
        break;
    }

    // 将新创建的消息存入缓存
    _messageCache[messageKey] = newMessage;

    return newMessage;
  }

  // 处理消息输入变化
  void _onMessageInputChanged(Emitter<ChatListState> emit, String text) {
    // 只在输入状态下处理输入变化
    state.maybeMap(
      input: (inputState) {
        final trimmedText = text.trim();
        final isValid = trimmedText.isNotEmpty;

        Log.debug('消息输入变化: "$text", 是否有效: $isValid');

        emit(inputState.copyWith(inputText: text, isInputValid: isValid));
      },
      orElse: () {
        // 如果不是输入状态，则尝试将当前状态转换为输入状态
        state.maybeMap(
          success: (successState) {
            final trimmedText = text.trim();
            final isValid = trimmedText.isNotEmpty;

            Log.debug('从成功状态转为输入状态: "$text", 是否有效: $isValid');

            emit(
              ChatListState.input(
                conversationId: successState.conversationId,
                conversationName: successState.conversationName,
                conversationAvatar: successState.conversationAvatar,
                conversationMemberCount: successState.conversationMemberCount,
                totalUnreadCount: successState.totalUnreadCount,
                messages: successState.messages,
                inputText: text,
                isInputValid: isValid,
                isLoadingMore: successState.isLoadingMore,
                hasReachedEnd: successState.hasReachedEnd,
              ),
            );
          },
          orElse: () {
            // 其他状态不处理
            Log.debug('消息输入被忽略，当前状态不适合处理输入');
          },
        );
      },
    );
  }

  // 发送文本消息
  Future<void> _onSendTextMessage(Emitter<ChatListState> emit) async {
    final inputState = state.maybeMap(input: (s) => s, orElse: () => null);

    // 发送转发消息
    await _handleForwardMessages(emit);

    if (inputState == null) {
      Log.info('发送消息被忽略，当前状态不适合发送');
      return;
    }

    final text = inputState.inputText.trim();
    if (text.isEmpty) {
      Log.info('尝试发送空消息，已忽略');
      return;
    }

    Log.info('开始发送文本消息: "$text"');

    try {
      // 发送消息
      final newFFiMessage = await chat_api.sendMessage(
        chatType: _chatType!,
        targetId: _targetId!,
        msgContent: FfiMsgContent.text(FfiTextMessageContent(text: text)),
        refObj: _buildRefObj(inputState.replyToMessage),
      );

      Log.info("FFI消息发送返回: ${newFFiMessage.toString()}");

      // 根据消息类型创建对应的消息模型
      final newMessage = () {
        if (newFFiMessage.common.msgType == FfiMsgType.image) {
          return ChatMessageImageModel(
            ffiModel: newFFiMessage,
            contentObj: newFFiMessage.contentObj,
          );
        } else if (newFFiMessage.common.msgType == FfiMsgType.text) {
          final jsonObj = jsonDecode(
            newFFiMessage.contentObj!,
          ); // contentObj 是 JSON 字符串
          final contentObj = FfiTextMessageContent.fromJson(jsonObj);

          return ChatMessageTextModel(
            ffiModel: newFFiMessage,
            contentObj: contentObj,
          );
        } else {
          return ChatMessageTextModel(
            ffiModel: newFFiMessage,
            contentObj: newFFiMessage.contentObj,
          );
        }
      }();

      final sentMessage = newMessage;

      // 拷贝旧消息列表，替换或插入新消息
      final updatedMessages = List<ChatMessage>.from(inputState.messages);
      final index = updatedMessages.indexWhere(
        (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
      );

      if (index >= 0) {
        // 如果消息已存在（比如重试发送的情况），则替换
        updatedMessages[index] = sentMessage;
        Log.info('✅ 发送消息：替换现有消息，位置: $index');
      } else {
        // 新消息添加到列表末尾（最新消息位置）
        updatedMessages.add(sentMessage);
        Log.info('✅ 发送消息：新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      }

      // 发出新的输入状态，并清除回复状态
      emit(
        ChatListState.input(
          conversationId: inputState.conversationId,
          conversationName: inputState.conversationName,
          conversationAvatar: inputState.conversationAvatar,
          conversationMemberCount: inputState.conversationMemberCount,
          totalUnreadCount: inputState.totalUnreadCount,
          messages: updatedMessages,
          isLoadingMore: inputState.isLoadingMore,
          hasReachedEnd: inputState.hasReachedEnd,
          // 发送成功后清除回复状态
          replyToMessage: null,
        ),
      );

      Log.info('文本消息发送成功');
    } catch (e, stack) {
      Log.error('发送文本消息失败', error: e, stackTrace: stack);
      // ⚠️ 可以在这里处理失败回退逻辑，例如提示或更新为失败状态的消息
    }
  }

  // 处理转发消息
  Future<void> _handleForwardMessages(Emitter<ChatListState> emit) async {
    final messagesToForward = _messagesToForward;
    if (messagesToForward != null && messagesToForward.isNotEmpty) {
      Log.info('开始发送转发消息，共${messagesToForward.length}条');

      for (var message in messagesToForward) {
        if (message.messageType == FfiMsgType.text) {
          await sendAnyMessageOptimized(
            emit,
            message.textContent,
            isForward: true,
          );
        }
        if (message.messageType == FfiMsgType.image) {
          await sendAnyMessageOptimized(
            emit,
            message.imageContent,
            isForward: true,
          );
        }
        if (message.messageType == FfiMsgType.card) {
          await sendAnyMessageOptimized(
            emit,
            message.nameCardContent,
            isForward: true,
          );
        }
        if (message.messageType == FfiMsgType.file) {
          await sendAnyMessageOptimized(
            emit,
            message.fileContent,
            isForward: true,
          );
        }
        if (message.messageType == FfiMsgType.video) {
          await sendAnyMessageOptimized(
            emit,
            message.videoContent,
            isForward: true,
          );
        }
        if (message.messageType == FfiMsgType.audio) {
          await sendAnyMessageOptimized(
            emit,
            message.audioContent,
            isForward: true,
          );
        }
        if (message.messageType == FfiMsgType.dice) {
          await sendAnyMessageOptimized(
            emit,
            message.diceContent,
            isForward: true,
          );
        }
        if (message.messageType == FfiMsgType.game) {
          await sendAnyMessageOptimized(
            emit,
            message.gameContent,
            isForward: true,
          );
        }
        if (message.messageType == FfiMsgType.html) {
          // await sendAnyMessageOptimized(emit, message.htmlMessageContent, isForward: true);
        }
      }

      // 发送清除转发消息事件，通知页面清除转发栏
      add(ChatListEvent.clearForwardMessages());
    }
  }

  // 发送转发消息
  Future<void> _onSendForwardMessage(
    // Emitter<ChatListState> emit,
    ChatMessage message,
  ) async {
    final inputState = state.maybeMap(input: (s) => s, orElse: () => null);

    if (inputState == null) {
      Log.info('发送消息被忽略，当前状态不适合发送');
      return;
    }

    try {
      // 发送消息
      final newFFiMessage = await chat_api.sendMessage(
        chatType: _chatType!,
        targetId: _targetId!,
        msgContent: FfiMsgContent.text(
          FfiTextMessageContent(text: message.contentObj.text),
        ),
        refObj: message.refObj,
      );

      Log.info("FFI消息发送返回: ${newFFiMessage.toString()}");

      // 根据消息类型创建对应的消息模型
      final newMessage = () {
        if (newFFiMessage.common.msgType == FfiMsgType.image) {
          return ChatMessageImageModel(
            ffiModel: newFFiMessage,
            contentObj: newFFiMessage.contentObj,
          );
        } else if (newFFiMessage.common.msgType == FfiMsgType.text) {
          final jsonObj = jsonDecode(
            newFFiMessage.contentObj!,
          ); // contentObj 是 JSON 字符串
          final contentObj = FfiTextMessageContent.fromJson(jsonObj);

          return ChatMessageTextModel(
            ffiModel: newFFiMessage,
            contentObj: contentObj,
          );
        } else {
          return ChatMessageTextModel(
            ffiModel: newFFiMessage,
            contentObj: newFFiMessage.contentObj,
          );
        }
      }();

      final sentMessage = newMessage;

      // 拷贝旧消息列表，替换或插入新消息
      final updatedMessages = List<ChatMessage>.from(inputState.messages);
      final index = updatedMessages.indexWhere(
        (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
      );

      if (index >= 0) {
        // 如果消息已存在（比如重试发送的情况），则替换
        updatedMessages[index] = sentMessage;
        Log.info('✅ 发送转发消息：替换现有消息，位置: $index');
      } else {
        // 新消息添加到列表末尾（最新消息位置）
        updatedMessages.add(sentMessage);
        Log.info('✅ 发送转发消息：新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      }

      Log.info('转发消息发送成功');
    } catch (e, stack) {
      Log.error('发送转发消息失败', error: e, stackTrace: stack);
      // ⚠️ 可以在这里处理失败回退逻辑，例如提示或更新为失败状态的消息
    }
  }

  // 发送名片消息
  Future<void> _onSendNameCardMessage(
    Emitter<ChatListState> emit,
    FfiNameCardMessageContent nameCardMessageContent,
  ) async {
    Log.info('开始发送名片消息: ${nameCardMessageContent.toJson()}');

    final inputState = state.maybeMap(input: (s) => s, orElse: () => null);

    if (inputState == null) {
      Log.info('发送消息被忽略，当前状态不适合发送');
      return;
    }

    try {
      // 发送名片消息
      final newFFiMessage = await chat_api.sendMessage(
        chatType: _chatType!,
        targetId: _targetId!,
        msgContent: FfiMsgContent.card(nameCardMessageContent),
      );
      Log.info(
        '发送名片消息成功: contactId=${nameCardMessageContent.uid}, nickName=${nameCardMessageContent.nickName}',
      );

      final sentMessage = ChatMessageNamecardModel(
        ffiModel: newFFiMessage,
        contentObj: nameCardMessageContent,
      );

      // 拷贝旧消息列表，替换或插入新消息
      final updatedMessages = List<ChatMessage>.from(inputState.messages);
      final index = updatedMessages.indexWhere(
        (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
      );

      if (index >= 0) {
        // 如果消息已存在（比如重试发送的情况），则替换
        updatedMessages[index] = sentMessage;
        Log.info('✅ 发送消息：替换现有消息，位置: $index');
      } else {
        // 新消息添加到列表末尾（最新消息位置）
        updatedMessages.add(sentMessage);
        Log.info('✅ 发送消息：新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      }

      // 发出新的输入状态
      emit(
        ChatListState.input(
          conversationId: inputState.conversationId,
          conversationName: inputState.conversationName,
          conversationAvatar: inputState.conversationAvatar,
          conversationMemberCount: inputState.conversationMemberCount,
          totalUnreadCount: inputState.totalUnreadCount,
          messages: updatedMessages,
          isLoadingMore: inputState.isLoadingMore,
          hasReachedEnd: inputState.hasReachedEnd,
          // 发送成功后清除回复状态
          replyToMessage: null,
        ),
      );

      Log.info('文本消息发送成功');
    } catch (e) {
      Log.error('发送名片消息失败', error: e);
      // ⚠️ 可以在这里处理失败回退逻辑，例如提示或更新为失败状态的消息
    }
  }

  // 发送红包消息
  Future<void> _onSendRedPacketMessage(
    Emitter<ChatListState> emit,
    FfiRedPacketMessageContent redPacketMessageContent,
  ) async {
    final inputState = state.maybeMap(input: (s) => s, orElse: () => null);

    if (inputState == null) {
      Log.info('发送消息被忽略，当前状态不适合发送');
      return;
    }

    try {
      // 发送红包消息
      final newFFiMessage = await chat_api.sendMessage(
        chatType: _chatType!,
        targetId: _targetId!,
        msgContent: FfiMsgContent.packet(redPacketMessageContent),
      );
      Log.info('发送红包消息成功: redPacketId=${redPacketMessageContent.redPacketId}');
      // 根据消息类型创建对应的消息模型

      final jsonObj = jsonDecode(
        newFFiMessage.contentObj!,
      ); // contentObj 是 JSON 字符串
      final contentObj = FfiRedPacketMessageContent.fromJson(jsonObj);

      final sentMessage = ChatMessageRedpacketModel(
        ffiModel: newFFiMessage,
        contentObj: contentObj,
      );

      // 拷贝旧消息列表，替换或插入新消息
      final updatedMessages = List<ChatMessage>.from(inputState.messages);
      final index = updatedMessages.indexWhere(
        (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
      );

      if (index >= 0) {
        // 如果消息已存在（比如重试发送的情况），则替换
        updatedMessages[index] = sentMessage;
        Log.info('✅ 发送消息：替换现有消息，位置: $index');
      } else {
        // 新消息添加到列表末尾（最新消息位置）
        updatedMessages.add(sentMessage);
        Log.info('✅ 发送消息：新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      }
      Log.info('红包消息发送成功');

      // 发出新的输入状态
      emit(
        ChatListState.input(
          conversationId: inputState.conversationId,
          conversationName: inputState.conversationName,
          conversationAvatar: inputState.conversationAvatar,
          conversationMemberCount: inputState.conversationMemberCount,
          totalUnreadCount: inputState.totalUnreadCount,
          messages: updatedMessages,
          isLoadingMore: inputState.isLoadingMore,
          hasReachedEnd: inputState.hasReachedEnd,
          // 发送成功后清除回复状态
          replyToMessage: null,
        ),
      );
    } catch (e, stack) {
      Log.error('发送红包消息失败', error: e, stackTrace: stack);
      // ⚠️ 可以在这里处理失败回退逻辑，例如提示或更新为失败状态的消息
    }
  }

  // 发送图片消息
  Future<void> _onSendImageMessage(
    Emitter<ChatListState> emit,
    FfiImageMessageContent imageMessageContent,
  ) async {
    // 发送转发消息
    await _handleForwardMessages(emit);

    // 类似于发送文本消息的实现，但处理图片
    // 实际开发中需要处理图片上传等逻辑
    final inputState = state.maybeMap(input: (s) => s, orElse: () => null);

    if (inputState == null) {
      Log.info('发送消息被忽略，当前状态不适合发送');
      return;
    }

    try {
      // 发送红包消息
      final newFFiMessage = await chat_api.sendMessage(
        chatType: _chatType!,
        targetId: _targetId!,
        msgContent: FfiMsgContent.image(imageMessageContent),
      );
      Log.info('发送红包消息成功: redPacketId=${imageMessageContent.thumbUrl}');
      // 根据消息类型创建对应的消息模型

      final jsonObj = jsonDecode(
        newFFiMessage.contentObj!,
      ); // contentObj 是 JSON 字符串
      final contentObj = FfiImageMessageContent.fromJson(jsonObj);

      final sentMessage = ChatMessageImageModel(
        ffiModel: newFFiMessage,
        contentObj: contentObj,
      );

      // 拷贝旧消息列表，替换或插入新消息
      final updatedMessages = List<ChatMessage>.from(inputState.messages);
      final index = updatedMessages.indexWhere(
        (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
      );

      if (index >= 0) {
        // 如果消息已存在（比如重试发送的情况），则替换
        updatedMessages[index] = sentMessage;
        Log.info('✅ 发送消息：替换现有消息，位置: $index');
      } else {
        // 新消息添加到列表末尾（最新消息位置）
        updatedMessages.add(sentMessage);
        Log.info('✅ 发送消息：新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      }
      Log.info('红包消息发送成功');

      // 发出新的输入状态
      emit(
        ChatListState.input(
          conversationId: inputState.conversationId,
          conversationName: inputState.conversationName,
          conversationAvatar: inputState.conversationAvatar,
          conversationMemberCount: inputState.conversationMemberCount,
          totalUnreadCount: inputState.totalUnreadCount,
          messages: updatedMessages,
          isLoadingMore: inputState.isLoadingMore,
          hasReachedEnd: inputState.hasReachedEnd,
          // 发送成功后清除回复状态
          replyToMessage: null,
        ),
      );
    } catch (e, stack) {
      Log.error('发送红包消息失败', error: e, stackTrace: stack);
      // ⚠️ 可以在这里处理失败回退逻辑，例如提示或更新为失败状态的消息
    }
  }

  //发送视频消息
  Future<void> _onSendVideoMessage(
    Emitter<ChatListState> emit,
    FfiVideoMessageContent videoMessageContent,
  ) async {
    // 发送转发消息
    await _handleForwardMessages(emit);

    // 类似于发送文本消息的实现，但处理图片
    // 实际开发中需要处理图片上传等逻辑
    final inputState = state.maybeMap(input: (s) => s, orElse: () => null);

    if (inputState == null) {
      Log.info('发送消息被忽略，当前状态不适合发送');
      return;
    }

    try {
      // 发送红包消息
      final newFFiMessage = await chat_api.sendMessage(
        chatType: _chatType!,
        targetId: _targetId!,
        msgContent: FfiMsgContent.video(videoMessageContent),
      );
      Log.info('发送视频消息成功: redPacketId=${videoMessageContent.thumbUrl}');
      // 根据消息类型创建对应的消息模型

      final jsonObj = jsonDecode(
        newFFiMessage.contentObj!,
      ); // contentObj 是 JSON 字符串
      final contentObj = FfiVideoMessageContent.fromJson(jsonObj);

      final sentMessage = ChatMessageVideoModel(
        ffiModel: newFFiMessage,
        contentObj: contentObj,
      );

      // 拷贝旧消息列表，替换或插入新消息
      final updatedMessages = List<ChatMessage>.from(inputState.messages);
      final index = updatedMessages.indexWhere(
        (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
      );

      if (index >= 0) {
        // 如果消息已存在（比如重试发送的情况），则替换
        updatedMessages[index] = sentMessage;
        Log.info('✅ 发送消息：替换现有消息，位置: $index');
      } else {
        // 新消息添加到列表末尾（最新消息位置）
        updatedMessages.add(sentMessage);
        Log.info('✅ 发送消息：新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      }

      // 发出新的输入状态
      emit(
        ChatListState.input(
          conversationId: inputState.conversationId,
          conversationName: inputState.conversationName,
          conversationAvatar: inputState.conversationAvatar,
          conversationMemberCount: inputState.conversationMemberCount,
          totalUnreadCount: inputState.totalUnreadCount,
          messages: updatedMessages,
          isLoadingMore: inputState.isLoadingMore,
          hasReachedEnd: inputState.hasReachedEnd,
          // 发送成功后清除回复状态
          replyToMessage: null,
        ),
      );

      Log.info('视频消息发送成功');
    } catch (e, stack) {
      Log.error('发送红包消息失败', error: e, stackTrace: stack);
      // ⚠️ 可以在这里处理失败回退逻辑，例如提示或更新为失败状态的消息
    }
  }

  //发送文件消息
  Future<void> _onSendFileMessage(
    Emitter<ChatListState> emit,
    FfiFileMessageContent fileMessageContent,
  ) async {
    // 发送转发消息
    await _handleForwardMessages(emit);

    // 类似于发送文本消息的实现，但处理图片 文件消息
    // 实际开发中需要处理图片上传等逻辑 文件上传等逻辑
    final inputState = state.maybeMap(input: (s) => s, orElse: () => null);

    if (inputState == null) {
      Log.info('发送消息被忽略，当前状态不适合发送');
      return;
    }

    try {
      // 发送红包消息
      final newFFiMessage = await chat_api.sendMessage(
        chatType: _chatType!,
        targetId: _targetId!,
        msgContent: FfiMsgContent.file(fileMessageContent),
      );
      Log.info('发送红包消息成功: redPacketId=${fileMessageContent.fileUrl}');
      // 根据消息类型创建对应的消息模型

      final jsonObj = jsonDecode(
        newFFiMessage.contentObj!,
      ); // contentObj 是 JSON 字符串
      final contentObj = FfiFileMessageContent.fromJson(jsonObj);

      final sentMessage = ChatMessageFileModel(
        ffiModel: newFFiMessage,
        contentObj: contentObj,
      );

      // 拷贝旧消息列表，替换或插入新消息
      final updatedMessages = List<ChatMessage>.from(inputState.messages);
      final index = updatedMessages.indexWhere(
        (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
      );

      if (index >= 0) {
        // 如果消息已存在（比如重试发送的情况），则替换
        updatedMessages[index] = sentMessage;
        Log.info('✅ 发送消息：替换现有消息，位置: $index');
      } else {
        // 新消息添加到列表末尾（最新消息位置）
        updatedMessages.add(sentMessage);
        Log.info('✅ 发送消息：新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      }
      Log.info('红包消息发送成功');
    } catch (e, stack) {
      Log.error('发送红包消息失败', error: e, stackTrace: stack);
      // ⚠️ 可以在这里处理失败回退逻辑，例如提示或更新为失败状态的消息
    }
  }

  //发送动态图片消息
  Future<void> _onSendDynamicImageMessage(
    Emitter<ChatListState> emit,
    FfiDynamicImageMessageContent dynamicImageMessageContent,
  ) async {
    // 发送转发消息
    await _handleForwardMessages(emit);

    // 类似于发送文本消息的实现，但处理图片 文件消息
    // 实际开发中需要处理图片上传等逻辑 文件上传等逻辑
    final inputState = state.maybeMap(input: (s) => s, orElse: () => null);

    if (inputState == null) {
      Log.info('发送消息被忽略，当前状态不适合发送');
      return;
    }

    try {
      // 发送红包消息
      final newFFiMessage = await chat_api.sendMessage(
        chatType: _chatType!,
        targetId: _targetId!,
        msgContent: FfiMsgContent.image2(dynamicImageMessageContent), // 动态图片消息
      );
      Log.info('发送红包消息成功: redPacketId=${dynamicImageMessageContent.thumbUrl}');
      // 根据消息类型创建对应的消息模型

      final jsonObj = jsonDecode(
        newFFiMessage.contentObj!,
      ); // contentObj 是 JSON 字符串
      final contentObj = FfiDynamicImageMessageContent.fromJson(jsonObj);

      final sentMessage = ChatMessageDynamicImageModel(
        ffiModel: newFFiMessage,
        contentObj: contentObj,
      );

      // 拷贝旧消息列表，替换或插入新消息
      final updatedMessages = List<ChatMessage>.from(inputState.messages);
      final index = updatedMessages.indexWhere(
        (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
      );

      if (index >= 0) {
        // 如果消息已存在（比如重试发送的情况），则替换
        updatedMessages[index] = sentMessage;
        Log.info('✅ 发送消息：替换现有消息，位置: $index');
      } else {
        // 新消息添加到列表末尾（最新消息位置）
        updatedMessages.add(sentMessage);
        Log.info('✅ 发送消息：新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      }
      Log.info('动态图片消息发送成功');
    } catch (e, stack) {
      Log.error('发送动态图片消息失败', error: e, stackTrace: stack);
      // ⚠️ 可以在这里处理失败回退逻辑，例如提示或更新为失败状态的消息
    }
  }

  //发送dice消息
  Future<void> _onSendDiceMessage(
    Emitter<ChatListState> emit,
    FfiDiceMessageContent diceMessageContent,
  ) async {
    // 发送转发消息
    await _handleForwardMessages(emit);

    // 类似于发送文本消息的实现，但处理图片 文件消息
    // 实际开发中需要处理图片上传等逻辑 文件上传等逻辑
    final inputState = state.maybeMap(input: (s) => s, orElse: () => null);

    if (inputState == null) {
      Log.info('发送消息被忽略，当前状态不适合发送');
      return;
    }

    try {
      // 发送红包消息
      final newFFiMessage = await chat_api.sendMessage(
        chatType: _chatType!,
        targetId: _targetId!,
        msgContent: FfiMsgContent.dice(diceMessageContent), // 动态图片消息
      );
      Log.info(
        '发送骰子消息成功: redPacketId=${diceMessageContent.setImageId}',
      ); // 骰子消息的图片ID
      // 根据消息类型创建对应的消息模型

      final jsonObj = jsonDecode(
        newFFiMessage.contentObj!,
      ); // contentObj 是 JSON 字符串
      final contentObj = FfiDiceMessageContent.fromJson(jsonObj);

      final sentMessage = ChatMessageDiceModel(
        ffiModel: newFFiMessage,
        contentObj: contentObj,
      );

      // 拷贝旧消息列表，替换或插入新消息
      final updatedMessages = List<ChatMessage>.from(inputState.messages);
      final index = updatedMessages.indexWhere(
        (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
      );

      if (index >= 0) {
        // 如果消息已存在（比如重试发送的情况），则替换
        updatedMessages[index] = sentMessage;
        Log.info('✅ 发送消息：替换现有消息，位置: $index');
      } else {
        // 新消息添加到列表末尾（最新消息位置）
        updatedMessages.add(sentMessage);
        Log.info('✅ 发送消息：新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      }
      Log.info('骰子消息发送成功');
    } catch (e, stack) {
      Log.error('发送骰子消息失败', error: e, stackTrace: stack);
      // ⚠️ 可以在这里处理失败回退逻辑，例如提示或更新为失败状态的消息
    }
  }

  //发送音频消息
  Future<void> _onSendAudioMessage(
    Emitter<ChatListState> emit,
    FfiAudioMessageContent audioMessageContent,
  ) async {
    // 发送转发消息
    await _handleForwardMessages(emit);

    // 类似于发送文本消息的实现，但处理图片 文件消息
    // 实际开发中需要处理图片上传等逻辑 文件上传等逻辑
    final inputState = state.maybeMap(input: (s) => s, orElse: () => null);

    if (inputState == null) {
      Log.info('发送消息被忽略，当前状态不适合发送');
      return;
    }

    try {
      // 发送红包消息
      final newFFiMessage = await chat_api.sendMessage(
        chatType: _chatType!,
        targetId: _targetId!,
        msgContent: FfiMsgContent.audio(audioMessageContent), // 动态图片消息
      );
      Log.info('发送音频消息成功: redPacketId=${audioMessageContent.url}'); // 音频消息的音频ID
      // 根据消息类型创建对应的消息模型

      final jsonObj = jsonDecode(
        newFFiMessage.contentObj!,
      ); // contentObj 是 JSON 字符串
      final contentObj = FfiAudioMessageContent.fromJson(jsonObj);

      final sentMessage = ChatMessageAudioModel(
        ffiModel: newFFiMessage,
        contentObj: contentObj,
      );

      // 拷贝旧消息列表，替换或插入新消息
      final updatedMessages = List<ChatMessage>.from(inputState.messages);
      final index = updatedMessages.indexWhere(
        (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
      );

      if (index >= 0) {
        // 如果消息已存在（比如重试发送的情况），则替换
        updatedMessages[index] = sentMessage;
        Log.info('✅ 发送消息：替换现有消息，位置: $index');
      } else {
        // 新消息添加到列表末尾（最新消息位置）
        updatedMessages.add(sentMessage);
        Log.info('✅ 发送消息：新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      }
      Log.info('音频消息发送成功');
    } catch (e, stack) {
      Log.error('发送音频消息失败', error: e, stackTrace: stack);
      // ⚠️ 可以在这里处理失败回退逻辑，例如提示或更新为失败状态的消息
    }
  }

  //发送音频消息
  Future<void> _onSendGameMessage(
    Emitter<ChatListState> emit,
    FfiAnmatedMessageContent gameMessageContent,
  ) async {
    // 发送转发消息
    await _handleForwardMessages(emit);

    // 类似于发送文本消息的实现，但处理图片 文件消息
    // 实际开发中需要处理图片上传等逻辑 文件上传等逻辑
    final inputState = state.maybeMap(input: (s) => s, orElse: () => null);

    if (inputState == null) {
      Log.info('发送消息被忽略，当前状态不适合发送');
      return;
    }

    try {
      // 发送红包消息
      final newFFiMessage = await chat_api.sendMessage(
        chatType: _chatType!,
        targetId: _targetId!,
        msgContent: FfiMsgContent.game(gameMessageContent), // 动态图片消息
      );
      Log.info(
        '发送游戏消息成功: redPacketId=${gameMessageContent.gameId}',
      ); //  游戏消息的ID
      // 根据消息类型创建对应的消息模型

      final jsonObj = jsonDecode(
        newFFiMessage.contentObj!,
      ); // contentObj 是 JSON 字符串
      final contentObj = FfiAnmatedMessageContent.fromJson(jsonObj);

      final sentMessage = ChatMessageGameModel(
        ffiModel: newFFiMessage,
        contentObj: contentObj,
      );

      // 拷贝旧消息列表，替换或插入新消息
      final updatedMessages = List<ChatMessage>.from(inputState.messages);
      final index = updatedMessages.indexWhere(
        (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
      );

      if (index >= 0) {
        // 如果消息已存在（比如重试发送的情况），则替换
        updatedMessages[index] = sentMessage;
        Log.info('✅ 发送消息：替换现有消息，位置: $index');
      } else {
        // 新消息添加到列表末尾（最新消息位置）
        updatedMessages.add(sentMessage);
        Log.info('✅ 发送消息：新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      }
      Log.info('音频消息发送成功');
    } catch (e, stack) {
      Log.error('发送音频消息失败', error: e, stackTrace: stack);
      // ⚠️ 可以在这里处理失败回退逻辑，例如提示或更新为失败状态的消息
    }
  }

  //发送转账消息
  Future<void> _onSendTransferMessage(
    Emitter<ChatListState> emit,
    FfiChatTransferMessageContent transferMessageContent,
  ) async {
    // 发送转发消息
    await _handleForwardMessages(emit);

    // 类似于发送文本消息的实现，但处理图片 文件消息
    // 实际开发中需要处理图片上传等逻辑 文件上传等逻辑
    final inputState = state.maybeMap(input: (s) => s, orElse: () => null);

    if (inputState == null) {
      Log.info('发送消息被忽略，当前状态不适合发送');
      return;
    }

    try {
      // 发送红包消息
      final newFFiMessage = await chat_api.sendMessage(
        chatType: _chatType!,
        targetId: _targetId!,
        msgContent: FfiMsgContent.transfer(transferMessageContent), // 动态图片消息
      );
      Log.info(
        '发送转账消息成功: redPacketId=${transferMessageContent.transferNo}',
      ); // 转账消息的转账ID
      // 根据消息类型创建对应的消息模型

      final jsonObj = jsonDecode(
        newFFiMessage.contentObj!,
      ); // contentObj 是 JSON 字符串
      final contentObj = FfiChatTransferMessageContent.fromJson(jsonObj);

      final sentMessage = ChatMessageTransferModel(
        ffiModel: newFFiMessage,
        contentObj: contentObj,
      );

      // 拷贝旧消息列表，替换或插入新消息
      final updatedMessages = List<ChatMessage>.from(inputState.messages);
      final index = updatedMessages.indexWhere(
        (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
      );

      if (index >= 0) {
        // 如果消息已存在（比如重试发送的情况），则替换
        updatedMessages[index] = sentMessage;
        Log.info('✅ 发送消息：替换现有消息，位置: $index');
      } else {
        // 新消息添加到列表末尾（最新消息位置）
        updatedMessages.add(sentMessage);
        Log.info('✅ 发送消息：新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      }
      Log.info('转账消息发送成功');
    } catch (e, stack) {
      Log.error('发送转账消息失败', error: e, stackTrace: stack);
      // ⚠️ 可以在这里处理失败回退逻辑，例如提示或更新为失败状态的消息
    }
  }

  //发送系统消息
  Future<void> _onSendSystemMessage(
    Emitter<ChatListState> emit,
    FfiSystemMessageContent systemMessageContent,
  ) async {
    // 发送转发消息
    await _handleForwardMessages(emit);

    // 类似于发送文本消息的实现，但处理图片 文件消息 系统消息
    // 实际开发中需要处理图片上传等逻辑 文件上传等逻辑 系统消息
    final inputState = state.maybeMap(input: (s) => s, orElse: () => null);

    if (inputState == null) {
      Log.info('发送消息被忽略，当前状态不适合发送');
      return;
    }

    try {
      // 发送系统消息
      final newFFiMessage = await chat_api.sendMessage(
        chatType: _chatType!,
        targetId: _targetId!,
        msgContent: FfiMsgContent.system(systemMessageContent), // 动态图片消息 系统消息
      );
      Log.info(
        '发送系统消息成功: redPacketId=${systemMessageContent.content}',
      ); // 转账消息的转账ID
      // 根据消息类型创建对应的消息模型

      final jsonObj = jsonDecode(
        newFFiMessage.contentObj!,
      ); // contentObj 是 JSON 字符串
      final contentObj = FfiSystemMessageContent.fromJson(jsonObj);

      final sentMessage = ChatMessageSystemModel(
        ffiModel: newFFiMessage,
        contentObj: contentObj,
      );

      // 拷贝旧消息列表，替换或插入新消息 系统消息
      final updatedMessages = List<ChatMessage>.from(inputState.messages);
      final index = updatedMessages.indexWhere(
        (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
      );

      if (index >= 0) {
        // 如果消息已存在（比如重试发送的情况），则替换
        updatedMessages[index] = sentMessage;
        Log.info('✅ 发送消息：替换现有消息，位置: $index');
      } else {
        // 新消息添加到列表末尾（最新消息位置）
        updatedMessages.add(sentMessage);
        Log.info('✅ 发送消息：新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      }
      Log.info('系统消息发送成功');
    } catch (e, stack) {
      Log.error('发送系统消息失败', error: e, stackTrace: stack);
      // ⚠️ 可以在这里处理失败回退逻辑，例如提示或更新为失败状态的消息
    }
  }

  // 接收新消息
  void _onMessageReceived(Emitter<ChatListState> emit, ChatMessage message) {
    Log.info('收到新消息: ${message.id}');

    state.maybeMap(
      success: (successState) {
        // 新消息添加到现有消息列表的末尾（最新消息位置）
        final updatedMessages = [...successState.messages, message];
        emit(successState.copyWith(messages: updatedMessages));
        Log.info('✅ 成功状态：单个新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      },
      input: (inputState) {
        // 新消息添加到现有消息列表的末尾（最新消息位置）
        final updatedMessages = [...inputState.messages, message];
        emit(inputState.copyWith(messages: updatedMessages));
        Log.info('✅ 输入状态：单个新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      },
      sending: (sendingState) {
        // 新消息添加到现有消息列表的末尾（最新消息位置）
        final updatedMessages = [...sendingState.messages, message];
        emit(sendingState.copyWith(messages: updatedMessages));
        Log.info('✅ 发送状态：单个新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      },
      orElse: () {
        // 其他状态不处理
        Log.info('接收消息被忽略，当前状态不适合处理新消息');
      },
    );
  }

  // 更新消息状态
  void _onMessageStatusUpdated(
    Emitter<ChatListState> emit,
    String flag,
    FfiMsgStatus status,
  ) {
    Log.info('更新消息状态: flag=$flag, status=$status');

    // 在各状态下更新消息的状态（如已读、已送达等）
    state.maybeMap(
      success: (successState) {
        final updatedMessages = _updateMessageStatus(
          successState.messages,
          flag,
          status,
        );
        emit(successState.copyWith(messages: updatedMessages));
      },
      input: (inputState) {
        final updatedMessages = _updateMessageStatus(
          inputState.messages,
          flag,
          status,
        );
        emit(inputState.copyWith(messages: updatedMessages));
      },
      sending: (sendingState) {
        final updatedMessages = _updateMessageStatus(
          sendingState.messages,
          flag,
          status,
        );
        emit(sendingState.copyWith(messages: updatedMessages));
      },
      orElse: () {
        // 其他状态不处理
        Log.info('更新消息状态被忽略，当前状态不适合处理状态更新');
      },
    );
  }

  // 辅助方法：更新消息状态
  List<ChatMessage> _updateMessageStatus(
    List<ChatMessage> messages,
    String flag,
    FfiMsgStatus status,
  ) {
    return messages.map((message) {
      if (message.ffiModel.common.flag == flag) {
        return message.copyWith(
          ffiModel: message.ffiModel.copyWith(status: status),
        );
      }
      return message;
    }).toList();
  }

  // 重试发送失败的消息
  Future<void> _onRetryMessage(Emitter<ChatListState> emit, int flag) async {
    // 根据当前状态找到失败的消息并重试发送
    state.maybeMap(
      input: (inputState) async {
        final messages = inputState.messages;
        final messageIndex = messages.indexWhere(
          (msg) => msg.ffiModel.common.flag == flag,
        );
        if (messageIndex < 0) {
          Log.info('重试消息失败: 未找到消息 ID=$flag');
          return;
        }

        final failedMessage = messages[messageIndex];
        if (failedMessage.status != FfiMsgStatus.failed) {
          Log.info(
            '重试消息失败: 消息不处于失败状态 ID=$flag, status=${failedMessage.status}',
          );
          return;
        }

        Log.info('重试发送消息: ID=$flag');

        // 更新为发送中状态
        final updatingMessage = failedMessage.copyWith(
          ffiModel: failedMessage.ffiModel.copyWith(
            status: FfiMsgStatus.sending,
          ),
        );
        final updatedMessages = List<ChatMessage>.from(messages);
        updatedMessages[messageIndex] = updatingMessage;

        // 更新状态为发送中
        emit(
          ChatListState.sending(
            conversationId: inputState.conversationId,
            conversationName: inputState.conversationName,
            conversationAvatar: inputState.conversationAvatar,
            conversationMemberCount: inputState.conversationMemberCount,
            totalUnreadCount: inputState.totalUnreadCount,
            messages: updatedMessages,
            inputText: inputState.inputText,
            pendingMessage: updatingMessage,
            isLoadingMore: inputState.isLoadingMore,
            hasReachedEnd: inputState.hasReachedEnd,
          ),
        );

        try {
          // 模拟发送消息延迟
          await Future.delayed(const Duration(seconds: 1));

          // 更新消息状态为已发送
          final sentMessage = updatingMessage.copyWith(
            ffiModel: updatingMessage.ffiModel.copyWith(
              status: FfiMsgStatus.sent,
            ),
          );
          final sentMessages = List<ChatMessage>.from(updatedMessages);
          sentMessages[messageIndex] = sentMessage;

          // 更新为输入状态
          emit(
            ChatListState.input(
              conversationId: inputState.conversationId,
              conversationName: inputState.conversationName,
              conversationAvatar: inputState.conversationAvatar,
              conversationMemberCount: inputState.conversationMemberCount,
              totalUnreadCount: inputState.totalUnreadCount,
              messages: sentMessages,
              inputText: inputState.inputText,
              isInputValid: inputState.isInputValid,
              isLoadingMore: inputState.isLoadingMore,
              hasReachedEnd: inputState.hasReachedEnd,
            ),
          );

          Log.info('重试消息发送成功: ID=$flag');
        } catch (e) {
          Log.error('重试发送消息失败', error: e);

          // 更新消息状态为发送失败
          final failedRetryMessage = updatingMessage.copyWith(
            ffiModel: updatingMessage.ffiModel.copyWith(
              status: FfiMsgStatus.failed,
            ),
          );
          final failedMessages = List<ChatMessage>.from(updatedMessages);
          failedMessages[messageIndex] = failedRetryMessage;

          // 更新为输入状态
          emit(
            ChatListState.input(
              conversationId: inputState.conversationId,
              conversationName: inputState.conversationName,
              conversationAvatar: inputState.conversationAvatar,
              conversationMemberCount: inputState.conversationMemberCount,
              totalUnreadCount: inputState.totalUnreadCount,
              messages: failedMessages,
              inputText: inputState.inputText,
              isInputValid: inputState.isInputValid,
              isLoadingMore: inputState.isLoadingMore,
              hasReachedEnd: inputState.hasReachedEnd,
            ),
          );
        }
      },
      orElse: () {
        // 其他状态不处理
        Log.info('重试消息被忽略，当前状态不适合重试');
      },
    );
  }

  // 删除消息
  void _onDeleteMessage(Emitter<ChatListState> emit, int flag) {
    Log.info('删除消息: ID=$flag');

    // 根据当前状态删除指定的消息
    state.maybeMap(
      success: (successState) {
        final updatedMessages =
            successState.messages
                .where((msg) => msg.ffiModel.common.flag != flag)
                .toList();
        emit(successState.copyWith(messages: updatedMessages));
      },
      input: (inputState) {
        final updatedMessages =
            inputState.messages
                .where((msg) => msg.ffiModel.common.flag != flag)
                .toList();
        emit(inputState.copyWith(messages: updatedMessages));
      },
      sending: (sendingState) {
        final updatedMessages =
            sendingState.messages
                .where((msg) => msg.ffiModel.common.flag != flag)
                .toList();
        emit(sendingState.copyWith(messages: updatedMessages));
      },
      orElse: () {
        // 其他状态不处理
        Log.info('删除消息被忽略，当前状态不适合删除消息');
      },
    );
  }

  // 批量接收新消息
  void _onMultipleMessagesReceived(
    Emitter<ChatListState> emit,
    List<ChatMessage> messages,
  ) {
    if (messages.isEmpty) return;

    Log.info('批量接收 ${messages.length} 条新消息');

    // 按时间戳正序排序，确保消息按时间顺序显示（最旧的在前）
    final sortedMessages = List<ChatMessage>.from(messages)..sort(
      (a, b) =>
          a.ffiModel.common.sendTime.compareTo(b.ffiModel.common.sendTime),
    );

    state.maybeMap(
      success: (successState) {
        // 添加去重逻辑：过滤掉已存在的消息
        final existingFlags =
            successState.messages
                .map((msg) => msg.ffiModel.common.flag)
                .toSet();
        final newMessages =
            sortedMessages
                .where(
                  (msg) => !existingFlags.contains(msg.ffiModel.common.flag),
                )
                .toList();

        if (newMessages.isEmpty) {
          Log.info('所有接收的消息都已存在，跳过更新');
          return;
        }

        // 新消息添加到现有消息列表的末尾（最新消息位置）
        final updatedMessages = [...successState.messages, ...newMessages];
        emit(successState.copyWith(messages: updatedMessages));
        Log.info(
          '✅ 成功状态：新消息已添加到列表末尾，新增${newMessages.length}条，总消息数: ${updatedMessages.length}',
        );
      },
      input: (inputState) {
        // 添加去重逻辑：过滤掉已存在的消息
        final existingFlags =
            inputState.messages.map((msg) => msg.ffiModel.common.flag).toSet();
        final newMessages =
            sortedMessages
                .where(
                  (msg) => !existingFlags.contains(msg.ffiModel.common.flag),
                )
                .toList();

        if (newMessages.isEmpty) {
          Log.info('所有接收的消息都已存在，跳过更新');
          return;
        }

        // 新消息添加到现有消息列表的末尾（最新消息位置）
        final updatedMessages = [...inputState.messages, ...newMessages];
        emit(inputState.copyWith(messages: updatedMessages));
        Log.info(
          '✅ 输入状态：新消息已添加到列表末尾，新增${newMessages.length}条，总消息数: ${updatedMessages.length}',
        );
      },
      sending: (sendingState) {
        // 添加去重逻辑：过滤掉已存在的消息
        final existingFlags =
            sendingState.messages
                .map((msg) => msg.ffiModel.common.flag)
                .toSet();
        final newMessages =
            sortedMessages
                .where(
                  (msg) => !existingFlags.contains(msg.ffiModel.common.flag),
                )
                .toList();

        if (newMessages.isEmpty) {
          Log.info('所有接收的消息都已存在，跳过更新');
          return;
        }

        // 新消息添加到现有消息列表的末尾（最新消息位置）
        final updatedMessages = [...sendingState.messages, ...newMessages];
        emit(sendingState.copyWith(messages: updatedMessages));
        Log.info(
          '✅ 发送状态：新消息已添加到列表末尾，新增${newMessages.length}条，总消息数: ${updatedMessages.length}',
        );
      },
      orElse: () {
        // 其他状态不处理
        Log.info('批量接收消息被忽略，当前状态不适合处理新消息');
      },
    );
  }

  // 会话详情用户信息更新
  void _onUserInfoUpdated(Emitter<ChatListState> emit, FfiUser user) {
    Log.info('用户信息更新: ${user.nickName}');

    // 通用更新消息的函数
    List<ChatMessage> updateMessages(List<ChatMessage> messages) {
      return messages.map((msg) {
        if (msg.ffiModel.senderUser.senderUid == user.uid && !msg.isMe) {
          return msg.copyWith(
            ffiModel: msg.ffiModel.copyWith(
              senderUser: FfiMessageUser(
                senderUid: user.uid,
                senderNickName: user.nickName ?? msg.senderName,
                senderAvatar: user.icon ?? msg.senderAvatar,
                remarkName: "",
              ),
            ),
          );
        }
        return msg;
      }).toList();
    }

    // 根据当前状态更新
    state.maybeMap(
      success:
          (state) =>
              emit(state.copyWith(messages: updateMessages(state.messages))),
      input:
          (state) =>
              emit(state.copyWith(messages: updateMessages(state.messages))),
      sending:
          (state) =>
              emit(state.copyWith(messages: updateMessages(state.messages))),
      orElse: () {},
    );
  }

  @override
  Future<void> close() {
    _isClosed = true;
    Log.info('ChatListBloc 关闭');
    if (_hasSubscribed) {
      _messageSubscription?.cancel();
      // 通知服务取消订阅
      _chatListService.unsubscribeMessages();
      _hasSubscribed = false;
    }
    _chatType = null;
    _targetId = null;

    // 清理消息缓存
    _messageCache.clear();
    Log.info('ChatListBloc 消息缓存已清理，缓存数量: ${_messageCache.length}');

    return super.close();
  }

  // 开始回复消息
  void _onStartReply(Emitter<ChatListState> emit, ChatMessage message) {
    Log.info('开始回复消息: ${message.ffiModel.common.msgId}');

    state.maybeMap(
      success: (successState) {
        emit(successState.copyWith(replyToMessage: message));
      },
      input: (inputState) {
        emit(inputState.copyWith(replyToMessage: message));
      },
      sending: (sendingState) {
        emit(sendingState.copyWith(replyToMessage: message));
      },
      orElse: () {
        Log.info('开始回复被忽略，当前状态不适合回复');
      },
    );
  }

  // 取消回复
  void _onCancelReply(Emitter<ChatListState> emit) {
    Log.info('取消回复消息');

    state.maybeMap(
      success: (successState) {
        emit(successState.copyWith(replyToMessage: null));
      },
      input: (inputState) {
        emit(inputState.copyWith(replyToMessage: null));
      },
      sending: (sendingState) {
        emit(sendingState.copyWith(replyToMessage: null));
      },
      orElse: () {
        Log.info('取消回复被忽略，当前状态不适合取消回复');
      },
    );
  }

  // 发送回复消息
  Future<void> _onSendReplyMessage(Emitter<ChatListState> emit) async {
    Log.info('发送回复消息');

    // 复用现有的发送文本消息逻辑
    await _onSendTextMessage(emit);
  }

  /// 构建回复引用对象
  FfiReferenceObj? _buildRefObj(ChatMessage? replyMessage) {
    if (replyMessage == null) return null;

    return FfiReferenceObj(
      msgId: replyMessage.ffiModel.common.msgId,
      content: _getMessageContentForRef(replyMessage),
      msgType: replyMessage.ffiModel.common.msgType,
      uid: replyMessage.ffiModel.senderUser.senderUid,
      nickname: replyMessage.ffiModel.senderUser.senderNickName,
    );
  }

  /// 获取消息内容用于引用显示
  String _getMessageContentForRef(ChatMessage message) {
    if (message is ChatMessageTextModel) {
      return message.contentObj.text;
    } else if (message is ChatMessageImageModel) {
      return "[图片]";
    } else if (message is ChatMessageVideoModel) {
      return "[视频]";
    } else if (message is ChatMessageAudioModel) {
      return "[语音]";
    } else if (message is ChatMessageFileModel) {
      return "[文件]";
    } else if (message is ChatMessageNamecardModel) {
      return "[名片]";
    } else if (message is ChatMessageRedpacketModel) {
      return "[红包]";
    } else if (message is ChatMessageTransferModel) {
      return "[转账]";
    } else if (message is ChatMessageDiceModel) {
      return "[骰子]";
    } else {
      return "[未知消息]";
    }
  }

  // 清除转发消息
  void _onClearForwardMessages(Emitter<ChatListState> emit) {
    Log.info('清除转发消息数据');
    _messagesToForward = null;
  }

  /// 优化的统一发送消息方法
  /// 根据消息类型自动处理发送逻辑，避免代码重复
  Future<void> _sendMessageOptimized<T extends Object>(
    Emitter<ChatListState> emit,
    T messageContent,
    FfiMsgContent Function(T) contentBuilder,
    ChatMessage Function(FfiMessageModel, T) messageModelBuilder,
    String messageTypeName, {
    bool isForward = false,
  }) async {
    final inputState = state.maybeMap(input: (s) => s, orElse: () => null);

    if (inputState == null) {
      Log.info('发送消息被忽略，当前状态不适合发送');
      return;
    }

    try {
      // 发送消息
      final newFFiMessage = await chat_api.sendMessage(
        chatType: _chatType!,
        targetId: _targetId!,
        msgContent: contentBuilder(messageContent),
        refObj: !isForward ? _buildRefObj(inputState.replyToMessage) : null,
      );

      Log.info('发送${messageTypeName}消息成功');

      // 创建消息模型
      final sentMessage = messageModelBuilder(newFFiMessage, messageContent);

      // 更新消息列表
      final updatedMessages = List<ChatMessage>.from(inputState.messages);
      final index = updatedMessages.indexWhere(
        (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
      );

      if (index >= 0) {
        // 如果消息已存在（比如重试发送的情况），则替换
        updatedMessages[index] = sentMessage;
        Log.info('✅ 发送消息：替换现有消息，位置: $index');
      } else {
        // 新消息添加到列表末尾（最新消息位置）
        updatedMessages.add(sentMessage);
        Log.info('✅ 发送消息：新消息已添加到列表末尾，总消息数: ${updatedMessages.length}');
      }

      if (!isForward) {
        // 发出新的输入状态
        emit(
          ChatListState.input(
            conversationId: inputState.conversationId,
            conversationName: inputState.conversationName,
            conversationAvatar: inputState.conversationAvatar,
            conversationMemberCount: inputState.conversationMemberCount,
            totalUnreadCount: inputState.totalUnreadCount,
            messages: updatedMessages,
            isLoadingMore: inputState.isLoadingMore,
            hasReachedEnd: inputState.hasReachedEnd,
            // 发送成功后清除回复状态
            replyToMessage: null,
          ),
        );
      }

      Log.info('${messageTypeName}消息发送成功');
    } catch (e, stack) {
      Log.error('发送${messageTypeName}消息失败', error: e, stackTrace: stack);
      // ⚠️ 可以在这里处理失败回退逻辑，例如提示或更新为失败状态的消息
    }
  }

  Future<void> _onSendTextMessageOptimized(
    Emitter<ChatListState> emit,
    FfiTextMessageContent textMessageContent, {
    bool isForward = false,
  }) async {
    await _sendMessageOptimized(
      emit,
      textMessageContent,
      (content) => FfiMsgContent.text(content),
      (ffiModel, content) {
        final jsonObj = jsonDecode(ffiModel.contentObj!);
        final contentObj = FfiImageMessageContent.fromJson(jsonObj);
        return ChatMessageImageModel(
          ffiModel: ffiModel,
          contentObj: contentObj,
        );
      },
      '文本',
    );
  }

  /// 优化的发送图片消息方法
  Future<void> _onSendImageMessageOptimized(
    Emitter<ChatListState> emit,
    FfiImageMessageContent imageMessageContent, {
    bool isForward = false,
  }) async {
    await _sendMessageOptimized(
      emit,
      imageMessageContent,
      (content) => FfiMsgContent.image(content),
      (ffiModel, content) {
        final jsonObj = jsonDecode(ffiModel.contentObj!);
        final contentObj = FfiImageMessageContent.fromJson(jsonObj);
        return ChatMessageImageModel(
          ffiModel: ffiModel,
          contentObj: contentObj,
        );
      },
      '图片',
    );
  }

  /// 优化的发送名片消息方法
  Future<void> _onSendNameCardMessageOptimized(
    Emitter<ChatListState> emit,
    FfiNameCardMessageContent nameCardMessageContent, {
    bool isForward = false,
  }) async {
    await _sendMessageOptimized(
      emit,
      nameCardMessageContent,
      (content) => FfiMsgContent.card(content),
      (ffiModel, content) {
        final jsonObj = jsonDecode(ffiModel.contentObj!);
        final contentObj = FfiNameCardMessageContent.fromJson(jsonObj);
        return ChatMessageNamecardModel(
          ffiModel: ffiModel,
          contentObj: contentObj,
        );
      },
      '名片',
    );
  }

  /// 优化的发送红包消息方法
  Future<void> _onSendRedPacketMessageOptimized(
    Emitter<ChatListState> emit,
    FfiRedPacketMessageContent redPacketMessageContent, {
    bool isForward = false,
  }) async {
    await _sendMessageOptimized(
      emit,
      redPacketMessageContent,
      (content) => FfiMsgContent.packet(content),
      (ffiModel, content) {
        final jsonObj = jsonDecode(ffiModel.contentObj!);
        final contentObj = FfiRedPacketMessageContent.fromJson(jsonObj);
        return ChatMessageRedpacketModel(
          ffiModel: ffiModel,
          contentObj: contentObj,
        );
      },
      '红包',
    );
  }

  /// 优化的发送视频消息方法
  Future<void> _onSendVideoMessageOptimized(
    Emitter<ChatListState> emit,
    FfiVideoMessageContent videoMessageContent, {
    bool isForward = false,
  }) async {
    await _sendMessageOptimized(
      emit,
      videoMessageContent,
      (content) => FfiMsgContent.video(content),
      (ffiModel, content) {
        final jsonObj = jsonDecode(ffiModel.contentObj!);
        final contentObj = FfiVideoMessageContent.fromJson(jsonObj);
        return ChatMessageVideoModel(
          ffiModel: ffiModel,
          contentObj: contentObj,
        );
      },
      '视频',
    );
  }

  /// 优化的发送文件消息方法
  Future<void> _onSendFileMessageOptimized(
    Emitter<ChatListState> emit,
    FfiFileMessageContent fileMessageContent, {
    bool isForward = false,
  }) async {
    await _sendMessageOptimized(
      emit,
      fileMessageContent,
      (content) => FfiMsgContent.file(content),
      (ffiModel, content) {
        final jsonObj = jsonDecode(ffiModel.contentObj!);
        final contentObj = FfiFileMessageContent.fromJson(jsonObj);
        return ChatMessageFileModel(ffiModel: ffiModel, contentObj: contentObj);
      },
      '文件',
    );
  }

  /// 优化的发送动态图片消息方法
  Future<void> _onSendDynamicImageMessageOptimized(
    Emitter<ChatListState> emit,
    FfiDynamicImageMessageContent dynamicImageMessageContent, {
    bool isForward = false,
  }) async {
    await _sendMessageOptimized(
      emit,
      dynamicImageMessageContent,
      (content) => FfiMsgContent.image2(content),
      (ffiModel, content) {
        final jsonObj = jsonDecode(ffiModel.contentObj!);
        final contentObj = FfiDynamicImageMessageContent.fromJson(jsonObj);
        return ChatMessageDynamicImageModel(
          ffiModel: ffiModel,
          contentObj: contentObj,
        );
      },
      '动态图片',
    );
  }

  /// 优化的发送骰子消息方法
  Future<void> _onSendDiceMessageOptimized(
    Emitter<ChatListState> emit,
    FfiDiceMessageContent diceMessageContent, {
    bool isForward = false,
  }) async {
    await _sendMessageOptimized(
      emit,
      diceMessageContent,
      (content) => FfiMsgContent.dice(content),
      (ffiModel, content) {
        final jsonObj = jsonDecode(ffiModel.contentObj!);
        final contentObj = FfiDiceMessageContent.fromJson(jsonObj);
        return ChatMessageDiceModel(ffiModel: ffiModel, contentObj: contentObj);
      },
      '骰子',
    );
  }

  /// 优化的发送音频消息方法
  Future<void> _onSendAudioMessageOptimized(
    Emitter<ChatListState> emit,
    FfiAudioMessageContent audioMessageContent, {
    bool isForward = false,
  }) async {
    await _sendMessageOptimized(
      emit,
      audioMessageContent,
      (content) => FfiMsgContent.audio(content),
      (ffiModel, content) {
        final jsonObj = jsonDecode(ffiModel.contentObj!);
        final contentObj = FfiAudioMessageContent.fromJson(jsonObj);
        return ChatMessageAudioModel(
          ffiModel: ffiModel,
          contentObj: contentObj,
        );
      },
      '音频',
    );
  }

  /// 优化的发送游戏消息方法
  Future<void> _onSendGameMessageOptimized(
    Emitter<ChatListState> emit,
    FfiAnmatedMessageContent gameMessageContent, {
    bool isForward = false,
  }) async {
    await _sendMessageOptimized(
      emit,
      gameMessageContent,
      (content) => FfiMsgContent.game(content),
      (ffiModel, content) {
        final jsonObj = jsonDecode(ffiModel.contentObj!);
        final contentObj = FfiAnmatedMessageContent.fromJson(jsonObj);
        return ChatMessageGameModel(ffiModel: ffiModel, contentObj: contentObj);
      },
      '游戏',
    );
  }

  /// 优化的发送转账消息方法
  Future<void> _onSendTransferMessageOptimized(
    Emitter<ChatListState> emit,
    FfiChatTransferMessageContent transferMessageContent, {
    bool isForward = false,
  }) async {
    await _sendMessageOptimized(
      emit,
      transferMessageContent,
      (content) => FfiMsgContent.transfer(content),
      (ffiModel, content) {
        final jsonObj = jsonDecode(ffiModel.contentObj!);
        final contentObj = FfiChatTransferMessageContent.fromJson(jsonObj);
        return ChatMessageTransferModel(
          ffiModel: ffiModel,
          contentObj: contentObj,
        );
      },
      '转账',
    );
  }

  /// 优化的发送系统消息方法
  Future<void> _onSendSystemMessageOptimized(
    Emitter<ChatListState> emit,
    FfiSystemMessageContent systemMessageContent, {
    bool isForward = false,
  }) async {
    await _sendMessageOptimized(
      emit,
      systemMessageContent,
      (content) => FfiMsgContent.system(content),
      (ffiModel, content) {
        final jsonObj = jsonDecode(ffiModel.contentObj!);
        final contentObj = FfiSystemMessageContent.fromJson(jsonObj);
        return ChatMessageSystemModel(
          ffiModel: ffiModel,
          contentObj: contentObj,
        );
      },
      '系统',
    );
  }

  /// 优化的统一发送消息方法
  Future<void> sendAnyMessageOptimized(
    Emitter<ChatListState> emit,
    dynamic messageContent, {
    bool isForward = false,
  }) async {
    if (messageContent is FfiTextMessageContent) {
      await _onSendTextMessageOptimized(
        emit,
        messageContent,
        isForward: isForward,
      );
    } else if (messageContent is FfiImageMessageContent) {
      await _onSendImageMessageOptimized(
        emit,
        messageContent,
        isForward: isForward,
      );
    } else if (messageContent is FfiNameCardMessageContent) {
      await _onSendNameCardMessageOptimized(
        emit,
        messageContent,
        isForward: isForward,
      );
    } else if (messageContent is FfiRedPacketMessageContent) {
      await _onSendRedPacketMessageOptimized(
        emit,
        messageContent,
        isForward: isForward,
      );
    } else if (messageContent is FfiVideoMessageContent) {
      await _onSendVideoMessageOptimized(
        emit,
        messageContent,
        isForward: isForward,
      );
    } else if (messageContent is FfiAudioMessageContent) {
      await _onSendAudioMessageOptimized(
        emit,
        messageContent,
        isForward: isForward,
      );
    } else if (messageContent is FfiDiceMessageContent) {
      await _onSendDiceMessageOptimized(
        emit,
        messageContent,
        isForward: isForward,
      );
    } else if (messageContent is FfiDynamicImageMessageContent) {
      await _onSendDynamicImageMessageOptimized(
        emit,
        messageContent,
        isForward: isForward,
      );
    } else if (messageContent is FfiFileMessageContent) {
      await _onSendFileMessageOptimized(
        emit,
        messageContent,
        isForward: isForward,
      );
    } else if (messageContent is FfiAnmatedMessageContent) {
      await _onSendGameMessageOptimized(
        emit,
        messageContent,
        isForward: isForward,
      );
    } else if (messageContent is FfiChatTransferMessageContent) {
      await _onSendTransferMessageOptimized(
        emit,
        messageContent,
        isForward: isForward,
      );
    } else if (messageContent is FfiSystemMessageContent) {
      await _onSendSystemMessageOptimized(
        emit,
        messageContent,
        isForward: isForward,
      );
    } else {
      Log.error('不支持的消息类型: ${messageContent.runtimeType}');
    }
  }
}
