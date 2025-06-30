import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:openchat_client/src/core/router/app_router.dart';
import 'package:openchat_client/src/core/utils/log.dart';
import 'package:openchat_client/src/rust/api/model/contacts.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';
// import '../../models/chat_message.dart';
import '../../../../common/ffi.dart';
import '../blocs/chat_forward_bloc.dart';
import '../blocs/chat_forward_event.dart';
import '../blocs/chat_forward_state.dart';
import '../widgets/forward_search_bar.dart';
import '../widgets/forward_recent_session_list.dart';

/// 转发页面 - 选择转发目标
class ChatForwardPage extends StatefulWidget {
  final List<ChatMessage> messagesToForward;
  final FfiChatType chatType;
  final int targetId;

  const ChatForwardPage({
    super.key,
    required this.messagesToForward,
    required this.chatType,
    required this.targetId,
  });

  @override
  State<ChatForwardPage> createState() => _ChatForwardPageState();
}

class _ChatForwardPageState extends State<ChatForwardPage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    // 初始化转发页面
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ChatForwardBloc>().add(
        ChatForwardEvent.initialized(
          messagesToForward: widget.messagesToForward,
          chatType: widget.chatType,
          targetId: widget.targetId,
        ),
      );
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: _buildAppBar(),
      body: BlocBuilder<ChatForwardBloc, ChatForwardState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (
              messagesToForward,
              recentSessions,
              searchQuery,
              isSearching,
              chatType,
              targetId,
            ) {
              return _buildSuccessBody(messagesToForward, recentSessions);
            },
            failure: (messagesToForward, errorMessage, chatType, targetId) {
              return _buildErrorBody(errorMessage);
            },
          );
        },
      ),
    );
  }

  /// 构建应用栏
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.5,
      leading: IconButton(
        icon: Image.asset(
          'assets/images/common/common_icon_blue_back.webp',
          width: 24,
          height: 24,
          fit: BoxFit.fill,
        ),
        onPressed: () => context.pop(),
      ),
      title: const Text(
        '发送给',
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

  /// 构建成功状态的主体内容
  Widget _buildSuccessBody(
    List<ChatMessage> messagesToForward,
    List<FfiConversation> recentSessions,
  ) {
    return Column(
      children: [
        // 搜索栏
        ForwardSearchBar(
          controller: _searchController,
          focusNode: _searchFocusNode,
          onSearchChanged: (query) {
            context.read<ChatForwardBloc>().add(
              ChatForwardEvent.searchContacts(query),
            );
          },
          onClearSearch: () {},
        ),

        // 三个入口卡片
        // _buildEntryCards(),
        _buildEntryLists(),

        // 最近会话列表
        Expanded(
          child: ForwardRecentSessionList(
            recentSessions: recentSessions,
            onSessionSelected: (session) async {
              // 传递chatType和targetId参数
              final (chatType, targetId) = await parseConversationId(
                conversationId: session.conversationId,
              );

              context.push(
                '${AppRoutes.chatDemo}/${chatType.index}/$targetId',
                extra: messagesToForward,
              );
            },
          ),
        ),
      ],
    );
  }

  /// 构建三个入口列表
  ///
  Widget _buildEntryLists() {
    return Column(
      children: [
        _buildEntryListItem('选择朋友', 'common_contacts_icon_friend.png', () {
          _navigateToFriendsList();
        }),

        _buildEntryListItem('选择群聊', 'common_contacts_icon_group.png', () {
          _navigateToGroupsList();
        }),

        _buildEntryListItem('选择频道', 'common_contacts_icon_channel.webp', () {
          _navigateToChannelsList();
        }),
      ],
    );
  }

  Widget _buildEntryListItem(String title, String iconUri, VoidCallback onTap) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/common/$iconUri',
                width: 32,
                height: 32,
              ),
            ),
            SizedBox(width: 12),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Image.asset(
              'assets/images/common/common_icon_friend_arrow.png',
              width: 15,
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  /// 构建错误状态的主体内容
  Widget _buildErrorBody(String errorMessage) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 64, color: Colors.red),
          const SizedBox(height: 16),
          Text(
            '加载失败',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            errorMessage,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton(onPressed: () {}, child: const Text('重试')),
        ],
      ),
    );
  }

  /// 导航到朋友列表
  void _navigateToFriendsList() {
    context.push(
      AppRoutes.forwardChooseContacts,
      extra: {
        'messages': widget.messagesToForward,
        'onContactsSelected': (List<FfiContactDetail> selectedContacts) {
          // 处理选中的联系人
          Log.info('选中的联系人: ${selectedContacts.length} 个');
          // 这里可以添加转发逻辑
          // 例如：显示转发预览对话框
        },
      },
    );
  }

  /// 导航到群聊列表
  void _navigateToGroupsList() {
    context.push('/forward/groups', extra: widget.messagesToForward);
  }

  /// 导航到频道列表
  void _navigateToChannelsList() {
    context.push('/forward/channels', extra: widget.messagesToForward);
  }

  /// 导航到聊天页面
  void _navigateToChat(String sessionId, ChatMessage messageToForward) {
    context.push('/forward/session/$sessionId', extra: messageToForward);
  }
}
