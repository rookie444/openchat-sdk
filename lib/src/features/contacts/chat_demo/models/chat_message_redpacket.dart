//红包消息message 继承chat_message.dart
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';

class ChatMessageRedpacketModel extends ChatMessage {
   // 是否是群红包
   // 如果类型为普通红包，又没有指定收取人，则是单聊红包
  bool get isGroupRedPacket { 
        return false;
  }         

  // 红包状态
  MessageRedPacketStatus get redStatus { 
        return MessageRedPacketStatus.unknown;
  }

  // isExpired
  bool get isExpired { 
        return false;
  }
 
  // isCoverExpired
  bool get isCoverExpired { 
        return false;
  }

  // 红包类型
  MessageRedPacketType get redPacketType { 
        return MessageRedPacketType.unknown;
  }

  // isSendByMe
  bool get isSendByMe { 
        return false;
  }

  bool get isSpecificForMe { 
        return false;
  }

  bool get isReceiveByMe { 
        return false;
  }

  ChatMessageRedpacketModel({
    required super.ffiModel, 
    required super.contentObj,
  });

} 


 /// 0未打开，1已打开，2已领完，3已过期 枚举类 用于红包状态
enum MessageRedPacketStatus {   
        unClaimed , // 未打开（领取方、发送方共有状态）
        claimedByMe , // 已领取过红包（领取方，发送方共有状态）
        claimedByFinished , // 已领完（领取方，发送方共有状态）【自己没有领取，但是已经被被人领完了，单聊、群聊专属红包、群聊普通红包、群聊拼手气红包都适用】
        noRightClaimed , // 没有权限领取红包
        unknown  // 未知
}

enum MessageRedPacketType {   
    unknown , // = 0 
    specific , // = 1
    luckyDraw , // = 2
    normal , // = 3
}