import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:openchat_client/src/core/router/app_router.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/widgets/chat_list_message_widget.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/notifiers/forward_preview_notifier.dart';
import 'package:openchat_client/src/common/ffi.dart';

/// 转发预览弹窗 (底部面板样式)
class ForwardPreviewDialog extends ConsumerStatefulWidget {
  final List<ChatMessage> messagesToForward;
  final FfiChatType? chatType; // 新增：聊天类型
  final int? targetId; // 新增：目标ID
  final VoidCallback? onModifyRecipient; // 新增：修改接收方回调

  const ForwardPreviewDialog({
    super.key,
    required this.messagesToForward,
    this.chatType, // 新增参数
    this.targetId, // 新增参数
    this.onModifyRecipient, // 新增参数
  });

  @override
  ConsumerState<ForwardPreviewDialog> createState() =>
      _ForwardPreviewDialogState();

  static Future<List<ChatMessage>?> show(
    BuildContext context,
    List<ChatMessage> messagesToForward, {
    FfiChatType? chatType, // 新增参数
    int? targetId, // 新增参数
    VoidCallback? onModifyRecipient, // 新增参数
  }) {
    return showModalBottomSheet<List<ChatMessage>>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder:
          (context) => ForwardPreviewDialog(
            messagesToForward: messagesToForward,
            chatType: chatType,
            targetId: targetId,
            onModifyRecipient: onModifyRecipient,
          ),
    );
  }
}

class _ForwardPreviewDialogState extends ConsumerState<ForwardPreviewDialog> {
  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      // 使用 post frame callback 延迟初始化，避免在 build 生命周期修改 provider 状态
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref
            .read(forwardPreviewProvider.notifier)
            .initialize(widget.messagesToForward);
      });
      _initialized = true;
    }
  }

  /// 处理修改接收方
  void _handleModifyRecipient() {
    // 检查是否有必要的参数
    if (widget.chatType == null || widget.targetId == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('缺少聊天类型或目标ID参数')));
      return;
    }

    // 获取当前选中的消息
    final state = ref.read(forwardPreviewProvider);
    final selectedMessages = state.maybeWhen(
      success: (all, selectedIds, _) {
        return all.where((msg) => selectedIds.contains(msg.id)).toList();
      },
      orElse: () => widget.messagesToForward,
    );

    // 准备转发数据
    final forwardData = {
      'messages': selectedMessages,
      'chatType': widget.chatType,
      'targetId': widget.targetId,
    };

    // 调用清除转发的回调，隐藏当前页面的转发栏
    widget.onModifyRecipient?.call();

    // 关闭当前弹窗
    Navigator.of(context).pop();

    // 延迟一帧后导航到转发页面，确保弹窗完全关闭
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // 导航到转发页面
      context.push(AppRoutes.forward, extra: forwardData);
    });
  }

  /// 取消转发
  void _cancelForward() {
    // 调用清除转发的回调，隐藏当前页面的转发栏
    widget.onModifyRecipient?.call();

    // 关闭当前弹窗
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(forwardPreviewProvider);
    final notifier = ref.read(forwardPreviewProvider.notifier);

    final selectedCount = state.maybeWhen(
      success: (_, __, count) => count,
      orElse: () => 0,
    );
    final allMessages = state.maybeWhen(
      success: (all, __, ___) => all,
      orElse: () => widget.messagesToForward,
    );
    final selectedIds = state.maybeWhen(
      success: (_, ids, __) => ids,
      orElse: () => <int>{},
    );

    return Material(
      color: Colors.transparent,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.82,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ///header与content
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                    ),
                    height: 54,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 4),
                        Text(
                          '转发 $selectedCount 条消息',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '群昵称',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF787878),
                          ),
                        ),
                        SizedBox(height: 4),
                      ],
                    ),
                  ),

                  Container(
                    constraints: BoxConstraints(maxHeight: 342),
                    decoration: BoxDecoration(
                      color: Color(0xffedeef3),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                      ),
                    ),
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      itemCount: allMessages.length,
                      itemBuilder: (context, index) {
                        final message = allMessages[index];
                        final isSelected = selectedIds.contains(message.id);
                        return _buildForwardedMessageBubble(
                          message,
                          isSelected,
                          notifier,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),

            //操作选项列表
            Container(
              width: 180,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildForwardedMessageBubbleItem(
                    '修改接收方',
                    false,
                    _handleModifyRecipient,
                  ),
                  _buildForwardedMessageBubbleItem('保存转发选中', false, () {
                    final selectedMessages =
                        allMessages
                            .where((msg) => selectedIds.contains(msg.id))
                            .toList();
                    print('保存转发选中: ${selectedMessages.length} 条消息');
                    Navigator.of(context).pop(selectedMessages);
                  }),
                  _buildForwardedMessageBubbleItem('取消转发', true, () {
                    print('取消转发');
                    _cancelForward();
                  }),
                ],
              ),
            ),
            SizedBox(height: 137),
          ],
        ),
      ),
    );
  }

  Widget _buildForwardedMessageBubbleItem(
    String title,
    bool isCancel,
    VoidCallback onTap,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 33,
            child: GestureDetector(
              onTap: onTap,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: isCancel ? Colors.red : Color(0xFF000000),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          isCancel
              ? SizedBox()
              : Container(height: 1, color: Color(0xfff0f0f0)),
        ],
      ),
    );
  }

  /// 构建转发消息气泡
  Widget _buildForwardedMessageBubble(
    ChatMessage message,
    bool isSelected,
    ForwardPreviewNotifier notifier,
  ) {
    return Row(
      children: [
        // 可点击的选择图标
        GestureDetector(
          onTap: () => notifier.toggleMessageSelection(message.id),
          child: Image.asset(
            isSelected
                ? 'assets/images/common/common_contacts_icon_check_selected.webp'
                : 'assets/images/common/common_contacts_icon_check_select.webp',
            width: 20,
            height: 20,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: ChatListMessageWidget(
            message: message,
            targetId: 1111,
            isForwardPreview: true,
          ),
        ),
      ],
    );
  }
}
