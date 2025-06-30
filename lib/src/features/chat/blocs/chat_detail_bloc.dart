import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openchat_client/src/rust/api/model/user.dart';
import '../models/chat_message_converter.dart';
import 'package:openchat_client/src/rust/api/chat_api.dart' as chat_api;
import 'package:openchat_client/src/rust/api/user_api.dart' as user_api;
import 'package:openchat_client/src/rust/api/group_api.dart' as group_api;
import '../models/chat_message.dart';
import '../../../core/utils/log.dart';
import 'chat_detail_event.dart';
import 'chat_detail_state.dart';
import '../services/chat_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../common/ffi.dart';

part '../../../../generated/src/features/chat/blocs/chat_detail_bloc.g.dart';


@riverpod
ChatDetailBloc chatDetailBloc(Ref ref) {
  final chatService = ref.read(chatServiceProvider);
  final bloc = ChatDetailBloc(chatService: chatService);

  // 确保在dispose时正确清理资源
  ref.onDispose(() {
    Log.info('ChatDetailBloc Provider 销毁');
    bloc.close();
  });

  return bloc;
}

class ChatDetailBloc extends Bloc<ChatDetailEvent, ChatDetailState> {
  final ChatService _chatService;
  StreamSubscription? _messageSubscription;
  bool _hasSubscribed = false;
  bool _isClosed = false;
  FfiChatType? _chatType;
  int? _targetId;

  ChatDetailBloc({required ChatService chatService})
    : _chatService = chatService,
      super(const ChatDetailState.initial()) {
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
    on<ChatDetailEvent>((event, emit) async {
      // 处理异步操作
      await event.maybeMap(
        initialized: (e) async => await _onInitialized(emit, e.chatType, e.targetId),
        loadMoreMessages: (e) async => await _onLoadMoreMessages(emit),
        sendTextMessage: (e) async => await _onSendTextMessage(emit),
        sendImageMessage:
            (e) async => await _onSendImageMessage(emit, e.imagePath),
        retryMessage: (e) async => await _onRetryMessage(emit, e.messageId),
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
        orElse: () {},
      );
    });
  }

  void _setupMessageListener() {
    if (_isClosed || _hasSubscribed) return;

    Log.info('ChatDetailBloc 设置消息监听');
    _messageSubscription = _chatService.listenForMessages().listen((
      chat_api.Rust2ClientMessagePayload message,
    ) async {
      if (_isClosed) return;

      final payload = message.payload;
      final messageType = message.messageType;

      if (messageType == chat_api.Rust2ClientMessageType.conversationDetailUpdate) {
        Log.info('chat_api.Rust2ClientMessageType.conversationDetailUpdate');
        // 解析会话详情更新消息
        List<dynamic> jsonList = jsonDecode(payload);
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
        final currentConversationId = state.maybeMap(
          success: (s) => s.conversationId,
          input: (s) => s.conversationId,
          sending: (s) => s.conversationId,
          loading: (s) => null,
          initial: (s) => null,
          failure: (s) => s.conversationId,
          orElse: () => null,
        );
        final (chatType, targetId) = await parseConversationId(conversationId: currentConversationId!);

        _chatType = chatType;
        _targetId = targetId;
        // 过滤当前会话的消息并直接转换
        final chatMessages =
            messages
                .map((ffiMessage) => ffiMessage.toFlutterModel())
                .toList();
        if (chatMessages.isNotEmpty) {
          Log.info(
            'ChatDetailBloc 收到当前会话(chatType=$_chatType targetId=$_targetId)的新消息: ${chatMessages.length}条',
          );

          // 批量处理消息
          if (!_isClosed) {
            add(ChatDetailEvent.multipleMessagesReceived(chatMessages));
          }
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
        add(ChatDetailEvent.userInfoUpdated(user));
      } catch (e) {
        Log.error('会话详情页: 用户信息更新事件监听失败', error: e);
      }
    });
  }

  // 初始化聊天页面，加载会话信息和消息历史
  Future<void> _onInitialized(
    Emitter<ChatDetailState> emit,
    FfiChatType chatType,
    int targetId,
  ) async {
    try {
      Log.info('初始化聊天详情页: chatType=$chatType targetId=$targetId');
      _chatType = chatType;
      _targetId = targetId;

      // 发出加载状态
      emit(const ChatDetailState.loading());

      // 获取历史消息
      final messages = await _chatService.getChatHistory(
        chatType: chatType,
        targetId: targetId,
      );
      final chatMessages =
              messages
                  .map((ffiMessage) => ffiMessage.toFlutterModel())
                  .toList();
      // 标记会话为已读
      await _chatService.markSessionAsRead(chatType: chatType, targetId: targetId);

      // 由于我们没有单独的会话信息接口，这里使用会话列表找到对应会话
      final sessions = await _chatService.getChatSessions();
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
        ChatDetailState.success(
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
        ChatDetailState.input(
          conversationId: session.conversationId,
          conversationName: session.name,
          conversationAvatar: session.avatar,
          conversationMemberCount: memberCount,
          totalUnreadCount: totalUnreadCount,
          messages: chatMessages,
          hasReachedEnd: messages.length < 20,
        ),
      );

      Log.info('聊天详情页初始化完成，加载了${messages.length}条消息');
    } catch (e) {
      Log.error('初始化聊天详情页失败', error: e);
      emit(
        ChatDetailState.failure(
          errorMessage: '加载聊天记录失败: ${e.toString()}',
          conversationId: '${_chatType}_$_targetId',
        ),
      );
    }
  }

  // 加载更多历史消息
  Future<void> _onLoadMoreMessages(Emitter<ChatDetailState> emit) async {
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
          final moreMessages = await _chatService.getChatHistory(
            chatType: _chatType!,
            targetId: _targetId!,
            limit: 20,
            beforeId: oldestMessageId,
          );
          final moreChatMessages = moreMessages.map((e) => e.toFlutterModel()).toList();
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
          final moreMessages = await _chatService.getChatHistory(
            chatType: _chatType!,
            targetId: _targetId!,
            limit: 20,
            beforeId: oldestMessageId,
          );
          final moreChatMessages = moreMessages.map((e) => e.toFlutterModel()).toList();
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

  // 处理消息输入变化
  void _onMessageInputChanged(Emitter<ChatDetailState> emit, String text) {
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
              ChatDetailState.input(
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
  // Future<void> _onSendTextMessage(Emitter<ChatDetailState> emit) async {
  //   // 只在输入状态下发送消息
  //   state.maybeMap(
  //     input: (inputState) async {
  //       final text = inputState.inputText.trim();
  //       if (text.isEmpty) {
  //         Log.info('尝试发送空消息，已忽略');
  //         return;
  //       }

  //       Log.info('开始发送文本消息: "$text"');

  //       // 创建新消息
  //       // final newMessage = ChatMessage(
  //       //   ffiModel: FfiMessageModel(
  //       //     common: FfiMessageCommon(
  //       //       msgId: DateTime.now().millisecondsSinceEpoch,
  //       //       msgType: FfiMsgType.text,
  //       //     ),
  //       //   ),
  //       // );

  //       // 更新状态为发送中
  //       // emit(
  //       //   ChatDetailState.sending(
  //       //     conversationId: inputState.conversationId,
  //       //     conversationName: inputState.conversationName,
  //       //     conversationAvatar: inputState.conversationAvatar,
  //       //     conversationMemberCount: inputState.conversationMemberCount,
  //       //     totalUnreadCount: inputState.totalUnreadCount,
  //       //     messages: [newMessage, ...inputState.messages],
  //       //     inputText: '',
  //       //     pendingMessage: newMessage,
  //       //     isLoadingMore: inputState.isLoadingMore,
  //       //     hasReachedEnd: inputState.hasReachedEnd,
  //       //   ),
  //       // );

  //       try {
  //         final newFFiMessage = await chat_api.sendMessage(
  //           chatType: _chatType!, 
  //           targetId: _targetId!, 
  //           msgContent: FfiMsgContent.text(FfiTextMessageContent(text: text)),
  //         );
  //         Log.info(newFFiMessage.toString());

  //         final newMessage = newFFiMessage.toFlutterModel();
         
  //         if (newMessage == null) {
  //           throw Exception('发送消息失败');
  //         }
  //          final sentMessage = newMessage;
  //         Log.info("aaaaaaa111");
  //         // 更新消息状态为已发送
  //         final updatedMessages = state.maybeMap(
  //           sending: (sendingState) {
  //             final msgList = List<ChatMessage>.from(sendingState.messages);
  //             final index = msgList.indexWhere(
  //               (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
  //             );
  //             if (index >= 0) {
  //               msgList[index] = sentMessage;
  //             }
  //             return msgList;
  //           },
  //           orElse: () => [sentMessage],
  //         );
          
  //         Log.info("aaaaaaa222 conversationId: ${ inputState.conversationId} ${ inputState.conversationName} ${ inputState.conversationAvatar} ${ inputState.conversationMemberCount} ${ inputState.totalUnreadCount} ${ inputState.isLoadingMore} ${ inputState.hasReachedEnd} ");
  //         Log.info(inputState.toString());
  //         Log.info(updatedMessages.toString());
  //         Log.info("aaaaaaa333");
  //         // 更新为输入状态
  //         emit(
  //           ChatDetailState.input(
  //             conversationId: inputState.conversationId,
  //             conversationName: inputState.conversationName,
  //             conversationAvatar: inputState.conversationAvatar,
  //             conversationMemberCount: inputState.conversationMemberCount,
  //             totalUnreadCount: inputState.totalUnreadCount,
  //             messages: updatedMessages,
  //             isLoadingMore: inputState.isLoadingMore,
  //             hasReachedEnd: inputState.hasReachedEnd,
  //           ),
  //         );

  //         Log.info('文本消息发送成功');
  //       } catch (e) {
  //         Log.info("aaaaaaa4444");
  //         Log.error('发送消息失败', error: e);

  //         // // 更新消息状态为发送失败
  //         // final failedMessage = newMessage!.copyWith(
  //         //   ffiModel.status: FfiMsgStatus.failed,
  //         // );
  //         // final updatedMessages = state.maybeMap(
  //         //   sending: (sendingState) {
  //         //     final msgList = List<ChatMessage>.from(sendingState.messages);
  //         //     final index = msgList.indexWhere(
  //         //       (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
  //         //     );
  //         //     if (index >= 0) {
  //         //       msgList[index] = failedMessage;
  //         //     }
  //         //     return msgList;
  //         //   },
  //         //   orElse: () => [failedMessage],
  //         // );

  //         // // 更新为输入状态
  //         // emit(
  //         //   ChatDetailState.input(
  //         //     conversationId: inputState.conversationId,
  //         //     conversationName: inputState.conversationName,
  //         //     conversationAvatar: inputState.conversationAvatar,
  //         //     conversationMemberCount: inputState.conversationMemberCount,
  //         //     totalUnreadCount: inputState.totalUnreadCount,
  //         //     messages: updatedMessages,
  //         //     isLoadingMore: inputState.isLoadingMore,
  //         //     hasReachedEnd: inputState.hasReachedEnd,
  //         //   ),
  //         // );
  //       }
  //     },
  //     orElse: () {
  //       // 其他状态不处理
  //       Log.info('发送消息被忽略，当前状态不适合发送');
  //     },
  //   );
  // }
  Future<void> _onSendTextMessage(Emitter<ChatDetailState> emit) async {
  final inputState = state.maybeMap(
    input: (s) => s,
    orElse: () => null,
  );

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
    );

    Log.info("FFI消息发送返回: ${newFFiMessage.toString()}");

    final newMessage = newFFiMessage.toFlutterModel();
    if (newMessage == null) {
      throw Exception('发送消息失败');
    }

    final sentMessage = newMessage;

    // 拷贝旧消息列表，替换或插入新消息
    final updatedMessages = List<ChatMessage>.from(inputState.messages);
    final index = updatedMessages.indexWhere(
      (msg) => msg.ffiModel.common.flag == sentMessage.ffiModel.common.flag,
    );

    if (index >= 0) {
      updatedMessages[index] = sentMessage;
    } else {
      updatedMessages.insert(0, sentMessage);
    }

    // 发出新的输入状态
    emit(ChatDetailState.input(
      conversationId: inputState.conversationId,
      conversationName: inputState.conversationName,
      conversationAvatar: inputState.conversationAvatar,
      conversationMemberCount: inputState.conversationMemberCount,
      totalUnreadCount: inputState.totalUnreadCount,
      messages: updatedMessages,
      isLoadingMore: inputState.isLoadingMore,
      hasReachedEnd: inputState.hasReachedEnd,
    ));

    Log.info('文本消息发送成功');
  } catch (e, stack) {
    Log.error('发送文本消息失败', error: e, stackTrace: stack);
    // ⚠️ 可以在这里处理失败回退逻辑，例如提示或更新为失败状态的消息
  }
}



  // 发送图片消息
  Future<void> _onSendImageMessage(
    Emitter<ChatDetailState> emit,
    String imagePath,
  ) async {
    // 类似于发送文本消息的实现，但处理图片
    // 实际开发中需要处理图片上传等逻辑
    Log.info('发送图片消息功能尚未实现: $imagePath');
  }

  // 接收新消息
  void _onMessageReceived(Emitter<ChatDetailState> emit, ChatMessage message) {
    Log.info('收到新消息: ${message.id}');

    state.maybeMap(
      success: (successState) {
        final updatedMessages = [message, ...successState.messages];
        emit(successState.copyWith(messages: updatedMessages));
      },
      input: (inputState) {
        final updatedMessages = [message, ...inputState.messages];
        emit(inputState.copyWith(messages: updatedMessages));
      },
      sending: (sendingState) {
        final updatedMessages = [message, ...sendingState.messages];
        emit(sendingState.copyWith(messages: updatedMessages));
      },
      orElse: () {
        // 其他状态不处理
        Log.info('接收消息被忽略，当前状态不适合处理新消息');
      },
    );
  }

  // 更新消息状态
  void _onMessageStatusUpdated(
    Emitter<ChatDetailState> emit,
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
        return message.copyWith(ffiModel: message.ffiModel.copyWith(status: status));
      }
      return message;
    }).toList();
  }

  // 重试发送失败的消息
  Future<void> _onRetryMessage(
    Emitter<ChatDetailState> emit,
    int flag,
  ) async {
    // 根据当前状态找到失败的消息并重试发送
    state.maybeMap(
      input: (inputState) async {
        final messages = inputState.messages;
        final messageIndex = messages.indexWhere((msg) => msg.ffiModel.common.flag == flag);
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
          ffiModel: failedMessage.ffiModel.copyWith(status: FfiMsgStatus.sending),
        );
        final updatedMessages = List<ChatMessage>.from(messages);
        updatedMessages[messageIndex] = updatingMessage;

        // 更新状态为发送中
        emit(
          ChatDetailState.sending(
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
            ffiModel: updatingMessage.ffiModel.copyWith(status: FfiMsgStatus.sent),
          );
          final sentMessages = List<ChatMessage>.from(updatedMessages);
          sentMessages[messageIndex] = sentMessage;

          // 更新为输入状态
          emit(
            ChatDetailState.input(
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
            ffiModel: updatingMessage.ffiModel.copyWith(status: FfiMsgStatus.failed),
          );
          final failedMessages = List<ChatMessage>.from(updatedMessages);
          failedMessages[messageIndex] = failedRetryMessage;

          // 更新为输入状态
          emit(
            ChatDetailState.input(
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
  void _onDeleteMessage(Emitter<ChatDetailState> emit, int flag) {
    Log.info('删除消息: ID=$flag');

    // 根据当前状态删除指定的消息
    state.maybeMap(
      success: (successState) {
        final updatedMessages =
            successState.messages.where((msg) => msg.ffiModel.common.flag != flag).toList();
        emit(successState.copyWith(messages: updatedMessages));
      },
      input: (inputState) {
        final updatedMessages =
            inputState.messages.where((msg) => msg.ffiModel.common.flag != flag).toList();
        emit(inputState.copyWith(messages: updatedMessages));
      },
      sending: (sendingState) {
        final updatedMessages =
            sendingState.messages.where((msg) => msg.ffiModel.common.flag != flag).toList();
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
    Emitter<ChatDetailState> emit,
    List<ChatMessage> messages,
  ) {
    if (messages.isEmpty) return;

    Log.info('批量接收 ${messages.length} 条新消息');

    // 按时间戳排序，确保消息按正确顺序显示
    final sortedMessages = List<ChatMessage>.from(messages)
      ..sort((a, b) => b.ffiModel.common.sendTime.compareTo(a.ffiModel.common.sendTime));

    state.maybeMap(
      success: (successState) {
        final updatedMessages = [...sortedMessages, ...successState.messages];
        emit(successState.copyWith(messages: updatedMessages));
      },
      input: (inputState) {
        final updatedMessages = [...sortedMessages, ...inputState.messages];
        emit(inputState.copyWith(messages: updatedMessages));
      },
      sending: (sendingState) {
        final updatedMessages = [...sortedMessages, ...sendingState.messages];
        emit(sendingState.copyWith(messages: updatedMessages));
      },
      orElse: () {
        // 其他状态不处理
        Log.info('批量接收消息被忽略，当前状态不适合处理新消息');
      },
    );
  }

  // 会话详情用户信息更新
  void _onUserInfoUpdated(Emitter<ChatDetailState> emit, FfiUser user) {
    Log.info('用户信息更新: ${user.nickName}');

    // 通用更新消息的函数
    List<ChatMessage> updateMessages(List<ChatMessage> messages) {
      return messages.map((msg) {
        if (msg.ffiModel.senderUser.senderUid == user.uid && !msg.isMe) {
          return msg.copyWith(
            ffiModel: msg.ffiModel.copyWith(senderUser: 
            FfiMessageUser(
              senderUid: user.uid, 
              senderNickName: user.nickName ?? msg.senderName, 
              senderAvatar: user.icon ?? msg.senderAvatar,
              remarkName: "",
              )
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
    Log.info('ChatDetailBloc 关闭');
    if (_hasSubscribed) {
      _messageSubscription?.cancel();
      // 通知服务取消订阅
      _chatService.unsubscribeMessages();
      _hasSubscribed = false;
    }
    _chatType = null;
    _targetId = null;
    return super.close();
  }
}
