import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_image.dart';

import '../models/chat_message.dart';

/// 消息列表状态管理器
class ChatListMessageNotifier extends StateNotifier<List<ChatMessage>> {
  ChatListMessageNotifier(super.initialMessages);

  /// 初始化消息列表
  void initialize(List<ChatMessage> messages) {
    state = [...messages];
  }

  /// 添加单条消息到列表末尾
  void addMessage(ChatMessage message) {
    if (state.any((msg) => msg.id == message.id)) {
      // 如果消息已存在，则更新而不是添加
      updateMessage(message);
      return;
    }
    
    // 按时间顺序插入消息，保持列表有序
    final updatedMessages = [...state, message];
    updatedMessages.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    state = updatedMessages;
  }

  /// 批量添加消息
  void addMessages(List<ChatMessage> messages) {
    if (messages.isEmpty) return;
    
    final currentIds = state.map((msg) => msg.id).toSet();
    final newMessages = messages.where((msg) => !currentIds.contains(msg.id)).toList();
    
    if (newMessages.isEmpty) return;
    
    final updatedMessages = [...state, ...newMessages];
    updatedMessages.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    state = updatedMessages;
  }

  /// 在列表开头插入消息（通常用于历史消息）
  void prependMessage(ChatMessage message) {
    if (state.any((msg) => msg.id == message.id)) {
      return; // 消息已存在，不重复添加
    }
    
    state = [message, ...state];
  }

  /// 在列表开头批量插入消息
  void prependMessages(List<ChatMessage> messages) {
    if (messages.isEmpty) return;
    
    final currentIds = state.map((msg) => msg.id).toSet();
    final newMessages = messages.where((msg) => !currentIds.contains(msg.id)).toList();
    
    if (newMessages.isEmpty) return;
    
    // 按时间倒序排列新消息，确保最新的在前面
    newMessages.sort((a, b) => b.timestamp.compareTo(a.timestamp));
    state = [...newMessages, ...state];
  }

  /// 删除指定ID的消息
  void deleteMessage(int messageId) {
    state = state.where((message) => message.id != messageId).toList();
  }

  /// 批量删除消息
  void deleteMessages(List<int> messageIds) {
    final idsToDelete = messageIds.toSet();
    state = state.where((message) => !idsToDelete.contains(message.id)).toList();
  }

  /// 清空所有消息
  void clearMessages() {
    state = [];
  }

  /// 更新指定消息
  void updateMessage(ChatMessage updatedMessage) {
    state = state.map((message) {
      if (message.id == updatedMessage.id) {
        return updatedMessage;
      }
      return message;
    }).toList();
  }

  /// 更新消息状态（使用FFI的状态系统）
  void updateMessageStatus(int messageId, dynamic newStatus) {
    // 注意：ChatMessage的状态更新需要通过FFI层处理
    // 这里只是占位符，实际实现需要调用相应的FFI方法
    // 暂时不修改state，因为FFI模型是不可变的
    print('更新消息状态: messageId=$messageId, status=$newStatus');
  }

  /// 标记消息为已读（通过外部服务处理）
  void markMessageAsRead(int messageId) {
    // 注意：已读状态需要通过ChatService来处理
    // 这里只是占位符方法
    print('标记消息已读: messageId=$messageId');
  }

  /// 标记所有消息为已读
  void markAllMessagesAsRead() {
    // 注意：批量已读需要通过ChatService来处理
    print('标记所有消息已读');
  }

  /// 根据条件查找消息
  ChatMessage? findMessage(bool Function(ChatMessage) predicate) {
    try {
      return state.firstWhere(predicate);
    } catch (e) {
      return null;
    }
  }

  /// 根据ID查找消息
  ChatMessage? findMessageById(int messageId) {
    return findMessage((message) => message.id == messageId);
  }

  /// 获取指定类型的消息
  List<ChatMessage> getMessagesByType(dynamic messageType) {
    return state.where((message) => message.type == messageType).toList();
  }

  /// 获取未读消息（暂时返回空列表，需要外部状态管理）
  List<ChatMessage> getUnreadMessages() {
    // 注意：isRead状态不在ChatMessage模型中，需要通过其他方式管理
    return []; // 暂时返回空列表
  }

  /// 获取指定时间范围内的消息
  List<ChatMessage> getMessagesInTimeRange(DateTime startTime, DateTime endTime) {
    return state.where((message) {
      return message.timestamp.isAfter(startTime) && message.timestamp.isBefore(endTime);
    }).toList();
  }

  /// 搜索消息内容
  List<ChatMessage> searchMessages(String keyword) {
    final lowercaseKeyword = keyword.toLowerCase();
    return state.where((message) {
      // 根据消息类型获取文本内容进行搜索
      String content = '';
      if (message is ChatMessageTextModel) {
        content = message.text;
      } else if (message is ChatMessageImageModel) {
        content = ""; // 图片消息搜索URL
      }
      return content.toLowerCase().contains(lowercaseKeyword);
    }).toList();
  }

  /// 获取消息总数
  int get messageCount => state.length;

  /// 获取未读消息数量（暂时返回0）
  int get unreadCount => 0; // 需要外部状态管理

  /// 检查是否有未读消息
  bool get hasUnreadMessages => unreadCount > 0;

  /// 获取最后一条消息
  ChatMessage? get lastMessage => state.isNotEmpty ? state.last : null;

  /// 获取第一条消息
  ChatMessage? get firstMessage => state.isNotEmpty ? state.first : null;

  /// 重置状态
  void reset() {
    state = [];
  }

  /// 替换整个消息列表
  void replaceMessages(List<ChatMessage> newMessages) {
    state = [...newMessages];
  }

  /// 按时间重新排序消息
  void sortMessagesByTime({bool ascending = true}) {
    final sortedMessages = [...state];
    if (ascending) {
      sortedMessages.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    } else {
      sortedMessages.sort((a, b) => b.timestamp.compareTo(a.timestamp));
    }
    state = sortedMessages;
  }

  /// 获取指定数量的最新消息
  List<ChatMessage> getLatestMessages(int count) {
    if (state.length <= count) return state;
    
    final sortedMessages = [...state];
    sortedMessages.sort((a, b) => b.timestamp.compareTo(a.timestamp));
    return sortedMessages.take(count).toList();
  }

  /// 获取指定数量的最早消息
  List<ChatMessage> getEarliestMessages(int count) {
    if (state.length <= count) return state;
    
    final sortedMessages = [...state];
    sortedMessages.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    return sortedMessages.take(count).toList();
  }

  /// 检查消息是否存在
  bool hasMessage(int messageId) {
    return state.any((message) => message.id == messageId);
  }

  /// 获取消息在列表中的索引
  int getMessageIndex(int messageId) {
    return state.indexWhere((message) => message.id == messageId);
  }
}

/// Provider工厂方法，为每个会话创建独立的消息状态管理器
final chatListMessageNotifierProvider = StateNotifierProvider.family<ChatListMessageNotifier, List<ChatMessage>, String>(
  (ref, conversationId) {
    final notifier = ChatListMessageNotifier([]);
    
    // 在Provider销毁时清理资源
    ref.onDispose(() {
      notifier.reset();
    });
    
    return notifier;
  },
);

/// 便捷的Provider，用于快速获取消息列表
final messageListProvider = Provider.family<List<ChatMessage>, String>((ref, conversationId) {
  return ref.watch(chatListMessageNotifierProvider(conversationId));
});

/// 便捷的Provider，用于快速获取消息数量
final messageCountProvider = Provider.family<int, String>((ref, conversationId) {
  final messages = ref.watch(chatListMessageNotifierProvider(conversationId));
  return messages.length;
});

/// 便捷的Provider，用于快速获取未读消息数量（暂时返回0）
final unreadMessageCountProvider = Provider.family<int, String>((ref, conversationId) {
  // 未读消息计数需要通过其他方式管理，暂时返回0
  return 0;
});

/// 便捷的Provider，用于快速检查是否有未读消息
final hasUnreadMessagesProvider = Provider.family<bool, String>((ref, conversationId) {
  final unreadCount = ref.watch(unreadMessageCountProvider(conversationId));
  return unreadCount > 0;
});

/// 便捷的Provider，用于快速获取最后一条消息
final lastMessageProvider = Provider.family<ChatMessage?, String>((ref, conversationId) {
  final messages = ref.watch(chatListMessageNotifierProvider(conversationId));
  return messages.isNotEmpty ? messages.last : null;
});

/// 便捷的Provider，用于快速获取第一条消息
final firstMessageProvider = Provider.family<ChatMessage?, String>((ref, conversationId) {
  final messages = ref.watch(chatListMessageNotifierProvider(conversationId));
  return messages.isNotEmpty ? messages.first : null;
});

/// 便捷的Provider，用于获取指定类型的消息
final messagesByTypeProvider = Provider.family<List<ChatMessage>, ({String conversationId, dynamic messageType})>((ref, params) {
  final messages = ref.watch(chatListMessageNotifierProvider(params.conversationId));
  return messages.where((message) => message.type == params.messageType).toList();
});

/// 便捷的Provider，用于搜索消息
final searchMessagesProvider = Provider.family<List<ChatMessage>, ({String conversationId, String keyword})>((ref, params) {
  final notifier = ref.watch(chatListMessageNotifierProvider(params.conversationId).notifier);
  return notifier.searchMessages(params.keyword);
});
