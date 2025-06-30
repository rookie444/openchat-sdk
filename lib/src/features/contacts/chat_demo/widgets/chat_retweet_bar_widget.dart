import 'package:flutter/material.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';
import 'package:openchat_client/src/common/ffi.dart';
import 'forward_preview_dialog.dart';

/// 转发栏组件
class ChatRetweetBarWidget extends StatefulWidget {
  final List<ChatMessage> messagesToForward;
  final VoidCallback? onClose;
  final VoidCallback? onPreviewTap;
  final Function(List<ChatMessage>)? onMessagesUpdated;
  final FfiChatType? chatType;
  final int? targetId;
  final VoidCallback? onModifyRecipient;

  const ChatRetweetBarWidget({
    super.key,
    required this.messagesToForward,
    this.onClose,
    this.onPreviewTap,
    this.onMessagesUpdated,
    this.chatType,
    this.targetId,
    this.onModifyRecipient,
  });

  @override
  State<ChatRetweetBarWidget> createState() => _ChatRetweetBarWidgetState();
}

class _ChatRetweetBarWidgetState extends State<ChatRetweetBarWidget> {
  List<ChatMessage> _currentMessages = [];

  @override
  void initState() {
    super.initState();
    _currentMessages = List.from(widget.messagesToForward);
  }

  @override
  void didUpdateWidget(ChatRetweetBarWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.messagesToForward != widget.messagesToForward) {
      _currentMessages = List.from(widget.messagesToForward);
    }
  }

  /// 处理转发预览
  Future<void> _handleForwardPreview() async {
    if (widget.onPreviewTap != null) {
      widget.onPreviewTap!();
      return;
    }

    // 默认预览行为：显示转发预览弹窗
    final selectedMessages = await ForwardPreviewDialog.show(
      context,
      _currentMessages,
      chatType: widget.chatType,
      targetId: widget.targetId,
      onModifyRecipient: widget.onModifyRecipient,
    );

    if (selectedMessages != null) {
      setState(() {
        _currentMessages = selectedMessages;
      });

      // 通知父组件消息已更新
      widget.onMessagesUpdated?.call(selectedMessages);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          // 转发图标
          Image.asset(
            'assets/images/common/common_msg_retweet.webp',
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 8),
          Container(width: 1, height: 32, color: const Color(0xFF178AFF)),
          const SizedBox(width: 8),
          // 转发文本
          Expanded(
            child: GestureDetector(
              onTap: _handleForwardPreview,
              child: Text(
                '转发 ${_currentMessages.length} 条消息',
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF178AFF),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          // 关闭按钮
          GestureDetector(
            onTap: widget.onClose,
            child: Image.asset(
              'assets/images/common/msg_icon_close_blue.png',
              width: 28,
              height: 28,
            ),
          ),
        ],
      ),
    );
  }
}
