import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';

part '../../../../generated/src/features/chat/blocs/chat_forward_event.freezed.dart';

/// 转发功能事件
@freezed
class ChatForwardEvent with _$ChatForwardEvent {
  /// 初始化转发页面
  const factory ChatForwardEvent.initialized(ChatMessage messageToForward) =
      _Initialized;

  /// 搜索联系人
  const factory ChatForwardEvent.searchContacts(String query) = _SearchContacts;

  /// 加载朋友列表
  const factory ChatForwardEvent.loadFriends() = _LoadFriends;

  /// 加载群聊列表
  const factory ChatForwardEvent.loadGroups() = _LoadGroups;

  /// 加载频道列表
  const factory ChatForwardEvent.loadChannels() = _LoadChannels;

  /// 加载最近会话
  const factory ChatForwardEvent.loadRecentSessions() = _LoadRecentSessions;

  /// 选择朋友
  const factory ChatForwardEvent.selectFriend(String friendId) = _SelectFriend;

  /// 选择群聊
  const factory ChatForwardEvent.selectGroup(String groupId) = _SelectGroup;

  /// 选择频道
  const factory ChatForwardEvent.selectChannel(String channelId) =
      _SelectChannel;

  /// 选择最近会话
  const factory ChatForwardEvent.selectRecentSession(String sessionId) =
      _SelectRecentSession;

  /// 清除搜索
  const factory ChatForwardEvent.clearSearch() = _ClearSearch;

  /// 刷新数据
  const factory ChatForwardEvent.refresh() = _Refresh;
}
