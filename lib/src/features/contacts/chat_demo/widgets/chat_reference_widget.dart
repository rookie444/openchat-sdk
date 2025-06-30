import 'package:flutter/material.dart';
import '../../../../rust/api/model/ffi_message_common.dart';

/// 聊天引用消息组件
/// 用于显示回复引用的小组件
class ChatReferenceWidget extends StatelessWidget {
  final FfiReferenceObj refObj;
  final bool isMe;

  const ChatReferenceWidget({
    super.key,
    required this.refObj,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(bottom: 4),
      constraints: const BoxConstraints(
        maxWidth: double.infinity, // 移除固定宽度限制
        minWidth: 120,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: isMe ? const Color(0xFFb5d6f7) : const Color(0xFFc8e2fd),
        shape: BoxShape.rectangle,
      ),
      child: IntrinsicWidth(
        child: Row(
          mainAxisSize: MainAxisSize.min, // 使用最小尺寸
          children: [
            Container(
              width: 2,
              margin: const EdgeInsets.symmetric(vertical: 4),
              color: Colors.blue,
            ),
            const SizedBox(width: 8),
            Flexible(
              // 使用Flexible允许内容自适应
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    refObj.nickname.isEmpty ? '你' : refObj.nickname,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    refObj.content,
                    style: const TextStyle(fontSize: 12),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8), // 右侧留一些空间
          ],
        ),
      ),
    );
  }
}
