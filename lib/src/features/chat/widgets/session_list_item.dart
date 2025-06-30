import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../common/ffi.dart';

class SessionListItem extends StatelessWidget {
  final FfiConversation session;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final bool isEditing;

  const SessionListItem({
    super.key,
    required this.session,
    this.onTap,
    this.onLongPress,
    this.isEditing = false,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(session.conversationId),
      direction:
          isEditing ? DismissDirection.none : DismissDirection.horizontal,
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      confirmDismiss: (direction) async {
        // 弹出确认对话框
        final bool? result = await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('删除聊天'),
              content: Text('确定要删除与"${session.name}"的聊天吗？'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text('取消'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: const Text('删除', style: TextStyle(color: Colors.red)),
                ),
              ],
            );
          },
        );
        return result;
      },
      onDismissed:
          isEditing
              ? null
              : (direction) {
                // 从列表中删除会话
                // 在实际应用中，这里会调用相应的BLoC方法
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('已删除与"${session.name}"的聊天')),
                );
              },
      child: GestureDetector(
        onTap: onTap,
        onLongPress: isEditing ? null : onLongPress,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          decoration: BoxDecoration(
            color:
                session.isTopPinned
                    ? const Color(0xFFF6F6F6)
                    : Colors.transparent,
            border: const Border(
              bottom: BorderSide(color: Color(0xFFF2F2F2), width: 1.0),
            ),
          ),
          child: Row(
            children: [
              _buildAvatar(),
              const SizedBox(width: 12.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            session.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          _formatTime(
                            DateTime.fromMillisecondsSinceEpoch(
                              session.lastMessageTime,
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7B7B7B),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              if (session.isMuted)
                                const Padding(
                                  padding: EdgeInsets.only(right: 4.0),
                                  child: Icon(
                                    Icons.volume_off,
                                    size: 12,
                                    color: Color(0xFF999999),
                                  ),
                                ),
                              Expanded(
                                child: Text(
                                  session.lastMessage,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF7B7B7B),
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (session.unreadCount > 0) _buildUnreadBadge(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    final bool hasCustomAvatar =
        session.avatar != null && session.avatar!.isNotEmpty;

    return Stack(
      children: [
        SizedBox(
          width: 48,
          height: 48,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child:
                hasCustomAvatar
                    ? CachedNetworkImage(
                      imageUrl: session.avatar!,
                      fit: BoxFit.cover,
                      placeholder:
                          (context, url) => Container(
                            color: _getAvatarBackgroundColor(),
                            child: Center(
                              child: Text(
                                session.name.isNotEmpty
                                    ? session.name.substring(0, 1).toUpperCase()
                                    : '?',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                      errorWidget:
                          (context, url, error) => Container(
                            color: _getAvatarBackgroundColor(),
                            child: Center(
                              child: Text(
                                session.name.isNotEmpty
                                    ? session.name.substring(0, 1).toUpperCase()
                                    : '?',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                    )
                    : Container(
                      color: _getAvatarBackgroundColor(),
                      child: Center(
                        child: Text(
                          session.name.isNotEmpty
                              ? session.name.substring(0, 1).toUpperCase()
                              : '?',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
          ),
        ),
        if (session.isTopPinned)
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 16,
              height: 16,
              decoration: const BoxDecoration(
                color: Color(0xFFFFD700),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.push_pin, size: 10, color: Colors.white),
            ),
          ),
      ],
    );
  }

  Color _getAvatarBackgroundColor() {
    // 根据会话类型选择颜色
    if (session.chatType == FfiChatType.group) {
      return const Color(0xFF1296DB); // 群聊使用固定颜色
    }

    // 个人聊天根据名称首字母生成不同颜色
    final List<Color> colors = [
      const Color(0xFF5B8EFF), // 蓝色
      const Color(0xFF19C693), // 绿色
      const Color(0xFFFF943E), // 橙色
      const Color(0xFFA78BFA), // 紫色
      const Color(0xFFFF5252), // 红色
    ];

    if (session.name.isEmpty) return colors[0];

    // 根据名称首字母的ASCII码选择颜色
    final int charCode = session.name.codeUnitAt(0);
    return colors[charCode % colors.length];
  }

  Widget _buildUnreadBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: const Color(0xFFFF3B30),
        borderRadius: BorderRadius.circular(10), // 改为圆角矩形
      ),
      constraints: const BoxConstraints(minWidth: 20, minHeight: 16), // 增加最小宽度
      alignment: Alignment.center,
      child: Text(
        session.unreadCount > 99 ? '99+' : session.unreadCount.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 11, // 略微增大字体大小
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  String _formatTime(DateTime time) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final dateTime = DateTime(time.year, time.month, time.day);

    if (dateTime == today) {
      // 返回时间，例如：10:30
      return DateFormat('HH:mm').format(time);
    } else if (dateTime == yesterday) {
      // 返回"昨天"
      return '昨天';
    } else if (now.difference(time).inDays < 7) {
      // 返回星期几，例如：周一
      String weekday;
      switch (time.weekday) {
        case 1:
          weekday = '周一';
          break;
        case 2:
          weekday = '周二';
          break;
        case 3:
          weekday = '周三';
          break;
        case 4:
          weekday = '周四';
          break;
        case 5:
          weekday = '周五';
          break;
        case 6:
          weekday = '周六';
          break;
        case 7:
          weekday = '周日';
          break;
        default:
          weekday = '';
      }
      return weekday;
    } else {
      // 返回日期，例如：2023/10/1或10/1（同一年）
      return now.year == time.year
          ? DateFormat('MM/dd').format(time)
          : DateFormat('yyyy/MM/dd').format(time);
    }
  }
}
