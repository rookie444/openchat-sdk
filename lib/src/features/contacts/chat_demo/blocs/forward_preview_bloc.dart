import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/blocs/forward_preview_event.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/blocs/forward_preview_state.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';

/// 转发预览Bloc
class ForwardPreviewBloc
    extends Bloc<ForwardPreviewEvent, ForwardPreviewState> {
  ForwardPreviewBloc() : super(const ForwardPreviewState.initial()) {
    on<ForwardPreviewEvent>(_onEvent);
  }

  Future<void> _onEvent(
    ForwardPreviewEvent event,
    Emitter<ForwardPreviewState> emit,
  ) async {
    await event.when(
      initialized: (messagesToForward) async {
        emit(const ForwardPreviewState.loading());

        // 默认选中所有消息
        final selectedIds = messagesToForward.map((msg) => msg.id).toSet();

        emit(
          ForwardPreviewState.success(
            allMessages: messagesToForward,
            selectedMessageIds: selectedIds,
            selectedCount: messagesToForward.length,
          ),
        );
      },

      toggleMessageSelection: (messageId) async {
        state.maybeWhen(
          success: (allMessages, selectedIds, selectedCount) {
            final newSelectedIds = Set<int>.from(selectedIds);
            if (newSelectedIds.contains(messageId)) {
              newSelectedIds.remove(messageId);
            } else {
              newSelectedIds.add(messageId);
            }

            emit(
              ForwardPreviewState.success(
                allMessages: allMessages,
                selectedMessageIds: newSelectedIds,
                selectedCount: newSelectedIds.length,
              ),
            );
          },
          orElse: () {},
        );
      },

      selectAll: () async {
        state.maybeWhen(
          success: (allMessages, selectedIds, selectedCount) {
            final newSelectedIds = allMessages.map((msg) => msg.id).toSet();
            emit(
              ForwardPreviewState.success(
                allMessages: allMessages,
                selectedMessageIds: newSelectedIds,
                selectedCount: allMessages.length,
              ),
            );
          },
          orElse: () {},
        );
      },

      deselectAll: () async {
        state.maybeWhen(
          success: (allMessages, selectedIds, selectedCount) {
            emit(
              ForwardPreviewState.success(
                allMessages: allMessages,
                selectedMessageIds: {},
                selectedCount: 0,
              ),
            );
          },
          orElse: () {},
        );
      },

      confirmForward: () async {
        // 确认转发逻辑，返回选中的消息
        state.maybeWhen(
          success: (allMessages, selectedIds, selectedCount) {
            final selectedMessages =
                allMessages
                    .where((msg) => selectedIds.contains(msg.id))
                    .toList();
            // 这里可以通过某种方式返回选中的消息
            // 比如通过Stream或者回调
          },
          orElse: () {},
        );
      },

      cancelForward: () async {
        // 取消转发逻辑
      },
    );
  }

  /// 获取选中的消息列表
  List<ChatMessage> getSelectedMessages() {
    return state.maybeWhen(
      success: (allMessages, selectedIds, selectedCount) {
        return allMessages
            .where((msg) => selectedIds.contains(msg.id))
            .toList();
      },
      orElse: () => [],
    );
  }

  /// 检查消息是否被选中
  bool isMessageSelected(int messageId) {
    return state.maybeWhen(
      success: (allMessages, selectedIds, selectedCount) {
        return selectedIds.contains(messageId);
      },
      orElse: () => false,
    );
  }

  /// 获取选中消息数量
  int get selectedCount {
    return state.maybeWhen(
      success: (allMessages, selectedIds, selectedCount) => selectedCount,
      orElse: () => 0,
    );
  }
}
