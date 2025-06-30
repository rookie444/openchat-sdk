import 'package:flutter/material.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/services/emotion_service.dart';
import 'package:openchat_client/src/rust/api/model/ffi_emotion_model.dart';
import 'chat_list_emoji_popview_widget.dart';

/// 聊天输入框组件
class ChatListInputWidget extends StatelessWidget {
  // 输入相关
  final TextEditingController textController;
  final FocusNode focusNode;
  final ValueNotifier<bool> canSendMessage;

  // 状态管理
  final ValueNotifier<bool> showBottomOptions;
  final ValueNotifier<bool> showEmojiPicker;

  // 回调函数
  final VoidCallback onSendTextMessage;
  final VoidCallback onScrollToBottom;
  final Function(int, int, String) onEmojiSelected;
  final VoidCallback onDeleteLastCharacter;
  final Function(FfiEmoticonBase) onSendEmoticonMessage;
  final Function(String) onBottomOptionTap;
  final Function(String) onStateButtonTap;

  const ChatListInputWidget({
    super.key,
    required this.textController,
    required this.focusNode,
    required this.canSendMessage,
    required this.showBottomOptions,
    required this.showEmojiPicker,
    required this.onSendTextMessage,
    required this.onScrollToBottom,
    required this.onEmojiSelected,
    required this.onDeleteLastCharacter,
    required this.onSendEmoticonMessage,
    required this.onBottomOptionTap,
    required this.onStateButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 主输入行
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                // 添加按钮
                _buildAddButton(),
                const SizedBox(width: 8),
                // 输入框容器（包含文本输入和表情按钮）
                Expanded(child: _buildInputContainer(context)),
                const SizedBox(width: 8),
                // 发送按钮
                _buildSendButton(),
              ],
            ),
          ),
          // 底部功能区
          _buildBottomOptions(),
          // 表情选择器
          _buildEmojiPicker(),
          // 底部安全区域
          Container(
            height: MediaQuery.of(context).padding.bottom,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  /// 构建添加按钮
  Widget _buildAddButton() {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        shape: BoxShape.circle,
      ),
      child: ValueListenableBuilder<bool>(
        valueListenable: showBottomOptions,
        builder: (context, showOptions, child) {
          return IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              showOptions ? Icons.close : Icons.add,
              color: Colors.grey,
              size: 20,
            ),
            onPressed: () {
              showBottomOptions.value = !showBottomOptions.value;
              // 显示+号弹窗时，隐藏表情选择器
              if (showBottomOptions.value && showEmojiPicker.value) {
                showEmojiPicker.value = false;
              }

              // 显示+号弹窗时取消键盘焦点
              if (showBottomOptions.value) {
                focusNode.unfocus();
              }

              // 🔥 修复：动画完成后滚动到底部
              if (showBottomOptions.value) {
                Future.delayed(const Duration(milliseconds: 350), () {
                  onScrollToBottom();
                });
              }
            },
          );
        },
      ),
    );
  }

  /// 构建输入框容器（包含文本输入和表情按钮）
  Widget _buildInputContainer(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 确保点击输入框时能获得焦点并显示键盘
        focusNode.requestFocus();

        // 延迟滚动到底部，等待键盘显示
        Future.delayed(const Duration(milliseconds: 400), () {
          onScrollToBottom();
        });
      },
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 30,
          maxHeight: 120, // 5行的最大高度
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                controller: textController,
                focusNode: focusNode,
                decoration: const InputDecoration(
                  hintText: '输入消息（点击发送按钮发送）',
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 2),
                ),
                onSubmitted: (text) {
                  // 在多行模式下，Enter键默认为换行
                  // 用户需要点击发送按钮来发送消息
                },
                onChanged: (text) {
                  // 文本变化时不会触发整个页面重新构建
                },
                onTap: () {
                  // TextField被点击时也滚动到底部
                  Future.delayed(const Duration(milliseconds: 400), () {
                    onScrollToBottom();
                  });
                },
                textInputAction: TextInputAction.newline,
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.2,
                  fontFamilyFallback: [
                    'Apple Color Emoji',
                    'Noto Color Emoji',
                    'Segoe UI Emoji',
                    'Noto Emoji',
                  ],
                ),
              ),
            ),
            const SizedBox(width: 4),
            // 表情按钮
            _buildEmojiButton(),
          ],
        ),
      ),
    );
  }

  /// 构建表情按钮（内嵌在输入框中）
  Widget _buildEmojiButton() {
    return ValueListenableBuilder<bool>(
      valueListenable: showEmojiPicker,
      builder: (context, showEmoji, child) {
        return IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(
            minWidth: 24,
            minHeight: 24,
            maxWidth: 28,
            maxHeight: 28,
          ),
          icon: Icon(
            showEmoji ? Icons.keyboard : Icons.sentiment_satisfied_alt_outlined,
            color: Colors.grey[600],
            size: 20,
          ),
          onPressed: () {
            final willShowEmoji = !showEmojiPicker.value;

            showEmojiPicker.value = willShowEmoji;
            // 显示表情选择器时隐藏底部功能区
            if (showEmojiPicker.value && showBottomOptions.value) {
              showBottomOptions.value = false;
            }

            // 管理输入框焦点 - 使用延迟避免冲突
            Future.delayed(const Duration(milliseconds: 100), () {
              if (willShowEmoji) {
                // 显示表情选择器时移除焦点（隐藏键盘）
                focusNode.unfocus();
              } else {
                // 隐藏表情选择器时恢复焦点（显示键盘）
                focusNode.requestFocus();
              }
            });

            // 🔥 修复：动画完成后滚动到底部
            if (willShowEmoji) {
              Future.delayed(const Duration(milliseconds: 350), () {
                onScrollToBottom();
              });
            }
          },
        );
      },
    );
  }

  /// 构建发送按钮
  Widget _buildSendButton() {
    return ValueListenableBuilder<bool>(
      valueListenable: canSendMessage,
      builder: (context, canSend, child) {
        return Container(
          width: 36,
          constraints: const BoxConstraints(minHeight: 36),
          decoration: BoxDecoration(
            color: canSend ? Colors.blue : Colors.grey[100],
            shape: BoxShape.circle,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(18),
              onTap: canSend ? onSendTextMessage : null,
              child: Container(
                width: 36,
                height: 36,
                child: Icon(
                  canSend ? Icons.send : Icons.mic,
                  color: canSend ? Colors.white : Colors.grey,
                  size: 20,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// 构建底部功能区
  Widget _buildBottomOptions() {
    return ValueListenableBuilder<bool>(
      valueListenable: showBottomOptions,
      builder: (context, showOptions, child) {
        // 获取键盘高度，如果没有键盘则使用默认高度
        final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
        final targetHeight =
            keyboardHeight > 0 ? keyboardHeight : 280.0; // 默认280px与表情选择器一致

        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          height: showOptions ? targetHeight : 0,
          padding:
              showOptions
                  ? const EdgeInsets.symmetric(horizontal: 20, vertical: 16)
                  : EdgeInsets.zero,
          child: showOptions ? child : null,
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // 第一行：基础功能
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBottomOption(Icons.image, '图片'),
              _buildBottomOption(Icons.camera_alt, '拍摄'),
              _buildBottomOption(Icons.person, '名片'),
              _buildBottomOption(Icons.folder, '文件'),
            ],
          ),
          // 第二行：支付功能
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBottomOption(Icons.card_giftcard, '红包'),
              _buildBottomOption(Icons.account_balance_wallet, '转账'),
              _buildBottomOption(Icons.reply, '测试引用窗'),
              _buildBottomOption(Icons.more_horiz, '更多功能'),
            ],
          ),
        ],
      ),
    );
  }

  /// 构建底部选项按钮
  Widget _buildBottomOption(IconData icon, String label) {
    return GestureDetector(
      onTap: () => onBottomOptionTap(label),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.grey[600], size: 24),
          ),
          const SizedBox(height: 4),
          Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 11)),
        ],
      ),
    );
  }

  /// 构建表情选择器
  Widget _buildEmojiPicker() {
    return ValueListenableBuilder<bool>(
      valueListenable: showEmojiPicker,
      builder: (context, showEmoji, child) {
        // 获取键盘高度，如果没有键盘则使用默认高度
        final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
        final targetHeight =
            keyboardHeight > 0 ? keyboardHeight : 280.0; // 默认280px与功能区一致

        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          height: showEmoji ? targetHeight : 0,
          child: showEmoji ? child : null,
        );
      },
      child: ChatListEmojiPopviewWidget(
        onEmojiSelected: onEmojiSelected,
        onDelete: onDeleteLastCharacter,
        onClose: () {
          showEmojiPicker.value = false;
          // 恢复键盘焦点
          Future.delayed(const Duration(milliseconds: 100), () {
            focusNode.requestFocus();
          });
        },
        emoticonInfoArray: EmotionService().allEmoticonArray,
        isShowDice: true,
        isShowAnimatedGame: true,
        onMediaItemTap: onSendEmoticonMessage,
      ),
    );
  }
}
