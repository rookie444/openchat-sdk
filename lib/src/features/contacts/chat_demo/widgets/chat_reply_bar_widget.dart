import 'package:flutter/material.dart';
import '../models/chat_message.dart';
import '../models/chat_message_image.dart';
import '../models/chat_message_video.dart';
import '../models/chat_message_audio.dart';
import '../models/chat_message_file.dart';
import '../models/chat_message_namecard.dart';
import '../models/chat_message_redpacket.dart';
import '../models/chat_message_transfer.dart';
import '../models/chat_message_dice.dart';

/// 回复引用栏组件
class ChatReplyBarWidget extends StatelessWidget {
  final ChatMessage replyToMessage;
  final VoidCallback onClose;

  const ChatReplyBarWidget({
    super.key,
    required this.replyToMessage,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 54,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Row(
            children: [
              // 左侧内容区域
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 昵称
                    Text(
                      _getDisplayName(),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue[600],
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 2),
                    // 消息内容
                    Text(
                      _getMessageContent(),
                      style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              // 右侧关闭按钮
              GestureDetector(
                onTap: onClose,
                child: Image.asset(
                  'assets/images/common/msg_icon_close_blue.png',
                  width: 28,
                  height: 28,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            height: 54,
            width: 2,
            decoration: BoxDecoration(color: Colors.blue),
          ),
        ),
      ],
    );
  }

  /// 获取显示的昵称
  String _getDisplayName() {
    if (replyToMessage.isMe) {
      return '你';
    }
    return replyToMessage.senderName.isNotEmpty
        ? replyToMessage.senderName
        : '未知用户';
  }

  /// 获取消息内容显示文本
  String _getMessageContent() {
    if (replyToMessage is ChatMessageTextModel) {
      final textMessage = replyToMessage as ChatMessageTextModel;
      return textMessage.textContent.text;
    } else if (replyToMessage is ChatMessageImageModel) {
      return '[图片]';
    } else if (replyToMessage is ChatMessageVideoModel) {
      return '[视频]';
    } else if (replyToMessage is ChatMessageAudioModel) {
      return '[语音]';
    } else if (replyToMessage is ChatMessageFileModel) {
      return '[文件]';
    } else if (replyToMessage is ChatMessageNamecardModel) {
      return '[名片]';
    } else if (replyToMessage is ChatMessageRedpacketModel) {
      return '[红包]';
    } else if (replyToMessage is ChatMessageTransferModel) {
      return '[转账]';
    } else if (replyToMessage is ChatMessageDiceModel) {
      return '[骰子]';
    } else {
      return '[未知消息]';
    }
  }
}
