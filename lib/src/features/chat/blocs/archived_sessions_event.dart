import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/chat_session.dart';
import '../../../common/ffi.dart';

part '../../../../generated/src/features/chat/blocs/archived_sessions_event.freezed.dart';

@freezed
class ArchivedSessionsEvent with _$ArchivedSessionsEvent {
  /// 加载归档会话列表
  const factory ArchivedSessionsEvent.loadSessions() = _LoadSessions;

  /// 加载归档会话列表（包含归档分组）
  const factory ArchivedSessionsEvent.loadSessionsWithArchived() = _LoadSessionsWithArchived;

  /// 刷新归档会话列表
  const factory ArchivedSessionsEvent.refreshSessions() = _RefreshSessions;

  /// 标记会话为已读
  const factory ArchivedSessionsEvent.markSessionAsRead({required String conversationId}) = _MarkSessionAsRead;

  /// 置顶会话
  const factory ArchivedSessionsEvent.pinSession({required String conversationId}) = _PinSession;

  /// 取消置顶会话
  const factory ArchivedSessionsEvent.unpinSession({required String conversationId}) = _UnpinSession;

  /// 静音会话
  const factory ArchivedSessionsEvent.muteSession({required String conversationId}) = _MuteSession;

  /// 取消静音会话
  const factory ArchivedSessionsEvent.unmuteSession({required String conversationId}) = _UnmuteSession;

  /// 删除会话
  const factory ArchivedSessionsEvent.deleteSession({required String conversationId}) = _DeleteSession;

  /// 新消息到达
  const factory ArchivedSessionsEvent.newMessageReceived({required FfiConversation message}) = _NewMessageReceived;

  /// 多条新消息到达
  const factory ArchivedSessionsEvent.multipleMessagesReceived({required List<FfiConversation> messages}) = _MultipleMessagesReceived;

  /// 归档会话
  const factory ArchivedSessionsEvent.archiveSession({required String conversationId}) = _ArchiveSession;

  /// 取消归档会话
  const factory ArchivedSessionsEvent.unarchiveSession({required String conversationId}) = _UnarchiveSession;

  /// 加载归档分组
  const factory ArchivedSessionsEvent.loadArchivedGroup() = _LoadArchivedGroup;
} 