import 'package:flutter/material.dart';
import 'package:openchat_client/src/common/ffi.dart';

/// 转发最近会话列表组件
class ForwardRecentSessionList extends StatelessWidget {
  final List<FfiConversation> recentSessions;
  final Function(FfiConversation) onSessionSelected;

  const ForwardRecentSessionList({
    super.key,
    required this.recentSessions,
    required this.onSessionSelected,
  });

  @override
  Widget build(BuildContext context) {
    if (recentSessions.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.history, size: 48, color: Colors.grey),
            SizedBox(height: 16),
            Text('暂无最近会话', style: TextStyle(fontSize: 16, color: Colors.grey)),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            '最近',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            itemCount: recentSessions.length,
            itemBuilder: (context, index) {
              final session = recentSessions[index];
              return _buildSessionItem(session);
            },
          ),
        ),
      ],
    );
  }

  /// 构建会话项
  Widget _buildSessionItem(FfiConversation session) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            onSessionSelected(session);
          },
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/common/common_contacts_icon_friend.png',
                    width: 32,
                    height: 32,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  session.name,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),

        Positioned(
          bottom: 0,
          left: 32 + 12 + 16,
          right: 16,
          child: Container(height: 1, color: Color(0xFFF2F2F2)),
        ),
      ],
    );
  }
}
