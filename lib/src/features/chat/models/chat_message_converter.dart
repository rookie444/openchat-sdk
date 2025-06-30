import 'package:openchat_client/src/common/ffi.dart';
import 'package:openchat_client/src/features/chat/models/chat_message.dart';
import 'package:openchat_client/src/features/chat/models/chat_session.dart';
import 'package:openchat_client/src/rust/api/model/chat.dart';
import 'package:openchat_client/src/rust/api/model/conversation.dart';
import 'dart:convert';


// /// 消息类型转换扩展
// extension FfiMessageTypeExtension on FfiMessageType {
//   MessageType toFlutterModel() {
//     switch (this) {
//       case FfiMessageType.text:
//         return MessageType.text;
//       case FfiMessageType.image:
//         return MessageType.image;
//       case FfiMessageType.voice:
//         return MessageType.voice;
//       case FfiMessageType.video:
//         return MessageType.video;
//       case FfiMessageType.file:
//         return MessageType.file;
//       case FfiMessageType.location:
//         return MessageType.location;
//       case FfiMessageType.contact:
//         return MessageType.contact;
//       case FfiMessageType.system:
//         return MessageType.system;
//     }
//   }
// }

// /// 消息状态转换扩展
// extension FfiMessageStatusExtension on FfiMessageStatus {
//   MessageStatus toFlutterModel() {
//     switch (this) {
//       case FfiMessageStatus.sending:
//         return MessageStatus.sending;
//       case FfiMessageStatus.sent:
//         return MessageStatus.sent;
//       case FfiMessageStatus.delivered:
//         return MessageStatus.delivered;
//       case FfiMessageStatus.read:
//         return MessageStatus.read;
//       case FfiMessageStatus.failed:
//         return MessageStatus.failed;
//     }
//   }
// }

// /// 消息模型转换扩展
// extension FfiChatMessageExtension on FfiChatMessage {
//   ChatMessage toFlutterModel() {
//     return ChatMessage(
//       id: id,
//       conversationId: conversationId,
//       conversationType: conversationType,
//       content: content,
//       isMe: isMe,
//       timestamp: DateTime.fromMillisecondsSinceEpoch(timestamp),
//       senderId: senderId,
//       senderName: senderName,
//       senderAvatar: senderAvatar,
//       isRead: isRead,
//       type: messageType.toFlutterModel(),
//       status: status.toFlutterModel(),
//     );
//   }
// }
/// 消息模型转换扩展
extension FfiChatMessageExtension on FfiMessageModel {
  ChatMessage toFlutterModel() {
    dynamic contentObj;
    if (this.contentObj == null && this.contentObj!.isEmpty) {
      return ChatMessage(
        ffiModel: this,
        contentObj: null,
      );
    }
    switch (this.common.msgType) {
      case FfiMsgType.text:
        try {
          final jsonObj = jsonDecode(this.contentObj!); // contentObj 是 JSON 字符串
          contentObj = FfiTextMessageContent.fromJson(jsonObj);
        } catch (e) {
          print('Failed to parse FfiTextMessageContent: $e');
          contentObj = null;
        }
        break;

      case FfiMsgType.image:
        try {
          final jsonObj = jsonDecode(this.contentObj!);
          contentObj = FfiImageMessageContent.fromJson(jsonObj);
        } catch (e) {
          print('Failed to parse FfiImageMessageContent: $e');
          contentObj = null;
        }
        break;

      default:
        contentObj = null;
        break;
    }

    return ChatMessage(
      ffiModel: this,
      contentObj: contentObj,
    );
  }
}

// /// 消息Flutter->FFI转换扩展
// extension ChatMessageExtension on ChatMessage {
//   FfiMessageType get ffiMessageType {
//     switch (type) {
//       case MessageType.text:
//         return FfiMessageType.text;
//       case MessageType.image:
//         return FfiMessageType.image;
//       case MessageType.voice:
//         return FfiMessageType.voice;
//       case MessageType.video:
//         return FfiMessageType.video;
//       case MessageType.file:
//         return FfiMessageType.file;
//       case MessageType.location:
//         return FfiMessageType.location;
//       case MessageType.contact:
//         return FfiMessageType.contact;
//       case MessageType.system:
//         return FfiMessageType.system;
//     }
//   }

//   FfiMessageStatus get ffiMessageStatus {
//     switch (status) {
//       case MessageStatus.sending:
//         return FfiMessageStatus.sending;
//       case MessageStatus.sent:
//         return FfiMessageStatus.sent;
//       case MessageStatus.delivered:
//         return FfiMessageStatus.delivered;
//       case MessageStatus.read:
//         return FfiMessageStatus.read;
//       case MessageStatus.failed:
//         return FfiMessageStatus.failed;
//     }
//   }
// }

/// 会话模型转换扩展
// extension FfiConversationExtension on FfiConversation {
//   ChatSession toFlutterModel() {
//     return ChatSession(
//       conversationId: conversationId,
//       conversationType: conversationType,
//       name: name,
//       lastMessage: lastMessage,
//       lastMessageTime: DateTime.fromMillisecondsSinceEpoch(lastMessageTime),
//       avatar: avatar,
//       unreadCount: unreadCount,
//       isTopPinned: isTopPinned,
//       isMuted: isMuted,
//       type: ChatSessionType.group,
//     );
//   }
// }

/// 会话类型转换
// extension ChatSessionTypeExtension on ChatSessionType {
//   int toConversationType() {
//     switch (this) {
//       case ChatSessionType.single:
//         return 0;
//       case ChatSessionType.group:
//         return 1;
//       case ChatSessionType.channel:
//         return 2;
//     }
//   }
// }
