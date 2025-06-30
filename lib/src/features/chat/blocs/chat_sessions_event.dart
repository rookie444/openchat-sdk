import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/chat_session.dart';
import '../../../common/ffi.dart';

part '../../../../generated/src/features/chat/blocs/chat_sessions_event.freezed.dart';

/// 聊天会话列表事件
@freezed
class ChatSessionsEvent with _$ChatSessionsEvent {
  /// 加载会话列表
  const factory ChatSessionsEvent.loadSessions() = _LoadSessions;

  /// 加载会话列表（包含归档分组）
  const factory ChatSessionsEvent.loadSessionsWithArchived() = _LoadSessionsWithArchived;

  /// 刷新会话列表
  const factory ChatSessionsEvent.refreshSessions() = _RefreshSessions;

  /// 标记会话为已读
  const factory ChatSessionsEvent.markSessionAsRead({
    required String conversationId,
  }) = _MarkSessionAsRead;

  /// 置顶会话
  const factory ChatSessionsEvent.pinSession({required String conversationId}) =
      _PinSession;

  /// 取消置顶会话
  const factory ChatSessionsEvent.unpinSession({
    required String conversationId,
  }) = _UnpinSession;

  /// 静音会话
  const factory ChatSessionsEvent.muteSession({
    required String conversationId,
  }) = _MuteSession;

  /// 取消静音会话
  const factory ChatSessionsEvent.unmuteSession({
    required String conversationId,
  }) = _UnmuteSession;

  /// 删除会话
  const factory ChatSessionsEvent.deleteSession({
    required String conversationId,
  }) = _DeleteSession;

  /// 新消息接收事件
  const factory ChatSessionsEvent.newMessageReceived({
    required FfiConversation message,
  }) = _NewMessageReceived;

  /// 多条消息接收事件
  const factory ChatSessionsEvent.multipleMessagesReceived({
    required List<FfiConversation> messages,
  }) = _MultipleMessagesReceived;

  /// 归档会话
  const factory ChatSessionsEvent.archiveSession({
    required String conversationId,
  }) = _ArchiveSession;

  /// 取消归档会话
  const factory ChatSessionsEvent.unarchiveSession({
    required String conversationId,
  }) = _UnarchiveSession;

  /// 加载归档会话的分组标题
  const factory ChatSessionsEvent.loadArchivedGroup() = _LoadArchivedGroup;
}
