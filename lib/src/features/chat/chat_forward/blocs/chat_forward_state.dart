import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';
// import '../../models/chat_message.dart';
import '../../../../common/ffi.dart';

part '../../../../../generated/src/features/chat/chat_forward/blocs/chat_forward_state.freezed.dart';

/// 转发功能状态
@freezed
class ChatForwardState with _$ChatForwardState {
  /// 初始状态
  const factory ChatForwardState.initial() = _Initial;

  /// 加载中状态
  const factory ChatForwardState.loading() = _Loading;

  /// 成功状态
  const factory ChatForwardState.success({
    required List<ChatMessage> messagesToForward,
    required List<FfiConversation> recentSessions,
    required String searchQuery,
    required bool isSearching,
    FfiChatType? chatType,
    int? targetId,
  }) = _Success;

  /// 失败状态
  const factory ChatForwardState.failure({
    required List<ChatMessage> messagesToForward,
    required String errorMessage,
    FfiChatType? chatType,
    int? targetId,
  }) = _Failure;
}
