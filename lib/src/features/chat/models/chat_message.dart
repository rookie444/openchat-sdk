import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:openchat_client/src/common/ffi.dart';

part '../../../../generated/src/features/chat/models/chat_message.freezed.dart';
part '../../../../generated/src/features/chat/models/chat_message.g.dart';

// /// 消息类型枚举
// enum MessageType {
//   text, // 文本消息
//   image, // 图片消息
//   voice,
//   video,
//   file,
//   location,
//   contact,
//   system,
// }

// /// 消息状态枚举
// enum MessageStatus {
//   sending, // 发送中
//   sent, // 已发送
//   delivered, // 已送达
//   read, // 已读
//   failed, // 发送失败
// }

// /// 聊天消息模型
// @freezed
// class ChatMessage with _$ChatMessage {
//   const ChatMessage._(); // 添加私有构造函数用于定义getter

//   const factory ChatMessage({
//     required int id, // 消息ID
//     required String conversationId, // 会话ID
//     required int conversationType, // 会话类型
//     required String content, // 消息内容
//     required bool isMe, // 是否为自己发送的消息
//     required DateTime timestamp, // 消息时间戳
//     required int senderId, // 发送者ID
//     required String senderName, // 发送者名称
//     String? senderAvatar, // 发送者头像URL
//     @Default(false) bool isRead, // 是否已读
//     @Default(MessageType.text) MessageType type, // 消息类型
//     @Default(MessageStatus.sent) MessageStatus status, // 消息状态

//     Map<String, dynamic>? metadata,
//   }) = _ChatMessage;

//   /// 从JSON创建消息实例
//   factory ChatMessage.fromJson(Map<String, dynamic> json) =>
//       _$ChatMessageFromJson(json);

//   /// sessionId getter (用于在BLoC中方便访问会话ID)
//   String get sessionId => conversationId; // 保持一致性，返回conversationId

//   /// isFromMe getter (用于与之前代码兼容)
//   bool get isFromMe => isMe;

//   /// sentTime getter (用于与之前代码兼容)
//   DateTime get sentTime => timestamp;
// }
// 聊天消息模型
@freezed
class ChatMessage with _$ChatMessage {
  const ChatMessage._(); // 添加私有构造函数用于定义getter

  const factory ChatMessage({
    required FfiMessageModel ffiModel, // 消息ID
    dynamic contentObj
  }) = _ChatMessage;

  /// 从JSON创建消息实例
  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);

  int get id => ffiModel.common.flag;
  int get msgId => ffiModel.common.msgId;
  FfiChatType get chatType => ffiModel.common.chatType;
  FfiMsgType get type => ffiModel.common.msgType;
  int get senderId => ffiModel.senderUser.senderUid;
  String get senderName => ffiModel.senderUser.senderNickName;
  String get senderAvatar => ffiModel.senderUser.senderAvatar ?? "";
  bool get isMe => ffiModel.isSendByMe;
  FfiMsgStatus get status => ffiModel.status;
  DateTime get timestamp => DateTime.fromMillisecondsSinceEpoch(ffiModel.common.sendTime);
  FfiImageMessageContent get imageContent => contentObj as FfiImageMessageContent;
  FfiTextMessageContent get textContent => contentObj as FfiTextMessageContent;
  
}
