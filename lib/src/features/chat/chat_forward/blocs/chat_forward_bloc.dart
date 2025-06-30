import 'package:flutter_bloc/flutter_bloc.dart';
import '../services/chat_forward_service.dart';
import 'chat_forward_event.dart';
import 'chat_forward_state.dart';
import '../../../../common/ffi.dart';
import '../../../../rust/api/conversation_id_util.dart';

/// 转发功能Bloc
class ChatForwardBloc extends Bloc<ChatForwardEvent, ChatForwardState> {
  final ChatForwardService _forwardService;

  ChatForwardBloc({required ChatForwardService forwardService})
    : _forwardService = forwardService,
      super(const ChatForwardState.initial()) {
    on<ChatForwardEvent>(_onEvent);
  }

  Future<void> _onEvent(
    ChatForwardEvent event,
    Emitter<ChatForwardState> emit,
  ) async {
    await event.when(
      initialized: (messagesToForward, chatType, targetId) async {
        emit(const ChatForwardState.loading());
        try {
          final allSessions = await _forwardService.getRecentSessions();

          final conversationId = await genarateConversationId(
            chatTypeVal: chatType!.index,
            targetId: targetId!,
          );

          // 过滤掉当前会话
          final recentSessions =
              allSessions
                  .where((element) => element.conversationId != conversationId)
                  .toList();

          // 排序：置顶的在前，未置顶的按最后消息时间排序
          recentSessions.sort((a, b) {
            if (a.isArchive != b.isArchive) {
              return a.isArchive ? -1 : 1;
            }
            if (a.isTopPinned != b.isTopPinned) {
              return a.isTopPinned ? -1 : 1;
            }
            // 新增逻辑：同为置顶时，topPinnedAt更晚的排前面
            if (a.isTopPinned && b.isTopPinned) {
              final aPinned = a.topPinnedAt ?? 0;
              final bPinned = b.topPinnedAt ?? 0;
              return bPinned.compareTo(aPinned);
            }
            return b.lastMessageTime.compareTo(a.lastMessageTime);
          });
          emit(
            ChatForwardState.success(
              messagesToForward: messagesToForward,
              recentSessions: recentSessions,
              searchQuery: '',
              isSearching: false,
              chatType: chatType,
              targetId: targetId,
            ),
          );
        } catch (e) {
          emit(
            ChatForwardState.failure(
              messagesToForward: messagesToForward,
              errorMessage: e.toString(),
              chatType: chatType,
              targetId: targetId,
            ),
          );
        }
      },
      searchContacts: (query) async {
        // 获取当前状态
        final currentState = state;
        currentState.maybeWhen(
          success: (
            messagesToForward,
            recentSessions,
            searchQuery,
            isSearching,
            chatType,
            targetId,
          ) {
            emit(
              ChatForwardState.success(
                messagesToForward: messagesToForward,
                recentSessions: recentSessions,
                searchQuery: query,
                isSearching: query.isNotEmpty,
                chatType: chatType,
                targetId: targetId,
              ),
            );
          },
          orElse: () {},
        );
      },

      loadRecentSessions: () async {
        // 实现加载最近会话逻辑
      },
      selectFriend: (friendId) async {
        // 实现选择朋友逻辑
      },
      selectGroup: (groupId) async {
        // 实现选择群组逻辑
      },
      selectChannel: (channelId) async {
        // 实现选择频道逻辑
      },
      selectRecentSession: (sessionId) async {
        // 实现选择最近会话逻辑
      },
      forwardMessages: (targetId, targetChatType) async {
        // 实现转发消息逻辑
        final currentState = state;
        currentState.maybeWhen(
          success: (
            messagesToForward,
            recentSessions,
            searchQuery,
            isSearching,
            chatType,
            sourceTargetId,
          ) async {
            try {
              // 调用转发服务
              await _forwardService.forwardMessages(
                messages: messagesToForward,
                targetId: targetId,
                targetChatType: targetChatType,
              );
              // 转发成功后可以发出成功状态或导航回上一页
            } catch (e) {
              emit(
                ChatForwardState.failure(
                  messagesToForward: messagesToForward,
                  errorMessage: e.toString(),
                  chatType: chatType,
                  targetId: sourceTargetId,
                ),
              );
            }
          },
          orElse: () {},
        );
      },
    );
  }
}
