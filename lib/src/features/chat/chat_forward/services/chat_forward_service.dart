import 'package:openchat_client/src/common/ffi.dart';
import 'package:openchat_client/src/core/utils/log.dart';
import 'package:openchat_client/src/rust/api/chat_api.dart' as chat_api;
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';
// import '../../models/chat_message.dart';

/// 转发功能服务
class ChatForwardService {
  /// 获取最近会话列表
  Future<List<FfiConversation>> getRecentSessions() async {
    try {
      Log.debug('获取会话列表');

      final conversations = await chat_api.getChatConversations();
      return conversations;
    } catch (e, stack) {
      Log.error('获取会话列表失败', error: e, stackTrace: stack);
      return [];
    }
  }

  /// 转发消息
  Future<bool> forwardMessage(String targetId, String messageId) async {
    // 模拟转发消息的网络请求
    await Future.delayed(const Duration(milliseconds: 1000));

    // 模拟成功
    return true;
  }

  /// 转发多条消息
  Future<bool> forwardMessages({
    required List<ChatMessage> messages,
    required String targetId,
    required FfiChatType targetChatType,
  }) async {
    try {
      Log.debug('开始转发消息到 $targetChatType: $targetId');

      // 模拟转发消息的网络请求
      await Future.delayed(const Duration(milliseconds: 1000));

      // 这里应该调用实际的转发API
      // 例如：await chat_api.forwardMessages(messages, targetId, targetChatType);

      Log.debug('转发消息成功');
      return true;
    } catch (e, stack) {
      Log.error('转发消息失败', error: e, stackTrace: stack);
      return false;
    }
  }
}
