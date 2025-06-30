import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// part '../../../../generated/src/features/chat/models/chat_session.freezed.dart';
// part '../../../../generated/src/features/chat/models/chat_session.g.dart';

// /// 会话类型枚举
// enum ChatSessionType {
//   single, // 单聊
//   group, // 群聊
//   channel, // 频道
// }

// /// 聊天会话模型
// @freezed
// class ChatSession with _$ChatSession {
//   const ChatSession._(); // 添加私有构造函数用于定义getter

//   const factory ChatSession({
//     required String conversationId, // 会话ID
//     required int conversationType, // 会话类型
//     required String name, // 会话名称（联系人名称或群名称）
//     required String lastMessage, // 最后一条消息内容
//     required DateTime lastMessageTime, // 最后一条消息时间
//     String? avatar, // 会话头像URL
//     required int unreadCount, // 未读消息数量
//     @Default(false) bool isTopPinned, // 是否置顶
//     @Default(false) bool isMuted, // 是否免打扰
//     @Default(ChatSessionType.single) ChatSessionType type, // 会话类型
//     Map<String, dynamic>? metadata, // 元数据
//   }) = _ChatSession;

//   /// 从JSON创建会话实例
//   factory ChatSession.fromJson(Map<String, dynamic> json) =>
//       _$ChatSessionFromJson(json);

//   /// 为兼容现有代码，提供id getter
//   String get id => conversationId;
// }
