import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../common/ffi.dart';

part '../../../../generated/src/features/chat/blocs/chat_sessions_editing_state.freezed.dart';

@freezed
class ChatSessionsEditingState with _$ChatSessionsEditingState {
  const factory ChatSessionsEditingState.initial() = _Initial;

  const factory ChatSessionsEditingState.loading() = _Loading;

  const factory ChatSessionsEditingState.success({
    required List<FfiConversation> sessions,
    required List<String> selectedIds,
    @Default('') String searchQuery,
  }) = _Success;

  const factory ChatSessionsEditingState.failure({
    required String errorMessage,
  }) = _Failure;
}
