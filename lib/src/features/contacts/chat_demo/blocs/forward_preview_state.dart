import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';

part '../../../../../generated/src/features/contacts/chat_demo/blocs/forward_preview_state.freezed.dart';

/// 转发预览状态
@freezed
class ForwardPreviewState with _$ForwardPreviewState {
  /// 初始状态
  const factory ForwardPreviewState.initial() = _Initial;

  /// 加载中状态
  const factory ForwardPreviewState.loading() = _Loading;

  /// 成功状态
  const factory ForwardPreviewState.success({
    required List<ChatMessage> allMessages,
    required Set<int> selectedMessageIds,
    required int selectedCount,
  }) = _Success;

  /// 错误状态
  const factory ForwardPreviewState.error({required String errorMessage}) =
      _Error;
}
