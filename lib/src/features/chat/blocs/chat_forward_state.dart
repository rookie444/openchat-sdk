import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';

part '../../../../generated/src/features/chat/blocs/chat_forward_state.freezed.dart';

/// 联系人数据模型
class Contact {
  final String id;
  final String name;
  final String? avatar;
  final String? phone;
  final bool isOnline;

  Contact({
    required this.id,
    required this.name,
    this.avatar,
    this.phone,
    this.isOnline = false,
  });

  @override
  String toString() => 'Contact(id: $id, name: $name)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Contact && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

/// 群聊数据模型
class Group {
  final String id;
  final String name;
  final String? avatar;
  final int memberCount;
  final bool isActive;

  Group({
    required this.id,
    required this.name,
    this.avatar,
    this.memberCount = 0,
    this.isActive = true,
  });

  @override
  String toString() => 'Group(id: $id, name: $name, members: $memberCount)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Group && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

/// 频道数据模型
class Channel {
  final String id;
  final String name;
  final String? avatar;
  final int subscriberCount;
  final bool isActive;

  Channel({
    required this.id,
    required this.name,
    this.avatar,
    this.subscriberCount = 0,
    this.isActive = true,
  });

  @override
  String toString() =>
      'Channel(id: $id, name: $name, subscribers: $subscriberCount)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Channel && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

/// 最近会话数据模型
class RecentSession {
  final String id;
  final String name;
  final String? avatar;
  final String lastMessage;
  final DateTime lastMessageTime;
  final int unreadCount;
  final String type; // 'friend', 'group', 'channel'

  RecentSession({
    required this.id,
    required this.name,
    this.avatar,
    required this.lastMessage,
    required this.lastMessageTime,
    this.unreadCount = 0,
    required this.type,
  });

  @override
  String toString() => 'RecentSession(id: $id, name: $name, type: $type)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is RecentSession && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

/// 转发页面状态
@freezed
class ChatForwardState with _$ChatForwardState {
  /// 初始状态
  const factory ChatForwardState.initial() = _Initial;

  /// 加载中状态
  const factory ChatForwardState.loading() = _Loading;

  /// 成功状态
  const factory ChatForwardState.success({
    required ChatMessage messageToForward,
    @Default([]) List<Contact> friends,
    @Default([]) List<Group> groups,
    @Default([]) List<Channel> channels,
    @Default([]) List<RecentSession> recentSessions,
    @Default('') String searchQuery,
    @Default(false) bool isSearching,
  }) = _Success;

  /// 错误状态
  const factory ChatForwardState.failure({
    ChatMessage? messageToForward,
    required String errorMessage,
  }) = _Failure;
}
