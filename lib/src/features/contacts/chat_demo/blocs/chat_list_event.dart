import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openchat_client/src/rust/api/model/user.dart';
import '../models/chat_message.dart';
import '../../../../common/ffi.dart';
part '../../../../../generated/src/features/contacts/chat_demo/blocs/chat_list_event.freezed.dart';

@freezed
class ChatListEvent with _$ChatListEvent {
  // 初始化聊天详情，加载会话信息和消息历史
  const factory ChatListEvent.initialized(
    FfiChatType chatType,
    int targetId,
    List<ChatMessage>? messagesToForward,
  ) = _Initialized;

  // 加载更多历史消息
  const factory ChatListEvent.loadMoreMessages() = _LoadMoreMessages;

  // 输入文本变更
  const factory ChatListEvent.messageInputChanged(String text) =
      _MessageInputChanged;

  // 发送文本消息
  const factory ChatListEvent.sendTextMessage() = _SendTextMessage;

  // 发送图片消息
  const factory ChatListEvent.sendImageMessage(
    FfiImageMessageContent imageMessageContent,
  ) = _SendImageMessage;

  // 发送名片消息
  const factory ChatListEvent.sendNameCardMessage(
    FfiNameCardMessageContent nameCardMessageContent,
  ) = _SendNameCardMessage;

  // 发送红包消息
  const factory ChatListEvent.sendRedPacketMessage(
    FfiRedPacketMessageContent redPacketMessageContent,
  ) = _SendRedPacketMessage;

  // 发送视频消息
  const factory ChatListEvent.sendVideoMessage(
    FfiVideoMessageContent videoMessageContent,
  ) = _SendVideoMessage;

  // 发送文件消息
  const factory ChatListEvent.sendFileMessage(
    FfiFileMessageContent fileMessageContent,
  ) = _SendFileMessage;

  // 发送动态图片消息
  const factory ChatListEvent.sendDynamicImageMessage(
    FfiDynamicImageMessageContent dynamicImageMessageContent,
  ) = _SendDynamicImageMessage;

  // 发送骰子消息
  const factory ChatListEvent.sendDiceMessage(
    FfiDiceMessageContent diceMessageContent,
  ) = _SendDiceMessage;

  // 发送音频消息
  const factory ChatListEvent.sendAudioMessage(
    FfiAudioMessageContent audioMessageContent,
  ) = _SendAudioMessage;

  // 发送转账消息
  const factory ChatListEvent.sendTransferMessage(
    FfiChatTransferMessageContent transferMessageContent,
  ) = _SendTransferMessage;

  // 发送系统消息
  const factory ChatListEvent.sendSystemMessage(
    FfiSystemMessageContent systemMessageContent,
  ) = _SendSystemMessage;

  // 发送游戏消息
  const factory ChatListEvent.sendGameMessage(
    FfiAnmatedMessageContent gameMessageContent,
  ) = _SendGameMessage;

  // 接收新消息
  const factory ChatListEvent.messageReceived(ChatMessage message) =
      _MessageReceived;

  // 消息状态更新（如：已发送、已读等）
  const factory ChatListEvent.messageStatusUpdated(
    String messageId,
    FfiMsgStatus status,
  ) = _MessageStatusUpdated;

  // 重试发送失败的消息
  const factory ChatListEvent.retryMessage(int messageId) = _RetryMessage;

  // 删除消息
  const factory ChatListEvent.deleteMessage(int messageId) = _DeleteMessage;

  // 批量接收新消息
  const factory ChatListEvent.multipleMessagesReceived(
    List<ChatMessage> messages,
  ) = _MultipleMessagesReceived;

  // 用户信息更新
  const factory ChatListEvent.userInfoUpdated(FfiUser user) = _UserInfoUpdated;

  // 开始回复消息
  const factory ChatListEvent.startReply(ChatMessage message) = _StartReply;

  // 取消回复
  const factory ChatListEvent.cancelReply() = _CancelReply;

  // 发送回复消息
  const factory ChatListEvent.sendReplyMessage() = _SendReplyMessage;

  // 清除转发消息
  const factory ChatListEvent.clearForwardMessages() = _ClearForwardMessages;
}
