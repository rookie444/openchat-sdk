import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../common/ffi.dart';

/// 聊天会话列表项组件
class ChatSessionTile extends StatelessWidget {
  final FfiConversation session;
  final VoidCallback onTap;
  final VoidCallback? onLongPress;

  const ChatSessionTile({
    super.key,
    required this.session,
    required this.onTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: _buildAvatar(),
      title: Row(
        children: [
          Expanded(
            child: Text(
              session.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Text(
            _formatTime(DateTime.fromMillisecondsSinceEpoch(session.lastMessageTime)),
            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Expanded(
            child: Text(
              session.lastMessage,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
          ),
          if (session.isMuted)
            const Icon(Icons.notifications_off, size: 16, color: Colors.grey),
          if (session.isTopPinned)
            const Padding(
              padding: EdgeInsets.only(left: 4),
              child: Icon(Icons.push_pin, size: 16, color: Colors.blue),
            ),
        ],
      ),
      trailing:
          session.unreadCount > 0
              ? Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                constraints: const BoxConstraints(minWidth: 20, minHeight: 20),
                child: Text(
                  session.unreadCount > 99
                      ? '99+'
                      : session.unreadCount.toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              )
              : null,
      onTap: onTap,
      onLongPress: onLongPress,
    );
  }

  /// 构建头像
  Widget _buildAvatar() {
    final iconData =
        session.chatType == FfiChatType.group ? Icons.group : Icons.person;

    return CircleAvatar(
      radius: 24,
      backgroundColor: Colors.blue,
      backgroundImage:
          session.avatar != null ? NetworkImage(session.avatar!) : null,
      child:
          session.avatar == null
              ? Icon(iconData, color: Colors.white, size: 24)
              : null,
    );
  }

  /// 格式化时间
  String _formatTime(DateTime dateTime) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final date = DateTime(dateTime.year, dateTime.month, dateTime.day);

    if (date == today) {
      // 今天，显示时间
      return DateFormat('HH:mm').format(dateTime);
    } else if (date == yesterday) {
      // 昨天，显示"昨天"
      return '昨天';
    } else if (now.difference(dateTime).inDays < 7) {
      // 一周内，显示星期
      return _getWeekday(dateTime.weekday);
    } else {
      // 超过一周，显示日期
      return DateFormat('MM-dd').format(dateTime);
    }
  }

  /// 获取星期几
  String _getWeekday(int weekday) {
    const weekdays = ['周一', '周二', '周三', '周四', '周五', '周六', '周日'];
    return weekdays[weekday - 1];
  }
}
