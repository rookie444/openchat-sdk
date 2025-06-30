import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/utils/log.dart';
import 'auth_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

part '../../../../generated/src/features/auth/blocs/auth_bloc_notifier.g.dart';

// 创建AuthBlocNotifier，用于UI交互
@riverpod
class AuthBlocNotifier extends _$AuthBlocNotifier {
  StreamSubscription? _blocSubscription;

  @override
  AuthState build() {
    final bloc = ref.watch(authBlocProvider);

    // 订阅bloc状态流
    _blocSubscription = bloc.stream.listen(
      (newState) {
        // 更新notifier状态
        state = newState;
      },
      onError: (error) {
        Log.error('AuthBlocNotifier状态流错误', error: error);
      },
    );

    // 确保在notifier销毁时取消订阅
    ref.onDispose(() {
      _blocSubscription?.cancel();
    });

    // 返回bloc的当前状态作为初始状态
    return bloc.state;
  }

  // 提供添加事件的方法
  void add(AuthEvent event) {
    Log.info('AuthBlocNotifier添加事件: $event');
    ref.read(authBlocProvider).add(event);
  }

  // 应用启动检查
  void checkAuth() {
    add(const AuthEvent.started());
  }

  // 用户登出
  void logout() {
    add(const AuthEvent.loggedOut());
  }
}
