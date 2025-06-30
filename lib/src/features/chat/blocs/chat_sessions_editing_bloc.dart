import 'package:bloc/bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../services/chat_service.dart';
import '../../../core/utils/log.dart';
import 'chat_sessions_editing_event.dart';
import 'chat_sessions_editing_state.dart';
import '../../../common/ffi.dart';

part '../../../../generated/src/features/chat/blocs/chat_sessions_editing_bloc.g.dart';

@Riverpod(keepAlive: true)
ChatSessionsEditingBloc chatSessionsEditingBloc(Ref ref) {
  final chatService = ref.read(chatServiceProvider);
  Log.info('ChatSessionsEditingBloc Provider 初始化');
  final bloc = ChatSessionsEditingBloc(chatService: chatService);

  ref.onDispose(() {
    Log.info('ChatSessionsEditingBloc Provider 销毁');
    bloc.close();
  });

  return bloc;
}

class ChatSessionsEditingBloc
    extends Bloc<ChatSessionsEditingEvent, ChatSessionsEditingState> {
  final ChatService _chatService;

  ChatSessionsEditingBloc({required ChatService chatService})
    : _chatService = chatService,
      super(const ChatSessionsEditingState.initial()) {
    on<ChatSessionsEditingEvent>((event, emit) async {
      await event.map(
        loadSessions:
            (e) => _onLoadSessions(emit, e.sessions, e.initialSelectedIds),
        toggleSelection: (e) => _onToggleSelection(emit, e.conversationId),
        selectAll: (e) => _onSelectAll(emit),
        deselectAll: (e) => _onDeselectAll(emit),
        markSelectedAsRead: (e) => _onMarkSelectedAsRead(emit),
        deleteSelected: (e) => _onDeleteSelected(emit),
        updateSearchQuery: (e) => _onUpdateSearchQuery(emit, e.query),
        unarchiveSelected: (e) => _onUnarchiveSelected(emit),
      );
    });
  }

  Future<void> _onLoadSessions(
    Emitter<ChatSessionsEditingState> emit,
    List<FfiConversation> sessions,
    List<String> initialSelectedIds,
  ) async {
    emit(
      ChatSessionsEditingState.success(
        sessions: sessions,
        selectedIds: initialSelectedIds,
      ),
    );
  }

  Future<void> _onToggleSelection(
    Emitter<ChatSessionsEditingState> emit,
    String conversationId,
  ) async {
    await state.maybeMap(
      success: (successState) async {
        final selectedIds = List<String>.from(successState.selectedIds);
        if (selectedIds.contains(conversationId)) {
          selectedIds.remove(conversationId);
        } else {
          selectedIds.add(conversationId);
        }
        emit(successState.copyWith(selectedIds: selectedIds));
      },
      orElse: () async {},
    );
  }

  Future<void> _onSelectAll(Emitter<ChatSessionsEditingState> emit) async {
    await state.maybeMap(
      success: (successState) async {
        final allIds =
            successState.sessions.map((s) => s.conversationId).toList();
        emit(successState.copyWith(selectedIds: allIds));
      },
      orElse: () async {},
    );
  }

  Future<void> _onDeselectAll(Emitter<ChatSessionsEditingState> emit) async {
    await state.maybeMap(
      success: (successState) async {
        emit(successState.copyWith(selectedIds: []));
      },
      orElse: () async {},
    );
  }

  Future<void> _onMarkSelectedAsRead(
    Emitter<ChatSessionsEditingState> emit,
  ) async {
    await state.maybeMap(
      success: (successState) async {
        final selectedIds = successState.selectedIds;

        // Process all mark-as-read operations concurrently
        await _chatService.batchMarkSessionAsRead(conversationIds: selectedIds);

        // Update sessions with new unread states
        final updatedSessions =
            successState.sessions.map((session) {
              if (selectedIds.contains(session.conversationId)) {
                return session.copyWith(unreadCount: 0);
              }
              return session;
            }).toList();

        emit(
          successState.copyWith(
            sessions: updatedSessions,
            selectedIds: [], // Clear selection
          ),
        );
      },
      orElse: () async {},
    );
  }

  Future<void> _onDeleteSelected(Emitter<ChatSessionsEditingState> emit) async {
    await state.maybeMap(
      success: (successState) async {
        final selectedIds = successState.selectedIds;

        // Perform batch deletion
        await _chatService.batchDeleteChatSession(conversationIds: selectedIds);

        // Update local state after successful deletion
        final updatedSessions =
            successState.sessions
                .where(
                  (session) => !selectedIds.contains(session.conversationId),
                )
                .toList();

        emit(
          successState.copyWith(
            sessions: updatedSessions,
            selectedIds: [], // Clear selection
          ),
        );
      },
      orElse: () async {},
    );
  }

  Future<void> _onUpdateSearchQuery(
    Emitter<ChatSessionsEditingState> emit,
    String query,
  ) async {
    await state.maybeMap(
      success: (successState) async {
        emit(successState.copyWith(searchQuery: query));
      },
      orElse: () async {},
    );
  }

  Future<void> _onUnarchiveSelected(Emitter<ChatSessionsEditingState> emit) async {
    await state.maybeMap(
      success: (successState) async {
        final selectedIds = successState.selectedIds;

        // 批量处理取消归档操作
        await _chatService.batchUnarchiveSession(conversationIds: selectedIds);

        // 更新会话的归档状态
        final updatedSessions = successState.sessions.map((session) {
          if (selectedIds.contains(session.conversationId)) {
            return session.copyWith(isArchive: false);
          }
          return session;
        }).toList();

        emit(
          successState.copyWith(
            sessions: updatedSessions,
            selectedIds: [], // 清除选择
          ),
        );
      },
      orElse: () async {},
    );
  }
}
