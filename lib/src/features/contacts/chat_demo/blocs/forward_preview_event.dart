import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';

part '../../../../../generated/src/features/contacts/chat_demo/blocs/forward_preview_event.freezed.dart';

/// 转发预览事件
@freezed
class ForwardPreviewEvent with _$ForwardPreviewEvent {
  /// 初始化转发预览
  const factory ForwardPreviewEvent.initialized({
    required List<ChatMessage> messagesToForward,
  }) = _Initialized;

  /// 切换消息选中状态
  const factory ForwardPreviewEvent.toggleMessageSelection({
    required int messageId,
  }) = _ToggleMessageSelection;

  /// 全选所有消息
  const factory ForwardPreviewEvent.selectAll() = _SelectAll;

  /// 取消全选
  const factory ForwardPreviewEvent.deselectAll() = _DeselectAll;

  /// 确认转发
  const factory ForwardPreviewEvent.confirmForward() = _ConfirmForward;

  /// 取消转发
  const factory ForwardPreviewEvent.cancelForward() = _CancelForward;
}
