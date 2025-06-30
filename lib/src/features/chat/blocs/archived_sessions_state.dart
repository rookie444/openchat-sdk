import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/chat_session.dart';
import '../../../common/ffi.dart';

part '../../../../generated/src/features/chat/blocs/archived_sessions_state.freezed.dart';

/// 归档会话列表状态
@freezed
class ArchivedSessionsState with _$ArchivedSessionsState {
  /// 初始状态
  const factory ArchivedSessionsState.initial() = _Initial;

  /// 加载中状态
  const factory ArchivedSessionsState.loading() = _Loading;

  /// 加载成功状态
  const factory ArchivedSessionsState.success({
    required List<FfiConversation> sessions,
    @Default(false) bool isEditing,
  }) = _Success;

  /// 加载失败状态
  const factory ArchivedSessionsState.failure({required String errorMessage}) =
      _Failure;
}
