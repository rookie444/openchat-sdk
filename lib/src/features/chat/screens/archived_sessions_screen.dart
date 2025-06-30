import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../core/router/app_router.dart'; // 导入路由常量
import '../../../core/utils/log.dart';
import '../blocs/archived_sessions_notifier.dart';
import '../blocs/archived_sessions_state.dart'; // 导入ChatSessionsStatus

import '../models/chat_session.dart';
import '../../../models/user.dart';
import '../widgets/session_list_item.dart';
import '../../../common/ffi.dart';
import 'chat_sessions_editing_screen.dart';

// 使用User替代ChatUser
typedef ChatUser = User;

// 简单的全局状态提供者
final globalStateProvider = Provider<GlobalStateModel>((ref) {
  return GlobalStateModel(currentUser: User(id: '1', phone: '123456789'));
});

class GlobalStateModel {
  final User currentUser;

  GlobalStateModel({required this.currentUser});
}

// 初始化时间本地化
void initTimeLocalizations() {
  timeago.setLocaleMessages('zh', timeago.ZhMessages());
  timeago.setLocaleMessages('zh_CN', timeago.ZhCnMessages());
}

class ArchivedSessionsScreen extends ConsumerStatefulWidget {
  const ArchivedSessionsScreen({super.key});

  @override
  ConsumerState<ArchivedSessionsScreen> createState() => _ArchivedSessionsScreenState();
}

class _ArchivedSessionsScreenState extends ConsumerState<ArchivedSessionsScreen>
    with WidgetsBindingObserver {
  final TextEditingController _searchController = TextEditingController();
  final bool _isSearchActive = false;
  final List<String> _selectedSessions = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    initTimeLocalizations();

    // 初始加载/刷新数据
    // 延迟一帧确保 ref 可用且 build 方法已完成初始构建阶段
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Log.info('初始化归档会话列表');
      if (mounted) {
        ref.read(archivedSessionsNotifierProvider.notifier).loadSessions();
      }
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _searchController.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      // 当应用从后台恢复时刷新会话列表
      // 确保 ref 可用
      if (mounted) {
        ref.read(archivedSessionsNotifierProvider.notifier).loadSessions();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentUser = ref.watch(
      globalStateProvider.select((state) => state.currentUser),
    );

    // 监听状态变化以显示副作用
    ref.listen<ArchivedSessionsState>(archivedSessionsNotifierProvider, (
      previous,
      current,
    ) {
      current.maybeWhen(
        failure: (errorMessage) {
          // 显示错误消息
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('加载失败: $errorMessage')));
        },
        orElse: () {}, // 其他状态不处理
      );
    });

    // 从Riverpod获取状态
    final archivedSessionsState = ref.watch(archivedSessionsNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('归档会话'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Column(
        children: [
          // 搜索框和加号按钮
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Row(
              children: [
                // 搜索框
                Expanded(
                  child: GestureDetector(
                    onTap: () => _showChatSessionSearch(context),
                    child: Container(
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 12),
                          const Icon(Icons.search, color: Colors.grey, size: 20),
                          const SizedBox(width: 8),
                          Text(
                            '搜索',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // 会话列表
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                // 使用便捷方法刷新会话
                ref.read(archivedSessionsNotifierProvider.notifier).loadSessions();
              },
              child: archivedSessionsState.when(
                initial: () => const Center(child: CircularProgressIndicator()),
                loading: () => const Center(child: CircularProgressIndicator()),
                success: (sessions, isEditing) {
                  if (sessions.isEmpty) {
                    return _buildNoArchivedChatsFound(context);
                  }
                  return _buildChatList(
                    context,
                    sessions,
                    currentUser,
                    isEditing,
                  );
                },
                failure: (errorMessage) {
                  // 失败状态下显示错误信息和重试按钮
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error_outline,
                          color: Colors.red,
                          size: 48,
                        ),
                        const SizedBox(height: 16),
                        Text('加载失败: $errorMessage'),
                        const SizedBox(height: 24),
                        ElevatedButton(
                          onPressed: () {
                            ref
                                .read(archivedSessionsNotifierProvider.notifier)
                                .loadSessions();
                          },
                          child: const Text('重试'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNoArchivedChatsFound(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.archive_outlined,
            size: 64,
            color: const Color(0xFFCCCCCC),
          ),
          const SizedBox(height: 16),
          Text(
            '暂无归档会话',
            style: TextStyle(fontSize: 16, color: const Color(0xFF999999)),
          ),
        ],
      ),
    );
  }

  Widget _buildChatList(
    BuildContext context,
    List<FfiConversation> sessions,
    ChatUser currentUser,
    bool isEditing,
  ) {
    return ListView.builder(
      itemCount: sessions.length,
      padding: EdgeInsets.zero,
      physics: const AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final session = sessions[index];
        return SessionListItem(
          session: session,
          onTap: () {
            // 标记会话为已读
            ref
                .read(archivedSessionsNotifierProvider.notifier)
                .markSessionAsRead(session.conversationId);

            Log.info('点击归档会话项: ${session.conversationId}, ${session.name}');

            // 导航到聊天详情页，使用AppRoutes
            context.push(
              '${AppRoutes.chatDemo}/${session.chatType.index}/${session.targetId}',
            );
          },
          onLongPress: () {
            _showSessionOptions(context, session);
          },
        );
      },
    );
  }

  void _showSessionOptions(BuildContext context, FfiConversation session) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              ListTile(
                leading: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xFF007AFF).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    session.isTopPinned
                        ? Icons.push_pin
                        : Icons.push_pin_outlined,
                    color: const Color(0xFF007AFF),
                    size: 20,
                  ),
                ),
                title: Text(session.isTopPinned ? '取消置顶' : '置顶聊天'),
                onTap: () {
                  Navigator.pop(context);
                  if (session.isTopPinned) {
                    ref
                        .read(archivedSessionsNotifierProvider.notifier)
                        .unpinSession(session.conversationId);
                  } else {
                    ref
                        .read(archivedSessionsNotifierProvider.notifier)
                        .pinSession(session.conversationId);
                  }
                },
              ),
              ListTile(
                leading: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xFF007AFF).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    session.isMuted
                        ? Icons.notifications_active
                        : Icons.notifications_off,
                    color: const Color(0xFF007AFF),
                    size: 20,
                  ),
                ),
                title: Text(session.isMuted ? '取消静音' : '静音'),
                onTap: () {
                  Navigator.pop(context);
                  if (session.isMuted) {
                    ref
                        .read(archivedSessionsNotifierProvider.notifier)
                        .unmuteSession(session.conversationId);
                  } else {
                    ref
                        .read(archivedSessionsNotifierProvider.notifier)
                        .muteSession(session.conversationId);
                  }
                },
              ),
              if (session.unreadCount > 0)
                ListTile(
                  leading: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: const Color(0xFF007AFF).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.mark_chat_read,
                      color: Color(0xFF007AFF),
                      size: 20,
                    ),
                  ),
                  title: const Text('标记为已读'),
                  onTap: () {
                    Navigator.pop(context);
                    ref
                        .read(archivedSessionsNotifierProvider.notifier)
                        .markSessionAsRead(session.conversationId);
                  },
                ),
              ListTile(
                leading: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xFF007AFF).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    session.isArchive
                        ? Icons.push_pin
                        : Icons.push_pin_outlined,
                    color: const Color(0xFF007AFF),
                    size: 20,
                  ),
                ),
                title: Text(session.isArchive ? '取消归档' : '归档'),
                onTap: () {
                  Navigator.pop(context);
                  if (session.isArchive) {
                    ref
                        .read(archivedSessionsNotifierProvider.notifier)
                        .unarchiveSession(session.conversationId);
                  } else {
                    ref
                        .read(archivedSessionsNotifierProvider.notifier)
                        .archiveSession(session.conversationId);
                  }
                },
              ),
              ListTile(
                leading: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF3B30).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.delete,
                    color: Color(0xFFFF3B30),
                    size: 20,
                  ),
                ),
                title: const Text(
                  '删除聊天',
                  style: TextStyle(color: Color(0xFFFF3B30)),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _confirmDeleteSession(context, session);
                },
              ),
              ListTile(
                leading: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xFF007AFF).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.edit,
                    color: Color(0xFF007AFF),
                    size: 20,
                  ),
                ),
                title: const Text('批量编辑'),
                onTap: () async {
                  Navigator.pop(context);
                  // 导航到批量编辑页面
                  final currentSessions = ref
                      .read(archivedSessionsNotifierProvider)
                      .maybeWhen(
                        success: (sessions, _) => sessions,
                        orElse: () => <FfiConversation>[],
                      );

                  final updatedSessions =
                      await Navigator.push<List<FfiConversation>>(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ChatSessionsEditingScreen(
                                sessions: currentSessions,
                                initialSelectedIds: [session.conversationId],
                                isFromArchived: true,
                              ),
                        ),
                      );

                  // 只有当用户点击"完成"按钮返回时才更新状态
                  if (updatedSessions != null && mounted) {
                    ref
                        .read(archivedSessionsNotifierProvider)
                        .maybeWhen(
                          success: (_, isEditing) async {
                            // 过滤出仍然处于归档状态的会话
                            final archivedSessions = updatedSessions
                                .where((session) => session.isArchive)
                                .toList();
                            
                            // 更新状态为新的会话列表
                            ref
                                .read(archivedSessionsNotifierProvider.notifier)
                                .state = ArchivedSessionsState.success(
                              sessions: archivedSessions,
                              isEditing: isEditing,
                            );

                            // 更新未归档会话列表
                            await ref
                                .read(archivedSessionsNotifierProvider.notifier)
                                .updateUnarchivedSessionList('');
                          },
                          orElse: () {},
                        );
                  }
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  void _confirmDeleteSession(BuildContext context, FfiConversation session) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('删除聊天'),
          content: Text('确定要删除与"${session.name}"的聊天吗？这将删除所有聊天记录。'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                '取消',
                style: TextStyle(color: Color(0xFF007AFF)),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                ref
                    .read(archivedSessionsNotifierProvider.notifier)
                    .deleteSession(session.conversationId);
              },
              child: const Text(
                '删除',
                style: TextStyle(color: Color(0xFFFF3B30)),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showStartChatOptions(BuildContext context) {
    // Implementation of _showStartChatOptions method
  }

  void _showChatSessionSearch(BuildContext context) {
    // Implementation of _showChatSessionSearch method
  }

  void _clearSelection() {
    _selectedSessions.clear();
    setState(() {});
  }
}
