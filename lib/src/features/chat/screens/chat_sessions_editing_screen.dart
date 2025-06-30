import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../common/ffi.dart';
import '../blocs/chat_sessions_editing_notifier.dart';
import '../widgets/session_list_item.dart';

class ChatSessionsEditingScreen extends ConsumerStatefulWidget {
  final List<FfiConversation> sessions;
  final List<String> initialSelectedIds;
  final bool isFromArchived;

  const ChatSessionsEditingScreen({
    super.key,
    required this.sessions,
    this.initialSelectedIds = const [],
    this.isFromArchived = false,
  });

  @override
  ConsumerState<ChatSessionsEditingScreen> createState() =>
      _ChatSessionsEditingScreenState();
}

class _ChatSessionsEditingScreenState
    extends ConsumerState<ChatSessionsEditingScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // 初始化编辑状态
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        ref
            .read(chatSessionsEditingNotifierProvider.notifier)
            .loadSessions(widget.sessions, widget.initialSelectedIds);
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(chatSessionsEditingNotifierProvider);

            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              success: (sessions, selectedIds, searchQuery) {
                // 根据搜索关键词过滤会话
                final filteredSessions =
                    searchQuery.isEmpty
                        ? sessions
                        : sessions
                            .where(
                              (session) => session.name.toLowerCase().contains(
                                searchQuery.toLowerCase(),
                              ),
                            )
                            .toList();

                if (filteredSessions.isEmpty) {
                  return Center(
                    child: Text(
                      searchQuery.isEmpty ? '暂无会话' : '未找到相关会话',
                      style: const TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 16,
                      ),
                    ),
                  );
                }

                return Column(
                  children: [
                    ///选择x条 与完成按钮
                    Container(
                      height: 56,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(
                            color: const Color(0xFFEAEAEA),
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///已选择
                          // Text(
                          //   '已选择${selectedIds.length}条',
                          //   style: const TextStyle(
                          //     fontSize: 28,
                          //     fontWeight: FontWeight.bold,
                          //     color: Colors.black,
                          //   ),
                          // ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '已选择',
                                  style: const TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: '${selectedIds.length}',
                                  style: const TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                TextSpan(
                                  text: '条',
                                  style: const TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///完成
                          GestureDetector(
                            onTap: () {
                              // 获取当前状态中的会话列表
                              final currentSessions = ref
                                  .read(chatSessionsEditingNotifierProvider)
                                  .maybeWhen(
                                    success: (sessions, _, __) => sessions,
                                    orElse: () => <FfiConversation>[],
                                  );

                              // 返回更新后的会话列表
                              Navigator.of(context).pop(currentSessions);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFF007AFF),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: const Text(
                                '完成',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // 搜索框
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Row(
                        children: [
                          // 搜索框
                          Expanded(
                            child: GestureDetector(
                              onTap: () => {},
                              child: Container(
                                height: 36,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF5F5F5),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 12),
                                    const Icon(
                                      Icons.search,
                                      color: Colors.grey,
                                      size: 20,
                                    ),
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
                    Expanded(
                      child: ListView.builder(
                        itemCount: filteredSessions.length,
                        itemBuilder: (context, index) {
                          final session = filteredSessions[index];
                          final isSelected = selectedIds.contains(
                            session.conversationId,
                          );

                          return Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(0xFFF2F2F2),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                // 复选框
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: GestureDetector(
                                      onTap: () {
                                        ref
                                            .read(
                                              chatSessionsEditingNotifierProvider
                                                  .notifier,
                                            )
                                            .toggleSelection(
                                              session.conversationId,
                                            );
                                      },
                                      child: Image.asset(
                                        isSelected
                                            ? 'assets/images/common/common_contacts_icon_check_selected.webp'
                                            : 'assets/images/common/common_contacts_icon_check_select.webp',
                                        width: 24,
                                        height: 24,
                                      ),
                                    ),
                                  ),
                                ),

                                // 使用Expanded包装SessionListItem以确保正确布局
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      ref
                                          .read(
                                            chatSessionsEditingNotifierProvider
                                                .notifier,
                                          )
                                          .toggleSelection(
                                            session.conversationId,
                                          );
                                    },
                                    child: SessionListItem(
                                      session: session,
                                      isEditing: true,
                                      onTap: () {
                                        ref
                                            .read(
                                              chatSessionsEditingNotifierProvider
                                                  .notifier,
                                            )
                                            .toggleSelection(
                                              session.conversationId,
                                            );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
              failure: (error) => Center(child: Text('加载失败: $error')),
            );
          },
        ),
      ),
      bottomNavigationBar: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(chatSessionsEditingNotifierProvider);

          return state.maybeWhen(
            success: (sessions, selectedIds, searchQuery) {
              // 如果没有会话，不显示底部栏
              if (sessions.isEmpty) return const SizedBox.shrink();

              final isAllSelected = selectedIds.length == sessions.length;

              return SafeArea(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(color: Color(0xFFEAEAEA), width: 1),
                    ),
                  ),
                  child: Row(
                    children: [
                      // 全选/取消全选按钮
                      Row(
                        children: [
                          // Checkbox
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: GestureDetector(
                              onTap: () {
                                if (!isAllSelected) {
                                  ref
                                      .read(
                                        chatSessionsEditingNotifierProvider
                                            .notifier,
                                      )
                                      .selectAll();
                                } else {
                                  ref
                                      .read(
                                        chatSessionsEditingNotifierProvider
                                            .notifier,
                                      )
                                      .deselectAll();
                                }
                              },
                              child: Image.asset(
                                isAllSelected
                                    ? 'assets/images/common/common_contacts_icon_check_selected.webp'
                                    : 'assets/images/common/common_contacts_icon_check_select.webp',
                                width: 24,
                                height: 24,
                              ),
                            ),
                          ),
                          // Text button
                          GestureDetector(
                            onTap: () {
                              if (isAllSelected) {
                                ref
                                    .read(
                                      chatSessionsEditingNotifierProvider
                                          .notifier,
                                    )
                                    .deselectAll();
                              } else {
                                ref
                                    .read(
                                      chatSessionsEditingNotifierProvider
                                          .notifier,
                                    )
                                    .selectAll();
                              }
                            },
                            child: Container(
                              height: 24,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              decoration: BoxDecoration(color: Colors.white),
                              child: Text(
                                '全选',
                                style: const TextStyle(
                                  color: Color(0xFF007AFF),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (widget.isFromArchived) ...[
                            TextButton(
                              onPressed:
                                  selectedIds.isEmpty
                                      ? null
                                      : () async {
                                        // 取消归档
                                        ref
                                            .read(
                                              chatSessionsEditingNotifierProvider
                                                  .notifier,
                                            )
                                            .unarchiveSelected();

                                        // 等待取消归档完成
                                        await Future.delayed(
                                          const Duration(milliseconds: 500),
                                        );

                                        if (!mounted) return;

                                        // 获取当前状态中的会话列表
                                        final currentSessions = ref
                                            .read(chatSessionsEditingNotifierProvider)
                                            .maybeWhen(
                                              success: (sessions, _, __) => sessions,
                                              orElse: () => <FfiConversation>[],
                                            );

                                        // 返回更新后的会话列表
                                        Navigator.of(context).pop(currentSessions);
                                      },
                              child: Text(
                                '取消归档',
                                style: TextStyle(
                                  color:
                                      selectedIds.isEmpty
                                          ? Colors.grey
                                          : Color(0xFF007AFF),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                          ],
                          TextButton(
                            onPressed:
                                selectedIds.isEmpty
                                    ? null
                                    : () async {
                                      // 标记已读
                                      ref
                                          .read(
                                            chatSessionsEditingNotifierProvider
                                                .notifier,
                                          )
                                          .markSelectedAsRead();

                                      // 等待标记已读完成
                                      await Future.delayed(
                                        const Duration(milliseconds: 500),
                                      );

                                      if (!mounted) return;

                                      // 获取当前状态中的会话列表
                                      final currentSessions = ref
                                          .read(chatSessionsEditingNotifierProvider)
                                          .maybeWhen(
                                            success: (sessions, _, __) => sessions,
                                            orElse: () => <FfiConversation>[],
                                          );

                                      // 返回更新后的会话列表
                                      Navigator.of(context).pop(currentSessions);
                                    },
                            child: Text(
                              '标记已读',
                              style: TextStyle(
                                color:
                                    selectedIds.isEmpty
                                        ? Colors.grey
                                        : Color(0xFF007AFF),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          // 删除按钮
                          TextButton(
                            onPressed: selectedIds.isEmpty ? null : () async {
                              // 删除选中的会话
                              ref
                                  .read(
                                    chatSessionsEditingNotifierProvider
                                        .notifier,
                                  )
                                  .deleteSelected();

                              // 等待删除操作完成
                              await Future.delayed(
                                const Duration(milliseconds: 500),
                              );

                              if (!mounted) return;

                              // 获取当前状态中的会话列表
                              final currentSessions = ref
                                  .read(chatSessionsEditingNotifierProvider)
                                  .maybeWhen(
                                    success: (sessions, _, __) => sessions,
                                    orElse: () => <FfiConversation>[],
                                  );

                              // 返回更新后的会话列表
                              Navigator.of(context).pop(currentSessions);
                            },
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all(
                                EdgeInsets.symmetric(horizontal: 0),
                              ),
                            ),
                            child: Text(
                              '删除',
                              style: TextStyle(
                                color:
                                    selectedIds.isNotEmpty
                                        ? Colors.red
                                        : Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
