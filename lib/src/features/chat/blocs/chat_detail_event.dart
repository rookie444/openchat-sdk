import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openchat_client/src/rust/api/model/ffi_message_common.dart';
import 'package:openchat_client/src/rust/api/model/user.dart';
import '../models/chat_message.dart';

part '../../../../generated/src/features/chat/blocs/chat_detail_event.freezed.dart';

@freezed
class ChatDetailEvent with _$ChatDetailEvent {
  // 初始化聊天详情，加载会话信息和消息历史
  const factory ChatDetailEvent.initialized(FfiChatType chatType, int targetId) =
      _Initialized;

  // 加载更多历史消息
  const factory ChatDetailEvent.loadMoreMessages() = _LoadMoreMessages;

  // 输入文本变更
  const factory ChatDetailEvent.messageInputChanged(String text) =
      _MessageInputChanged;

  // 发送文本消息
  const factory ChatDetailEvent.sendTextMessage() = _SendTextMessage;

  // 发送图片消息
  const factory ChatDetailEvent.sendImageMessage(String imagePath) =
      _SendImageMessage;

  // 接收新消息
  const factory ChatDetailEvent.messageReceived(ChatMessage message) =
      _MessageReceived;

  // 消息状态更新（如：已发送、已读等）
  const factory ChatDetailEvent.messageStatusUpdated(
    String messageId,
    FfiMsgStatus status,
  ) = _MessageStatusUpdated;

  // 重试发送失败的消息
  const factory ChatDetailEvent.retryMessage(int messageId) = _RetryMessage;

  // 删除消息
  const factory ChatDetailEvent.deleteMessage(int messageId) = _DeleteMessage;

  // 批量接收新消息
  const factory ChatDetailEvent.multipleMessagesReceived(
    List<ChatMessage> messages,
  ) = _MultipleMessagesReceived;

  // 用户信息更新
  const factory ChatDetailEvent.userInfoUpdated(FfiUser user) =
      _UserInfoUpdated;

  // 开始回复消息
  const factory ChatDetailEvent.startReply(ChatMessage message) = _StartReply;

  // 取消回复
  const factory ChatDetailEvent.cancelReply() = _CancelReply;
}
