import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../common/ffi.dart';

part '../../../../generated/src/features/chat/blocs/chat_sessions_editing_event.freezed.dart';

@freezed
class ChatSessionsEditingEvent with _$ChatSessionsEditingEvent {
  const factory ChatSessionsEditingEvent.loadSessions({
    required List<FfiConversation> sessions,
    @Default([]) List<String> initialSelectedIds,
  }) = _LoadSessions;

  const factory ChatSessionsEditingEvent.toggleSelection({
    required String conversationId,
  }) = _ToggleSelection;

  const factory ChatSessionsEditingEvent.selectAll() = _SelectAll;

  const factory ChatSessionsEditingEvent.deselectAll() = _DeselectAll;

  const factory ChatSessionsEditingEvent.markSelectedAsRead() =
      _MarkSelectedAsRead;

  const factory ChatSessionsEditingEvent.deleteSelected() = _DeleteSelected;

  const factory ChatSessionsEditingEvent.unarchiveSelected() = _UnarchiveSelected;

  const factory ChatSessionsEditingEvent.updateSearchQuery({
    required String query,
  }) = _UpdateSearchQuery;
}
