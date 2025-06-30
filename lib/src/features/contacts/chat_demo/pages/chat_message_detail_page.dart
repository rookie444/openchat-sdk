import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';
import '../models/chat_message_audio.dart';
import '../models/chat_message_dice.dart';
import '../models/chat_message_file.dart';
import '../models/chat_message_image.dart';
import '../models/chat_message_namecard.dart';
import '../models/chat_message_redpacket.dart';
import '../models/chat_message_transfer.dart';
import '../models/chat_message_video.dart';
import '../widgets/chat_list_message_widget.dart';
import '../../../../rust/api/model/ffi_message_common.dart';

/// 聊天消息详情页面
class ChatMessageDetailPage extends StatelessWidget {
  final ChatMessage message;

  const ChatMessageDetailPage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('消息详情'),
        leading: IconButton(
          icon: Image.asset(
            'assets/images/common/common_icon_blue_back.webp',
            width: 24,
            height: 24,
            fit: BoxFit.fill,
          ),
          onPressed: () => context.pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.grey.shade50,
        child: Column(
          children: [
            // 消息发送时间显示
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    _formatMonthDay(message.timestamp),
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                ),
              ),
            ),

            // 消息展示区域
            Expanded(
              child: SingleChildScrollView(
                // padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    // 消息气泡
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: ChatListMessageWidget(
                        message: message,
                        showAvatar: false,
                        showNickname: false,
                        targetId: message.targetId,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // 消息信息卡片
                    // _buildMessageInfoCard(),
                    _BuildMsgInfoList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _BuildMsgInfoList() {
    return Column(
      children: [
        Container(
          height: 40,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Image.asset(
                'assets/images/message_status/msg_status_readed@2x.png',
                width: 12,
                height: 12,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 8),
              Text('查看时间'),
              Spacer(),
              Text('- - '),
            ],
          ),
        ),

        Container(
          height: 40,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Image.asset(
                'assets/images/message_status/msg_status_received@2x.png',
                width: 12,
                height: 12,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 8),

              Text('送达时间'),
              Spacer(),
              Text('- - '),
            ],
          ),
        ),
      ],
    );
  }

  /// 构建消息信息卡片
  Widget _buildMessageInfoCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '消息信息',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),

          // 发送时间
          _buildInfoRow('发送时间', _formatTime(message.timestamp)),
          const SizedBox(height: 8),

          // 发送者
          _buildInfoRow('发送者', message.senderName),
          const SizedBox(height: 8),

          // 消息状态
          _buildInfoRow('状态', _getStatusText(message.status)),
          const SizedBox(height: 8),

          // 消息类型
          _buildInfoRow('类型', _getMessageTypeText(message)),

          // 如果是引用消息，显示引用信息
          if (message.refObj != null) ...[
            const SizedBox(height: 8),
            _buildInfoRow(
              '引用消息',
              '${message.refObj!.nickname}: ${message.refObj!.content}',
            ),
          ],
        ],
      ),
    );
  }

  /// 构建信息行
  Widget _buildInfoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 80,
          child: Text(
            label,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ),
      ],
    );
  }

  /// 格式化时间
  String _formatTime(DateTime timestamp) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final messageDate = DateTime(
      timestamp.year,
      timestamp.month,
      timestamp.day,
    );

    if (messageDate == today) {
      return '今天 ${_formatTimeOnly(timestamp)}';
    } else if (messageDate == today.subtract(const Duration(days: 1))) {
      return '昨天 ${_formatTimeOnly(timestamp)}';
    } else {
      return '${_formatDate(timestamp)} ${_formatTimeOnly(timestamp)}';
    }
  }

  /// 格式化日期
  String _formatDate(DateTime timestamp) {
    return '${timestamp.year}-${timestamp.month.toString().padLeft(2, '0')}-${timestamp.day.toString().padLeft(2, '0')}';
  }

  /// 格式化时间
  String _formatTimeOnly(DateTime timestamp) {
    return '${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}';
  }

  /// 获取状态文本
  String _getStatusText(FfiMsgStatus status) {
    switch (status) {
      case FfiMsgStatus.sending:
        return '发送中';
      case FfiMsgStatus.sent:
        return '已发送';
      case FfiMsgStatus.received:
        return '已送达';
      case FfiMsgStatus.read:
        return '已读';
      case FfiMsgStatus.failed:
        return '发送失败';
    }
  }

  /// 获取消息类型文本
  String _getMessageTypeText(ChatMessage message) {
    if (message is ChatMessageTextModel) {
      return '文本消息';
    } else if (message is ChatMessageImageModel) {
      return '图片消息';
    } else if (message is ChatMessageAudioModel) {
      return '语音消息';
    } else if (message is ChatMessageVideoModel) {
      return '视频消息';
    } else if (message is ChatMessageFileModel) {
      return '文件消息';
    } else if (message is ChatMessageNamecardModel) {
      return '名片消息';
    } else if (message is ChatMessageRedpacketModel) {
      return '红包消息';
    } else if (message is ChatMessageDiceModel) {
      return '骰子消息';
    } else if (message is ChatMessageTransferModel) {
      return '转账消息';
    }
    return '未知类型';
  }

  /// 格式化月日
  String _formatMonthDay(DateTime timestamp) {
    return '${timestamp.month.toString().padLeft(2, '')}月${timestamp.day.toString().padLeft(2, '0')}日';
  }
}
