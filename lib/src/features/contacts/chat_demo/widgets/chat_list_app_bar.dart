import 'package:flutter/material.dart';
import '../../../../common/ffi.dart';

/// 聊天列表页面AppBar组件
class ChatListAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String chatTitle;
  final FfiChatType chatType;
  final String? avatarUrl;
  final int memberCount;
  final bool isNetworkConnected;

  const ChatListAppBar({
    super.key,
    required this.chatTitle,
    required this.chatType,
    this.avatarUrl,
    this.memberCount = 0,
    this.isNetworkConnected = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      leadingWidth: 40, // 自定义leading宽度
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          margin: const EdgeInsets.only(left: 8),
          decoration: BoxDecoration(color: Colors.transparent),
          child: Center(
            child: Image.asset(
              'assets/images/common/common_icon_blue_back.webp',
              width: 24,
              height: 24,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 8), // 给title添加左边距
        child:
            isNetworkConnected
                ? Row(
                  children: [
                    _buildTitleAvatar(),
                    const SizedBox(width: 10),
                    Expanded(child: _buildTitleContent()),
                  ],
                )
                : Center(child: _buildTitleContent()),
      ),
      actions:
          chatType == FfiChatType.single
              ? [
                IconButton(
                  icon: Image.asset(
                    'assets/images/common/msg_icon_chat_stream_audio.png',
                    width: 28,
                    height: 28,
                    fit: BoxFit.fill,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/images/common/msg_icon_chat_stream_video.png',
                    width: 28,
                    height: 28,
                    fit: BoxFit.fill,
                  ),
                  onPressed: () {},
                ),
              ]
              : [],
    );
  }

  /// 构建标题头像
  Widget _buildTitleAvatar() {
    return chatType != FfiChatType.channel
        ? CircleAvatar(
          radius: 15,
          backgroundColor: Colors.grey[400],
          backgroundImage: avatarUrl != null ? NetworkImage(avatarUrl!) : null,
          child:
              avatarUrl == null
                  ? ClipOval(
                    child: Image.asset(
                      chatType == FfiChatType.single
                          ? 'assets/images/common/common_holder_one_user.webp'
                          : 'assets/images/common/common_holder_one_group.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  )
                  : null,
        )
        : SizedBox();
  }

  /// 构建标题内容
  Widget _buildTitleContent() {
    // 如果网络未连接，显示简单的居中文本
    if (!isNetworkConnected) {
      return Text(
        '未连接',
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      );
    }

    // 网络正常时显示正常内容
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              chatType == FfiChatType.group
                  ? '$chatTitle($memberCount)'
                  : chatTitle,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
        if (chatType != FfiChatType.group)
          Text(
            chatType == FfiChatType.single ? '在线' : '$memberCount位订阅者',
            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
