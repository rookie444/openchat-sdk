import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/utils/log.dart';
import '../../../rust/api/chat_api.dart' as chat_api;
import '../models/chat_session.dart';
import '../models/chat_message_converter.dart';
import 'message_dispatcher.dart';

import '../../../common/ffi.dart';

part '../../../../generated/src/features/chat/services/chat_service.g.dart';

/// 聊天服务提供者
@Riverpod(keepAlive: true)
ChatService chatService(Ref ref) {
  final messageDispatcher = ref.read(messageDispatcherProvider);
  return ChatService(messageDispatcher: messageDispatcher);
}

/// 聊天服务类，负责与Rust核心通信并处理聊天数据
class ChatService {
  /// 消息分发器
  final MessageDispatcher _messageDispatcher;

  ChatService({required MessageDispatcher messageDispatcher})
    : _messageDispatcher = messageDispatcher;

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

  /// 获取会话列表（包含归档分组）
  Future<List<FfiConversation>> getConversationsWithArchived() async {
    try {
      Log.debug('获取会话列表（包含归档分组）');

      final conversations = await chat_api.getConversationsWithArchived();
      return conversations;
    } catch (e, stack) {
      Log.error('获取会话列表（包含归档分组）失败', error: e, stackTrace: stack);
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
  Future<void> markSessionAsRead({
    required FfiChatType chatType,
    required int targetId,
  }) async {
    try {
      Log.debug('标记会话为已读: chatType=$chatType targetId=$targetId');
      await chat_api.markConversationAsRead(
        chatType: chatType,
        targetId: targetId,
      );
    } catch (e, stack) {
      Log.error('标记会话为已读失败', error: e, stackTrace: stack);
    }
  }

  /// 批量标记会话为已读
  ///
  /// 参数:
  /// * `conversation_ids` - 会话ID列表
  ///
  /// 返回:
  /// * `Result<()>` - 操作结果
  Future<void> batchMarkSessionAsRead({
    required List<String> conversationIds,
  }) async {
    try {
      Log.debug('批量标记会话为已读: conversationIds=$conversationIds');
      List<(FfiChatType, int)> tupleList = [];
      for (var element in conversationIds) {
        final (chatType, targetId) = await parseConversationId(
          conversationId: element,
        );
        tupleList.add((chatType, targetId));
      }
      await chat_api.batchMarkConversationAsRead(conversationIds: tupleList);
    } catch (e, stack) {
      Log.error('批量标记会话为已读失败', error: e, stackTrace: stack);
    }
  }

  Future<void> markSessionAsReadWithConversationId({
    required String conversationId,
  }) async {
    try {
      Log.debug('标记会话为已读: conversationId=$conversationId');
      final (chatType, targetId) = await parseConversationId(
        conversationId: conversationId,
      );
      await chat_api.markConversationAsRead(
        chatType: chatType,
        targetId: targetId,
      );
    } catch (e, stack) {
      Log.error('标记会话为已读失败', error: e, stackTrace: stack);
    }
  }

  /// 置顶会话
  Future<bool> pinChatSession({required String conversationId}) async {
    try {
      Log.debug('置顶会话: conversationId=$conversationId');
      await chat_api.setConversationTop(
        conversationId: conversationId,
        isTop: true,
      );
      return true;
    } catch (e, stack) {
      Log.error('置顶会话失败', error: e, stackTrace: stack);
      return false;
    }
  }

  /// 取消置顶会话
  Future<bool> unpinChatSession({required String conversationId}) async {
    try {
      Log.debug('取消置顶会话: conversationId=$conversationId');
      await chat_api.setConversationTop(
        conversationId: conversationId,
        isTop: false,
      );
      return true;
    } catch (e, stack) {
      Log.error('取消置顶会话失败', error: e, stackTrace: stack);
      return false;
    }
  }

  /// 归档会话
  Future<bool> archiveChatSession({required String conversationId}) async {
    try {
      await chat_api.setConversationArchive(
        conversationId: conversationId,
        isArchive: 2,
      );
      return true;
    } catch (e, stack) {
      Log.error('归档会话失败', error: e, stackTrace: stack);
      return false;
    }
  }

  /// 取消归档会话
  Future<bool> unarchiveChatSession({required String conversationId}) async {
    try {
      await chat_api.setConversationArchive(
        conversationId: conversationId,
        isArchive: 1,
      );
      return true;
    } catch (e, stack) {
      Log.error('取消归档会话失败', error: e, stackTrace: stack);
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
      // return true;
      final (chatType, targetId) = await parseConversationId(
        conversationId: conversationId,
      );
      await chat_api.deleteConversation(chatType: chatType, targetId: targetId);
      return true;
    } catch (e, stack) {
      Log.error('删除会话失败', error: e, stackTrace: stack);
      return false;
    }
  }

  ///批量删除会话
  Future<bool> batchDeleteChatSession({
    required List<String> conversationIds,
  }) async {
    try {
      Log.debug('删除会话: conversationIds=$conversationIds');

      List<(FfiChatType, int)> tupleList = [];
      for (var element in conversationIds) {
        final (chatType, targetId) = await parseConversationId(
          conversationId: element,
        );
        tupleList.add((chatType, targetId));
      }
      await chat_api.batchDeleteConversations(conversationIds: tupleList);

      return true;
    } catch (e, stack) {
      Log.error('删除会话失败', error: e, stackTrace: stack);
      return false;
    }
  }

  /// 批量取消归档会话
  Future<bool> batchUnarchiveSession({
    required List<String> conversationIds,
  }) async {
    try {
      Log.debug('批量取消归档会话: conversationIds=$conversationIds');

      for (var conversationId in conversationIds) {
        await unarchiveChatSession(conversationId: conversationId);
      }

      return true;
    } catch (e, stack) {
      Log.error('批量取消归档会话失败', error: e, stackTrace: stack);
      return false;
    }
  }

  /// 获取归档会话的分组标题
  Future<FfiConversation?> getArchivedGroup() async {
    try {
      Log.debug('获取归档会话的分组标题');

      final archivedGroup = await chat_api.getArchivedGroup();
      return archivedGroup;
    } catch (e, stack) {
      Log.error('获取归档会话的分组标题失败', error: e, stackTrace: stack);
      return null;
    }
  }

  /// 获取已归档会话列表
  Future<List<FfiConversation>> getArchivedSessions() async {
    try {
      Log.debug('获取已归档会话列表');
      final conversations = await chat_api.getArchivedConversations();
      return conversations;
    } catch (e, stack) {
      Log.error('获取已归档会话失败', error: e, stackTrace: stack);
      return [];
    }
  }
}
