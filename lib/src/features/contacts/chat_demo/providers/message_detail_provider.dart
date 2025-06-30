import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/chat_message.dart';

/// 消息详情页面的Provider
/// 用于存储当前查看的消息对象
class MessageDetailNotifier extends StateNotifier<ChatMessage?> {
  MessageDetailNotifier() : super(null);

  /// 设置要查看的消息
  void setMessage(ChatMessage message) {
    state = message;
  }

  /// 清除消息
  void clearMessage() {
    state = null;
  }
}

/// 消息详情Provider
final messageDetailProvider =
    StateNotifierProvider<MessageDetailNotifier, ChatMessage?>((ref) {
      return MessageDetailNotifier();
    });
