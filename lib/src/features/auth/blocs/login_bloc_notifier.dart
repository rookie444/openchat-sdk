import '../../../core/utils/log.dart';
import 'login_event.dart';
import 'login_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:async';
import '../blocs/login_bloc.dart';

part '../../../../generated/src/features/auth/blocs/login_bloc_notifier.g.dart';

@riverpod
class LoginBlocNotifier extends _$LoginBlocNotifier {
  // 保存对 BLoC 流的订阅
  StreamSubscription? _blocSubscription;

  /// build 方法：初始化 notifier 并返回初始状态
  @override
  LoginState build() {
    Log.debug("LoginBlocNotifier: build() called");
    final bloc = ref.watch(loginBlocProvider);

    // 订阅 bloc 的状态流
    _blocSubscription = bloc.stream.listen((newState) {
      Log.debug(
        "LoginBlocNotifier: Received new state from Bloc stream: $newState",
      );
      // 更新 notifier 的状态，这会触发 UI 监听器
      state = newState;
    });

    // 组件销毁时取消订阅
    ref.onDispose(() {
      Log.info("LoginBlocNotifier: Disposing - cancelling Bloc subscription");
      _blocSubscription?.cancel();
    });

    Log.debug("LoginBlocNotifier: Returning initial state: ${bloc.state}");
    return bloc.state;
  }

  /// 向底层 BLoC 发送事件
  void add(LoginEvent event) {
    Log.debug("LoginBlocNotifier: Adding event: $event");
    ref.read(loginBlocProvider).add(event);
  }
}
