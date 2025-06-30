import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/chat_session.dart';
import '../../../common/ffi.dart';

part '../../../../generated/src/features/chat/blocs/chat_sessions_state.freezed.dart';

/// 聊天会话列表状态
@freezed
class ChatSessionsState with _$ChatSessionsState {
  /// 初始状态
  const factory ChatSessionsState.initial() = _Initial;

  /// 加载中状态
  const factory ChatSessionsState.loading() = _Loading;

  /// 加载成功状态
  const factory ChatSessionsState.success({
    required List<FfiConversation> sessions,
    @Default(false) bool isEditing,
  }) = _Success;

  /// 加载失败状态
  const factory ChatSessionsState.failure({required String errorMessage}) =
      _Failure;
}
