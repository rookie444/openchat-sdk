import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/utils/log.dart';
import 'chat_sessions_bloc.dart';
import 'chat_sessions_event.dart';
import 'chat_sessions_state.dart';

part '../../../../generated/src/features/chat/blocs/chat_sessions_notifier.g.dart';

@Riverpod(keepAlive: true)
class ChatSessionsNotifier extends _$ChatSessionsNotifier {
  StreamSubscription? _blocSubscription;
  bool _isSubscribed = false;

  @override
  ChatSessionsState build() {
    Log.info('ChatSessionsNotifier 初始化 - 全局单例模式');

    // 获取Bloc实例
    final bloc = ref.watch(chatSessionsBlocProvider);

    // 确保只订阅一次
    if (!_isSubscribed) {
      Log.info('ChatSessionsNotifier 订阅Bloc状态');
      // 订阅Bloc的状态流
      _blocSubscription = bloc.stream.listen((newState) {
        // 更新Riverpod状态
        state = newState;
        Log.debug('ChatSessionsNotifier 状态更新: ${newState.runtimeType}');
      });
      _isSubscribed = true;
    }

    // 确保在提供者被处置时取消订阅
    ref.onDispose(() {
      Log.info('ChatSessionsNotifier 销毁 - 应用程序退出');
      if (_isSubscribed) {
        _blocSubscription?.cancel();
        _isSubscribed = false;
      }
    });

    // 返回Bloc的当前状态作为初始状态
    return bloc.state;
  }

  // 添加公共方法来接受事件对象
  void add(ChatSessionsEvent event) {
    Log.debug('ChatSessionsNotifier 添加事件: ${event.runtimeType}');
    ref.read(chatSessionsBlocProvider).add(event);
  }

  // 便捷方法 - 加载会话列表
  void loadSessions() {
    Log.info('ChatSessionsNotifier 加载会话列表');
    add(const ChatSessionsEvent.loadSessions());
  }

  // 便捷方法 - 加载会话列表（包含归档分组）
  void loadSessionsWithArchived() {
    Log.info('ChatSessionsNotifier 加载会话列表（包含归档分组）');
    add(const ChatSessionsEvent.loadSessionsWithArchived());
  }

  // 便捷方法 - 刷新会话列表
  void refreshSessions() {
    Log.info('ChatSessionsNotifier 刷新会话列表');
    add(const ChatSessionsEvent.refreshSessions());
  }

  // 便捷方法 - 标记会话为已读
  void markSessionAsRead(String conversationId) {
    Log.info('ChatSessionsNotifier 标记会话为已读: $conversationId');
    add(ChatSessionsEvent.markSessionAsRead(conversationId: conversationId));
  }

  // 便捷方法 - 置顶会话
  void pinSession(String conversationId) {
    Log.info('ChatSessionsNotifier 置顶会话: $conversationId');
    add(ChatSessionsEvent.pinSession(conversationId: conversationId));
  }

  // 便捷方法 - 取消置顶会话
  void unpinSession(String conversationId) {
    Log.info('ChatSessionsNotifier 取消置顶会话: $conversationId');
    add(ChatSessionsEvent.unpinSession(conversationId: conversationId));
  }

  // 便捷方法 - 静音会话
  void muteSession(String conversationId) {
    Log.info('ChatSessionsNotifier 静音会话: $conversationId');
    add(ChatSessionsEvent.muteSession(conversationId: conversationId));
  }

  // 便捷方法 - 取消静音会话
  void unmuteSession(String conversationId) {
    Log.info('ChatSessionsNotifier 取消静音会话: $conversationId');
    add(ChatSessionsEvent.unmuteSession(conversationId: conversationId));
  }

  // 便捷方法 - 删除会话
  void deleteSession(String conversationId) {
    Log.info('ChatSessionsNotifier 删除会话: $conversationId');
    add(ChatSessionsEvent.deleteSession(conversationId: conversationId));
  }

  /// 归档会话
  void archiveSession(String conversationId) {
    add(ChatSessionsEvent.archiveSession(conversationId: conversationId));
  }

  /// 取消归档会话
  void unarchiveSession(String conversationId) {
    add(ChatSessionsEvent.unarchiveSession(conversationId: conversationId));
  }

  /// 进入编辑模式
  void enterEditMode() {
    Log.info('ChatSessionsNotifier 进入编辑模式');
    state.maybeWhen(
      success: (sessions, _) {
        state = ChatSessionsState.success(sessions: sessions, isEditing: true);
      },
      orElse: () {},
    );
  }

  /// 退出编辑模式
  void exitEditMode() {
    Log.info('ChatSessionsNotifier 退出编辑模式');
    state.maybeWhen(
      success: (sessions, _) {
        state = ChatSessionsState.success(sessions: sessions, isEditing: false);
      },
      orElse: () {},
    );
  }

  /// 加载归档会话的分组标题
  void loadArchivedGroup() {
    Log.info('ChatSessionsNotifier 加载归档会话的分组标题');
    add(const ChatSessionsEvent.loadArchivedGroup());
  }
}
