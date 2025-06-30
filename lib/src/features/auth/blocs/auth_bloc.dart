import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/utils/log.dart';
import '../../../rust/api/model/user.dart';
import '../service/auth_service.dart';
import 'auth_event.dart';
import 'auth_state.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../../generated/src/features/auth/blocs/auth_bloc.g.dart';

// 使用riverpod的provider简单提供AuthBloc实例
@Riverpod(keepAlive: true)
AuthBloc authBloc(Ref ref) {
  final authService = ref.read(authServiceProvider);
  final bloc = AuthBloc(authService: authService);
  Log.info('authBlocProvider: 创建AuthBloc实例 (全局单例)');
  return bloc;
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;

  AuthBloc({required AuthService authService})
    : _authService = authService,
      super(const AuthState.initial()) {
    Log.info('AuthBloc: 初始化');

    on<AuthEvent>((event, emit) async {
      Log.info('AuthBloc: 收到事件 $event');

      // 处理异步操作
      await event.maybeMap(
        started: (_) async => await _onStarted(emit),
        loggedOut: (_) async => await _onLoggedOut(emit),
        orElse: () async {},
      );

      // 处理同步操作
      event.maybeMap(
        loggedIn: (e) => _onLoggedIn(emit, e.user, e.token, e.sessionId),
        registered: (e) => _onRegistered(emit, e.user, e.token),
        orElse: () => {},
      );
    });
  }

  Future<void> _onStarted(Emitter<AuthState> emit) async {
    Log.info('AuthBloc: 开始检查认证状态');
    try {
      // final user = await _authService.checkAuthStatus();
      // final token = await _authService.getAuthToken();
      // final sessionId = await _authService.getSessionId();

      final user = FfiUserBase(uid: 802951, nickName: 'test', avatar: 'https://xpz-xire86.oss-cn-hongkong.aliyuncs.com/test/common/pic/202501/23/4d4d0edb76cbf9d6946d5802d0bdb049.jpg');
      final token = 'd0a983d3356c2e500000d506baf811bf';
      final sessionId = 'd0a983d3356c2e500000d506baf811bf';

      Log.info(
        'AuthBloc: 检查结果 - user=${user != null}, token=${token != null}, sessionId=${sessionId != null}',
      );

      if (user != null && token != null && sessionId != null) {
        Log.info('AuthBloc: 用户已登录: ${user.nickName}, sessionId: $sessionId');
        emit(
          AuthState.authenticated(
            user: user,
            token: token,
            sessionId: sessionId,
          ),
        );
        Log.info('AuthBloc: 已发出authenticated状态');
      } else {
        Log.info('AuthBloc: 用户未登录');
        emit(const AuthState.unauthenticated());
        Log.info('AuthBloc: 已发出unauthenticated状态');
      }
    } catch (e) {
      Log.error('AuthBloc: 验证用户状态失败', error: e);
      emit(const AuthState.unauthenticated());
      Log.info('AuthBloc: 由于错误已发出unauthenticated状态');
    }
  }

  void _onLoggedIn(
    Emitter<AuthState> emit,
    FfiUserBase user,
    String token,
    String sessionId,
  ) {
    Log.info(
      'AuthBloc: 处理用户登录成功事件 - user=${user.nickName}, sessionId=$sessionId',
    );

    // 保存认证信息
    _authService.saveAuthInfo(user, token, sessionId);
    Log.info('AuthBloc: 已保存认证信息');

    // 发射新状态
    emit(
      AuthState.authenticated(user: user, token: token, sessionId: sessionId),
    );
    Log.info('AuthBloc: 已发出authenticated状态');
  }

  void _onRegistered(Emitter<AuthState> emit, FfiUserBase user, String token) {
    Log.info('AuthBloc: 处理用户注册成功事件 - user=${user.nickName}');

    // 生成或获取sessionId
    final sessionId = _generateSessionId();
    Log.info('AuthBloc: 生成sessionId: $sessionId');

    // 保存认证信息
    _authService.saveAuthInfo(user, token, sessionId);
    Log.info('AuthBloc: 已保存认证信息');

    // 发射新状态
    emit(
      AuthState.authenticated(user: user, token: token, sessionId: sessionId),
    );
    Log.info('AuthBloc: 已发出authenticated状态');
  }

  Future<void> _onLoggedOut(Emitter<AuthState> emit) async {
    Log.info('AuthBloc: 处理用户登出事件');
    try {
      await _authService.logout();
      Log.info('AuthBloc: 用户登出成功');
      emit(const AuthState.unauthenticated());
      Log.info('AuthBloc: 已发出unauthenticated状态');
    } catch (e) {
      Log.error('AuthBloc: 登出失败', error: e);
      emit(AuthState.unauthenticated(errorMessage: e.toString()));
    }
  }

  // 生成唯一的会话ID
  String _generateSessionId() {
    // 简单实现，生成一个基于时间戳的唯一ID
    // 实际应用中可能需要更复杂的生成逻辑
    return DateTime.now().millisecondsSinceEpoch.toString();
  }
}
