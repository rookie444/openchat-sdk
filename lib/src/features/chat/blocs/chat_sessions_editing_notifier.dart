import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/utils/log.dart';
import '../../../common/ffi.dart';
import 'chat_sessions_editing_bloc.dart';
import 'chat_sessions_editing_event.dart';
import 'chat_sessions_editing_state.dart';

part '../../../../generated/src/features/chat/blocs/chat_sessions_editing_notifier.g.dart';

@Riverpod(keepAlive: true)
class ChatSessionsEditingNotifier extends _$ChatSessionsEditingNotifier {
  StreamSubscription? _blocSubscription;
  bool _isSubscribed = false;

  @override
  ChatSessionsEditingState build() {
    Log.info('ChatSessionsEditingNotifier 初始化');

    final bloc = ref.watch(chatSessionsEditingBlocProvider);

    if (!_isSubscribed) {
      Log.info('ChatSessionsEditingNotifier 订阅Bloc状态');
      _blocSubscription = bloc.stream.listen((newState) {
        state = newState;
        Log.debug('ChatSessionsEditingNotifier 状态更新: ${newState.runtimeType}');
      });
      _isSubscribed = true;
    }

    ref.onDispose(() {
      Log.info('ChatSessionsEditingNotifier 销毁');
      if (_isSubscribed) {
        _blocSubscription?.cancel();
        _isSubscribed = false;
      }
    });

    return bloc.state;
  }

  void add(ChatSessionsEditingEvent event) {
    Log.debug('ChatSessionsEditingNotifier 添加事件: ${event.runtimeType}');
    ref.read(chatSessionsEditingBlocProvider).add(event);
  }

  void loadSessions(
    List<FfiConversation> sessions,
    List<String> initialSelectedIds,
  ) {
    add(
      ChatSessionsEditingEvent.loadSessions(
        sessions: sessions,
        initialSelectedIds: initialSelectedIds,
      ),
    );
  }

  void toggleSelection(String conversationId) {
    add(
      ChatSessionsEditingEvent.toggleSelection(conversationId: conversationId),
    );
  }

  void selectAll() {
    add(const ChatSessionsEditingEvent.selectAll());
  }

  void deselectAll() {
    add(const ChatSessionsEditingEvent.deselectAll());
  }

  void deleteSelected() {
    add(const ChatSessionsEditingEvent.deleteSelected());
  }

  void markSelectedAsRead() {
    add(const ChatSessionsEditingEvent.markSelectedAsRead());
  }

  void unarchiveSelected() {
    add(const ChatSessionsEditingEvent.unarchiveSelected());
  }

  void updateSearchQuery(String query) {
    add(ChatSessionsEditingEvent.updateSearchQuery(query: query));
  }
}
