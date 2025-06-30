import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_image.dart';
import '../../../../core/utils/log.dart';
import '../../../../rust/api/chat_api.dart' as chat_api;
import '../models/chat_message.dart';
import '../../../chat/services/message_dispatcher.dart';

import '../../../../common/ffi.dart';

/// 聊天列表服务提供者
final chatListServiceProvider = Provider<ChatListService>((ref) {
  final messageDispatcher = ref.read(messageDispatcherProvider);
  return ChatListService(messageDispatcher: messageDispatcher);
});

/// 聊天列表服务类，负责处理演示聊天的消息管理
class ChatListService {
  /// 消息分发器
  final MessageDispatcher _messageDispatcher;

  ChatListService({required MessageDispatcher messageDispatcher})
    : _messageDispatcher = messageDispatcher;

  /// 获取演示聊天消息列表
  Future<List<ChatMessage>> getDemoChatMessages({
    required FfiChatType chatType,
    required int targetId,
    int limit = 20,
    int? beforeId,
  }) async {
    try {
      Log.debug(
        '获取演示聊天消息: chatType=$chatType, targetId=$targetId, limit=$limit, beforeId=$beforeId',
      );

      final startTime = DateTime.now();
      final ffiMessages = await chat_api.getChatHistory(
        chatType: chatType,
        targetId: targetId,
        limit: limit,
        beforeId: beforeId,
      );
      
      // 转换为ChatMessage对象
      final messages = ffiMessages.map((ffiMsg) {
        // 根据消息类型创建对应的消息模型
        if (_isImageMessage(ffiMsg)) {
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

      final endTime = DateTime.now();
      Log.info('获取演示聊天消息耗时: ${endTime.difference(startTime).inMilliseconds}ms');
      return messages;
    } catch (e, stack) {
      Log.error('获取演示聊天消息失败', error: e, stackTrace: stack);
      return [];
    }
  }

 /// 获取聊天历史记录
  Future<List<FfiMessageModel>> getChatHistory({
    required FfiChatType chatType,
    required int targetId,
    int limit = 20,
    int? beforeId,
  }) async {
    try {
      Log.debug(
        '获取聊天历史: chatType=$chatType, targetId=$targetId , limit=$limit, beforeId=$beforeId',
      );

      //打印耗时日志
      final startTime = DateTime.now();
      final messages = await chat_api.getChatHistory(
        chatType: chatType,
        targetId: targetId,
        limit: limit,
        beforeId: beforeId,
      );
      final endTime = DateTime.now();
      Log.info('获取聊天历史耗时11: ${endTime.difference(startTime).inMilliseconds}ms');
      return messages;
    } catch (e, stack) {
      Log.error('获取聊天历史失败', error: e, stackTrace: stack);
      return [];
    }
  }

  /// 订阅消息 - 使用消息分发器
  Stream<chat_api.Rust2ClientMessagePayload> listenForMessages() {
    Log.info('ChatService: 订阅消息流');
    return _messageDispatcher.getMessageStream();
  }

  /// 取消订阅消息 - 通知分发器
  void unsubscribeMessages() {
    Log.debug('ChatService: 取消消息订阅');
    _messageDispatcher.unsubscribe();
  }

  /// 获取会话列表
  Future<List<FfiConversation>> getChatSessions() async {
    try {
      Log.debug('获取会话列表');

      final conversations = await chat_api.getChatConversations();
      return conversations;
    } catch (e, stack) {
      Log.error('获取会话列表失败', error: e, stackTrace: stack);
      return [];
    }
  }

  /// 标记消息为已读
  Future<void> markMessageAsRead({required String messageId}) async {
    try {
      Log.debug('标记消息为已读: msgId=$messageId');
      await chat_api.markMessageAsRead(msgId: messageId);
    } catch (e, stack) {
      Log.error('标记消息为已读失败', error: e, stackTrace: stack);
    }
  }

  /// 标记会话为已读
  Future<void> markSessionAsRead({required FfiChatType chatType , required int targetId}) async {
    try {
      Log.debug('标记会话为已读: chatType=$chatType targetId=$targetId');
      await chat_api.markConversationAsRead(chatType: chatType, targetId: targetId);
    } catch (e, stack) {
      Log.error('标记会话为已读失败', error: e, stackTrace: stack);
    }
  }
  Future<void> markSessionAsReadWithConversationId({required String conversationId}) async {
    try {
       Log.debug('标记会话为已读: conversationId=$conversationId');
       final (chatType, targetId) = await parseConversationId(conversationId: conversationId);
       await chat_api.markConversationAsRead(chatType: chatType, targetId: targetId);
     
      
    } catch (e, stack) {
      Log.error('标记会话为已读失败', error: e, stackTrace: stack);
    }
  }

  /// 置顶会话
  Future<bool> pinChatSession({required String conversationId}) async {
    try {
      Log.debug('置顶会话: conversationId=$conversationId');
      return true;
      // return await chat_api.pinChatSession(sessionId: sessionId);
    } catch (e, stack) {
      Log.error('置顶会话失败', error: e, stackTrace: stack);
      return false;
    }
  }

  /// 取消置顶会话
  Future<bool> unpinChatSession({required String conversationId}) async {
    try {
      Log.debug('取消置顶会话: conversationId=$conversationId');
      return true;
      // return await chat_api.unpinChatSession(sessionId: sessionId);
    } catch (e, stack) {
      Log.error('取消置顶会话失败', error: e, stackTrace: stack);
      return false;
    }
  }

  /// 静音会话
  Future<bool> muteChatSession({required String conversationId}) async {
    try {
      Log.debug('静音会话: conversationId=$conversationId');
      return true;
      // return await chat_api.muteChatSession(sessionId: sessionId);
    } catch (e, stack) {
      Log.error('静音会话失败', error: e, stackTrace: stack);
      return false;
    }
  }

  /// 取消静音会话
  Future<bool> unmuteChatSession({required String conversationId}) async {
    try {
      Log.debug('取消静音会话: conversationId=$conversationId');
      return true;
      // return await chat_api.unmuteChatSession(sessionId: sessionId);
    } catch (e, stack) {
      Log.error('取消静音会话失败', error: e, stackTrace: stack);
      return false;
    }
  }

  /// 删除会话
  Future<bool> deleteChatSession({required String conversationId}) async {
    try {
      Log.debug('删除会话: conversationId=$conversationId');
      return true;
      // return await chat_api.deleteChatSession(sessionId: sessionId);
    } catch (e, stack) {
      Log.error('删除会话失败', error: e, stackTrace: stack);
      return false;
    }
  }

  /// 检查是否为图片消息
  bool _isImageMessage(FfiMessageModel ffiMsg) {
    return ffiMsg.common.msgType == FfiMsgType.image;
  }
}
