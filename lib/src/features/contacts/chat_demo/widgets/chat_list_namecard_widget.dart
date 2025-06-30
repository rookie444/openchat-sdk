import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_namecard.dart';

/// 聊天列表名片组件
class ChatListNamecardWidget extends StatelessWidget {
  final ChatMessageNamecardModel message;
  final VoidCallback? onTap;

  const ChatListNamecardWidget({super.key, required this.message, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
        width: MediaQuery.of(context).size.width * 0.7,
        height: 80,
        color: Colors.transparent,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            // 头像 - 使用CachedNetworkImage提供更好的错误处理
            _buildAvatar(),
            const SizedBox(width: 12),

            // 昵称
            Expanded(
              child: Text(
                message.nameCardContent.nickName.isNotEmpty
                    ? message.nameCardContent.nickName
                    : '未知用户',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 12),

            // 名片标签
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 20,
              alignment: Alignment.center,
              child: const Text(
                //居中显示
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                '名片',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 构建头像Widget
  Widget _buildAvatar() {
    final hasIcon = message.nameCardContent.icon.isNotEmpty;

    if (!hasIcon) {
      return _buildDefaultAvatar();
    }

    return SizedBox(
      width: 40,
      height: 40,
      child: CachedNetworkImage(
        imageUrl: message.nameCardContent.icon,
        imageBuilder:
            (context, imageProvider) =>
                CircleAvatar(radius: 20, backgroundImage: imageProvider),
        placeholder:
            (context, url) => CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[300],
              child: SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.grey[600]!),
                ),
              ),
            ),
        errorWidget: (context, url, error) {
          print('❌ 名片头像加载失败: ${message.nameCardContent.icon} - $error');
          return _buildDefaultAvatar();
        },
      ),
    );
  }

  /// 构建默认头像
  Widget _buildDefaultAvatar() {
    final nickName = message.nameCardContent.nickName;
    final firstLetter = nickName.isNotEmpty ? nickName[0].toUpperCase() : '?';

    return CircleAvatar(
      radius: 20,
      backgroundColor: _getAvatarColor(message.nameCardContent.uid),
      child: Text(
        firstLetter,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  /// 根据用户ID生成头像颜色
  Color _getAvatarColor(int uid) {
    final colors = [
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.red,
      Colors.teal,
      Colors.indigo,
      Colors.pink,
    ];
    return colors[uid.abs() % colors.length];
  }
}
