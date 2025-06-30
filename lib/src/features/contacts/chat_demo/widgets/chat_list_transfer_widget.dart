import 'package:flutter/material.dart';
import 'package:openchat_client/src/core/theme/colors.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_transfer.dart';
import 'package:openchat_client/src/rust/api/model/ffi_message_common.dart';

/// 聊天列表转账组件
class ChatListTransferWidget extends StatelessWidget {
  final ChatMessageTransferModel message;
  final VoidCallback? onTap;

  const ChatListTransferWidget({super.key, required this.message, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _isClaimable() ? onTap : null,
      child: Container(
        width: 260,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: AppColors.c_787878.withValues(alpha: 0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              // 背景图片
              Positioned.fill(
                child: Image.asset(
                  _getBackgroundImage(),
                  fit: BoxFit.fill,
                  errorBuilder: (context, error, stackTrace) {
                    // 如果图片加载失败，使用渐变色作为备用
                    return Container(
                      decoration: BoxDecoration(
                        gradient: _getRedpacketGradient(),
                      ),
                    );
                  },
                ),
              ),
              // 内容层
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: [
                      // 上层：左边图片 + 右边标题副标题
                      Container(
                        width: 260,
                        height: 60,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            // 左边居中图片
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: Image.asset(
                                'assets/images/transfer/chat_transfer_unreceive@2x.png',
                                width: 40,
                                height: 40,
                              ),
                            ),
                            const SizedBox(width: 12),
                            // 右边标题副标题
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // 主标题
                                  Text(
                                    '2.00 C ',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      shadows: [
                                        Shadow(
                                          offset: Offset(0, 1),
                                          blurRadius: 2,
                                          color: Colors.black26,
                                        ),
                                      ],
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 4),
                                  // 副标题
                                  Text(
                                    _getTransferSubtitle(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      shadows: const [
                                        Shadow(
                                          offset: Offset(0, 1),
                                          blurRadius: 2,
                                          color: Colors.black26,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // 下层：文本 + 时间 + 状态图标
                      Container(
                        width: 260,
                        height: 25,
                        padding: const EdgeInsets.only(top: 2),
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            // 左边文本（金额）换成拼接文本 金额+单位 不用richText
                            Text(
                                'OCM IM红包 T+0钱包',
                              style: TextStyle(
                                color: AppColors.c_787878,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Expanded(child: SizedBox()),

                            // 中间时间
                            Text(
                              _getTimeText(),
                              style: TextStyle(
                                color: AppColors.c_787878,
                                fontSize: 10,
                              ),
                            ),


                            // 右边状态图标
                            if (message.isMe) ...[const SizedBox(width: 8), _buildStatusIcon(), const SizedBox(width: 2)],
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 获取背景图片路径
  String _getBackgroundImage() {
    final isMe = message.isMe;

   return isMe
         ? 'assets/images/transfer/chat_transfer_bg_send_unopen@2x.png'
          : 'assets/images/transfer/chat_transfer_bg_receive_unopen@2x.png';
  }

  /// 获取红包渐变色（备用）
  LinearGradient _getRedpacketGradient() {
    final status = message.status ?? 'unclaimed';

    switch (status) {
      case 'claimed':
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF9E9E9E), Color(0xFF616161)],
        );
      case 'expired':
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFFF9800), Color(0xFFE65100)],
        );
      default:
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFE53935), Color(0xFFB71C1C)],
        );
    }
  }

  /// 获取转账副标题  
  String _getTransferSubtitle() {  
    return message.isMe ? '你收到了一笔转账' : '你发了一笔转账';
  }

  /// 判断是否可以领取
  bool _isClaimable() {
    final status = message.status ?? 'unclaimed';
    return status == 'unclaimed';
  }

  /// 获取时间文本
  String _getTimeText() {
    final now = DateTime.now();
    final messageTime = message.timestamp;
    final difference = now.difference(messageTime);

    if (difference.inMinutes < 1) {
      return '刚刚';
    } else if (difference.inHours < 1) {
      return '${difference.inMinutes}分钟前';
    } else if (difference.inDays < 1) {
      return '${messageTime.hour.toString().padLeft(2, '0')}:${messageTime.minute.toString().padLeft(2, '0')}';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}天前';
    } else {
      return '${messageTime.month}/${messageTime.day}';
    }
  }

  /// 构建状态图标  
 /// 构建状态图标
  Widget _buildStatusIcon() {
    final status = message.status;

    switch (status) {
      case FfiMsgStatus.sending:
        return Container(
          width: 14,
          height: 10,
          color: Colors.transparent,
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/message_status/msg_status_sending@2x.png',
            width: 10,
            height: 10,
            fit: BoxFit.contain,
          ),
        );
      case FfiMsgStatus.sent:
        return Container(
          width: 14,
          height: 10,
          color: Colors.transparent,
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/message_status/msg_status_sending@2x.png',
            width: 10,
            height: 10,
            fit: BoxFit.contain,
          ),
        );
      case FfiMsgStatus.received:
        return Container(
          width: 14,
          height: 10,
          color: Colors.transparent,
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/message_status/msg_status_received@2x.png',
            width: 10,
            height: 10,
            fit: BoxFit.contain,
          ),
        );
      default:
        return Container(
          width: 14,
          height: 10,
          color: Colors.transparent,
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/message_status/msg_status_readed@2x.png',
            width: 10,
            height: 10,
            fit: BoxFit.contain,
          ),
        );
    }
  }
}
