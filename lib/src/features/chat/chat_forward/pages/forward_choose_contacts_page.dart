import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:openchat_client/src/core/router/app_router.dart';
import 'package:openchat_client/src/rust/api/model/contacts.dart';
import '../../../../features/contacts/chat_demo/models/chat_message.dart';
import '../blocs/forward_choose_contacts_notifier.dart';
import '../blocs/forward_choose_contacts_state.dart';
import '../widgets/choose_contact_group_widget.dart';
import '../widgets/search_bar_widget.dart';

/// 转发选择联系人页面
class ForwardChooseContactsPage extends ConsumerStatefulWidget {
  final List<ChatMessage> messagesToForward;
  final Function(List<FfiContactDetail>)? onContactsSelected;

  const ForwardChooseContactsPage({
    super.key,
    required this.messagesToForward,
    this.onContactsSelected,
  });

  @override
  ConsumerState<ForwardChooseContactsPage> createState() =>
      _ForwardChooseContactsPageState();
}

class _ForwardChooseContactsPageState
    extends ConsumerState<ForwardChooseContactsPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // 初始化时加载联系人列表
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(forwardChooseContactsNotifierProvider.notifier).loadContacts();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(forwardChooseContactsNotifierProvider);
    final notifier = ref.read(forwardChooseContactsNotifierProvider.notifier);

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: _buildAppBar(state, notifier),
      body: Column(
        children: [
          // 搜索栏
          SearchBarWidget(
            controller: _searchController,
            onChanged: (query) => notifier.searchContacts(query),
            hintText: '搜索联系人',
          ),
          // 联系人列表
          Expanded(child: _buildContactList(state, notifier)),
        ],
      ),
    );
  }

  /// 构建应用栏
  PreferredSizeWidget _buildAppBar(
    ForwardChooseContactsState state,
    dynamic notifier,
  ) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.5,
      leading: IconButton(
        icon: Image.asset(
          'assets/images/common/common_icon_blue_back.webp',
          width: 24,
          height: 24,
        ),
        onPressed: () => context.pop(),
      ),
      title: const Text(
        '选择联系人',
        style: TextStyle(
          color: Colors.black87,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            '完成',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  /// 构建联系人列表
  Widget _buildContactList(ForwardChooseContactsState state, dynamic notifier) {
    if (state is ForwardChooseContactsLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state is ForwardChooseContactsError) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: Colors.grey[400]),
            const SizedBox(height: 16),
            Text(
              state.message,
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => notifier.loadContacts(),
              child: const Text('重试'),
            ),
          ],
        ),
      );
    }

    if (state is ForwardChooseContactsLoaded) {
      if (state.contactGroups.isEmpty) {
        return const Center(
          child: Text(
            '暂无联系人',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        );
      }

      return ListView.builder(
        itemCount: state.contactGroups.length,
        itemBuilder: (context, index) {
          final group = state.contactGroups[index];
          return ChooseContactGroupWidget(
            letter: group.letter,
            contacts: group.contacts,
            selectedContact: state.selectedContact,
            onContactTap:
                (contact) => {
                  // 传递chatType和targetId参数
                  context.push(
                    '${AppRoutes.chatDemo}/0/${contact.userId}',
                    extra: widget.messagesToForward,
                  ),
                },
          );
        },
      );
    }

    return const SizedBox.shrink();
  }
}
