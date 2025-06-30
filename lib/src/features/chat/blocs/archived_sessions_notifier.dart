import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/utils/log.dart';
import 'archived_sessions_bloc.dart';
import 'archived_sessions_event.dart';
import 'archived_sessions_state.dart';

part '../../../../generated/src/features/chat/blocs/archived_sessions_notifier.g.dart';

@Riverpod(keepAlive: true)
class ArchivedSessionsNotifier extends _$ArchivedSessionsNotifier {
  StreamSubscription? _blocSubscription;
  bool _isSubscribed = false;

  @override
  ArchivedSessionsState build() {
    Log.info('ArchivedSessionsNotifier 初始化 - 全局单例模式');

    // 获取Bloc实例
    final bloc = ref.watch(archivedSessionsBlocProvider);

    // 确保只订阅一次
    if (!_isSubscribed) {
      Log.info('ArchivedSessionsNotifier 订阅Bloc状态');
      // 订阅Bloc的状态流
      _blocSubscription = bloc.stream.listen((newState) {
        // 更新Riverpod状态
        state = newState;
        Log.debug('ArchivedSessionsNotifier 状态更新: ${newState.runtimeType}');
      });
      _isSubscribed = true;
    }

    // 确保在提供者被处置时取消订阅
    ref.onDispose(() {
      Log.info('ArchivedSessionsNotifier 销毁 - 应用程序退出');
      if (_isSubscribed) {
        _blocSubscription?.cancel();
        _isSubscribed = false;
      }
    });

    // 返回Bloc的当前状态作为初始状态
    return bloc.state;
  }

  // 添加公共方法来接受事件对象
  void add(ArchivedSessionsEvent event) {
    Log.debug('ArchivedSessionsNotifier 添加事件: ${event.runtimeType}');
    ref.read(archivedSessionsBlocProvider).add(event);
  }

  // 便捷方法 - 加载会话列表
  void loadSessions() {
    Log.info('ArchivedSessionsNotifier 加载会话列表');
    add(const ArchivedSessionsEvent.loadSessions());
  }

  // 便捷方法 - 加载会话列表（包含归档分组）
  void loadSessionsWithArchived() {
    Log.info('ArchivedSessionsNotifier 加载会话列表（包含归档分组）');
    add(const ArchivedSessionsEvent.loadSessionsWithArchived());
  }

  // 便捷方法 - 刷新会话列表
  void refreshSessions() {
    Log.info('ArchivedSessionsNotifier 刷新会话列表');
    add(const ArchivedSessionsEvent.refreshSessions());
  }

  // 便捷方法 - 标记会话为已读
  void markSessionAsRead(String conversationId) {
    Log.info('ArchivedSessionsNotifier 标记会话为已读: $conversationId');
    add(ArchivedSessionsEvent.markSessionAsRead(conversationId: conversationId));
  }

  // 便捷方法 - 置顶会话
  void pinSession(String conversationId) {
    Log.info('ArchivedSessionsNotifier 置顶会话: $conversationId');
    add(ArchivedSessionsEvent.pinSession(conversationId: conversationId));
  }

  // 便捷方法 - 取消置顶会话
  void unpinSession(String conversationId) {
    Log.info('ArchivedSessionsNotifier 取消置顶会话: $conversationId');
    add(ArchivedSessionsEvent.unpinSession(conversationId: conversationId));
  }

  // 便捷方法 - 静音会话
  void muteSession(String conversationId) {
    Log.info('ArchivedSessionsNotifier 静音会话: $conversationId');
    add(ArchivedSessionsEvent.muteSession(conversationId: conversationId));
  }

  // 便捷方法 - 取消静音会话
  void unmuteSession(String conversationId) {
    Log.info('ArchivedSessionsNotifier 取消静音会话: $conversationId');
    add(ArchivedSessionsEvent.unmuteSession(conversationId: conversationId));
  }

  // 便捷方法 - 删除会话
  void deleteSession(String conversationId) {
    Log.info('ArchivedSessionsNotifier 删除会话: $conversationId');
    add(ArchivedSessionsEvent.deleteSession(conversationId: conversationId));
  }

  /// 归档会话
  void archiveSession(String conversationId) {
    add(ArchivedSessionsEvent.archiveSession(conversationId: conversationId));
  }

  /// 取消归档会话
  void unarchiveSession(String conversationId) {
    add(ArchivedSessionsEvent.unarchiveSession(conversationId: conversationId));
  }

  /// 进入编辑模式
  void enterEditMode() {
    Log.info('ArchivedSessionsNotifier 进入编辑模式');
    state.maybeWhen(
      success: (sessions, _) {
        state = ArchivedSessionsState.success(sessions: sessions, isEditing: true);
      },
      orElse: () {},
    );
  }

  /// 退出编辑模式
  void exitEditMode() {
    Log.info('ArchivedSessionsNotifier 退出编辑模式');
    state.maybeWhen(
      success: (sessions, _) {
        state = ArchivedSessionsState.success(sessions: sessions, isEditing: false);
      },
      orElse: () {},
    );
  }

  /// 加载归档会话的分组标题
  void loadArchivedGroup() {
    Log.info('ArchivedSessionsNotifier 加载归档会话的分组标题');
    add(const ArchivedSessionsEvent.loadArchivedGroup());
  }

  /// 更新未归档会话列表
  Future<void> updateUnarchivedSessionList(String conversationId) async {
    Log.info('ArchivedSessionsNotifier 更新未归档会话列表: $conversationId');
    final bloc = ref.read(archivedSessionsBlocProvider);
    await bloc.updateUnarchivedSessionList(conversationId);
  }
}
