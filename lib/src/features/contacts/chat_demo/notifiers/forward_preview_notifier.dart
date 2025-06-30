import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/blocs/forward_preview_bloc.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/blocs/forward_preview_event.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/blocs/forward_preview_state.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';

/// 转发预览通知器
class ForwardPreviewNotifier extends StateNotifier<ForwardPreviewState> {
  ForwardPreviewNotifier() : super(const ForwardPreviewState.initial());

  /// 初始化转发预览
  void initialize(List<ChatMessage> messagesToForward) {
    state = const ForwardPreviewState.loading();

    // 默认选中所有消息
    final selectedIds = messagesToForward.map((msg) => msg.id).toSet();

    state = ForwardPreviewState.success(
      allMessages: messagesToForward,
      selectedMessageIds: selectedIds,
      selectedCount: messagesToForward.length,
    );
  }

  /// 切换消息选中状态
  void toggleMessageSelection(int messageId) {
    state.maybeWhen(
      success: (allMessages, selectedIds, selectedCount) {
        final newSelectedIds = Set<int>.from(selectedIds);
        if (newSelectedIds.contains(messageId)) {
          newSelectedIds.remove(messageId);
        } else {
          newSelectedIds.add(messageId);
        }

        state = ForwardPreviewState.success(
          allMessages: allMessages,
          selectedMessageIds: newSelectedIds,
          selectedCount: newSelectedIds.length,
        );
      },
      orElse: () {},
    );
  }

  /// 全选所有消息
  void selectAll() {
    state.maybeWhen(
      success: (allMessages, selectedIds, selectedCount) {
        final newSelectedIds = allMessages.map((msg) => msg.id).toSet();
        state = ForwardPreviewState.success(
          allMessages: allMessages,
          selectedMessageIds: newSelectedIds,
          selectedCount: allMessages.length,
        );
      },
      orElse: () {},
    );
  }

  /// 取消全选
  void deselectAll() {
    state.maybeWhen(
      success: (allMessages, selectedIds, selectedCount) {
        state = ForwardPreviewState.success(
          allMessages: allMessages,
          selectedMessageIds: {},
          selectedCount: 0,
        );
      },
      orElse: () {},
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

  /// 重置状态
  void reset() {
    state = const ForwardPreviewState.initial();
  }
}

/// 转发预览Provider
final forwardPreviewProvider =
    StateNotifierProvider<ForwardPreviewNotifier, ForwardPreviewState>(
      (ref) => ForwardPreviewNotifier(),
    );
