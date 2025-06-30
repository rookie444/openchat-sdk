import 'package:bloc/bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/utils/log.dart';
import '../service/login_service.dart';
import 'auth_bloc.dart';
import 'auth_event.dart';
import 'login_event.dart';
import 'login_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../../generated/src/features/auth/blocs/login_bloc.g.dart';

// 使用riverpod的provider简单提供LoginBloc实例
@riverpod
LoginBloc loginBloc(Ref ref) {
  final loginService = ref.read(loginServiceProvider);
  final authBloc = ref.read(authBlocProvider);
  return LoginBloc(loginService: loginService, authBloc: authBloc);
}

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginService _loginService;
  final AuthBloc _authBloc;

  LoginBloc({required LoginService loginService, required AuthBloc authBloc})
    : _loginService = loginService,
      _authBloc = authBloc,
      super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      // 处理异步操作
      await event.maybeMap(
        sendSMSCode: (e) async => await _onSendSmsSubmitted(emit, e.phone),
        loginSubmitted:
            (e) async => await _onLoginSubmitted(
              emit,
              e.countryCode,
              e.phone,
              e.smsCode,
            ),
        loginWithPassword:
            (e) async => await _onLoginWithPassword(
              emit,
              e.countryCode,
              e.phone,
              e.password,
            ),
        orElse: () async {},
      );

      // 处理同步操作
      event.maybeMap(
        phoneChanged: (e) => _onPhoneChanged(emit, e.phone),
        countryCodeChanged: (e) => _onCountryCodeChanged(emit, e.countryCode),
        smsCodeChanged: (e) => _onSmsCodeChanged(emit, e.smsCode),
        passwordChanged: (e) => _onPasswordChanged(emit, e.password),
        orElse: () => {},
      );
    });
  }

  void _onPhoneChanged(Emitter<LoginState> emit, String phone) {
    final isPhoneValid = _isPhoneValid(phone);
    Log.info('LoginBloc: 手机号变更: $phone, 长度=${phone.length}, 有效=$isPhoneValid');

    state.maybeMap(
      initial: (initialState) {
        emit(initialState.copyWith(phone: phone, isPhoneValid: isPhoneValid));
      },
      smsCodeSent: (smsState) {
        emit(smsState.copyWith(phone: phone, isPhoneValid: isPhoneValid));
      },
      failure: (failureState) {
        emit(
          LoginState.initial(
            phone: phone,
            isPhoneValid: isPhoneValid,
            countryCode: failureState.countryCode ?? '86',
            smsCode: failureState.smsCode ?? '',
            password: failureState.password ?? '',
            isSmsCodeValid: failureState.isSmsCodeValid ?? false,
            isPasswordValid: failureState.isPasswordValid ?? false,
          ),
        );
      },
      orElse: () {
        // submitting 或 success 状态下不处理手机号变更
      },
    );

    // 添加延迟检查确认状态已正确更新
    Future.delayed(const Duration(milliseconds: 100), () {
      Log.info(
        'LoginBloc: 手机号状态更新检查 - phone=$phone, isPhoneValid=${_getPhoneValidStatus()}, canSendSmsCode=$canSendSmsCode',
      );
    });
  }

  void _onCountryCodeChanged(Emitter<LoginState> emit, String countryCode) {
    state.maybeMap(
      initial: (initialState) {
        emit(initialState.copyWith(countryCode: countryCode));
      },
      smsCodeSent: (smsState) {
        emit(smsState.copyWith(countryCode: countryCode));
      },
      failure: (failureState) {
        if (failureState.phone != null) {
          emit(
            LoginState.initial(
              phone: failureState.phone!,
              countryCode: countryCode,
              isPhoneValid: failureState.isPhoneValid ?? false,
              smsCode: failureState.smsCode ?? '',
              password: failureState.password ?? '',
              isSmsCodeValid: failureState.isSmsCodeValid ?? false,
              isPasswordValid: failureState.isPasswordValid ?? false,
            ),
          );
        }
      },
      orElse: () {
        // submitting 或 success 状态下不处理国家代码变更
      },
    );
  }

  void _onSmsCodeChanged(Emitter<LoginState> emit, String smsCode) {
    final isSmsCodeValid = _isSmsCodeValid(smsCode);
    Log.info(
      'LoginBloc: 验证码变更: $smsCode, 长度=${smsCode.length}, 有效=$isSmsCodeValid',
    );

    state.maybeMap(
      initial: (initialState) {
        emit(
          initialState.copyWith(
            smsCode: smsCode,
            isSmsCodeValid: isSmsCodeValid,
          ),
        );
      },
      smsCodeSent: (smsState) {
        emit(
          smsState.copyWith(smsCode: smsCode, isSmsCodeValid: isSmsCodeValid),
        );
      },
      failure: (failureState) {
        if (failureState.phone != null) {
          emit(
            LoginState.smsCodeSent(
              phone: failureState.phone!,
              countryCode: failureState.countryCode ?? '86',
              smsCode: smsCode,
              isSmsCodeValid: isSmsCodeValid,
            ),
          );
        }
      },
      orElse: () {
        // submitting 或 success 状态下不处理验证码变更
      },
    );

    // 添加延迟检查确认状态已正确更新
    Future.delayed(const Duration(milliseconds: 100), () {
      Log.info(
        'LoginBloc: 验证码状态更新检查 - smsCode=$smsCode, isSmsCodeValid=${_getSmsCodeValidStatus()}, 长度=${smsCode.length}',
      );
    });
  }

  void _onPasswordChanged(Emitter<LoginState> emit, String password) {
    final isPasswordValid = _isPasswordValid(password);

    state.maybeMap(
      initial: (initialState) {
        emit(
          initialState.copyWith(
            password: password,
            isPasswordValid: isPasswordValid,
          ),
        );
      },
      failure: (failureState) {
        if (failureState.phone != null) {
          emit(
            LoginState.initial(
              phone: failureState.phone!,
              countryCode: failureState.countryCode ?? '86',
              password: password,
              isPasswordValid: isPasswordValid,
              isPhoneValid: failureState.isPhoneValid ?? false,
            ),
          );
        }
      },
      orElse: () {
        // 其他状态下不处理密码变更
      },
    );
  }

  Future<void> _onSendSmsSubmitted(
    Emitter<LoginState> emit,
    String phone,
  ) async {
    // 先检查手机号有效性
    final isPhoneValid = _isPhoneValid(phone);
    Log.info('发送验证码前先检查手机号: $phone, 有效=$isPhoneValid');

    // 如果当前已经在提交状态，避免重复处理
    final alreadySubmitting = state.maybeMap(
      submitting: (_) => true,
      orElse: () => false,
    );

    // 检查是否已经是验证码已发送状态，避免重复发送
    final alreadySent = state.maybeMap(
      smsCodeSent: (_) => true,
      orElse: () => false,
    );

    if (alreadySubmitting) {
      Log.info('验证码发送已经在处理中，忽略重复请求');
      return;
    }

    if (alreadySent) {
      Log.info('验证码已经发送，不重复处理');
      return;
    }

    if (!isPhoneValid) {
      String countryCode = '86';
      state.maybeMap(
        initial: (s) => countryCode = s.countryCode,
        smsCodeSent: (s) => countryCode = s.countryCode,
        submitting: (s) => countryCode = s.countryCode,
        failure: (s) => countryCode = s.countryCode ?? '86',
        orElse: () {},
      );

      emit(
        LoginState.failure(
          errorMessage: '请输入有效的手机号',
          phone: phone,
          countryCode: countryCode,
          isPhoneValid: false,
        ),
      );
      return;
    }

    // 获取当前国家代码
    String countryCode = '86';
    state.maybeMap(
      initial: (s) => countryCode = s.countryCode,
      smsCodeSent: (s) => countryCode = s.countryCode,
      failure: (s) => countryCode = s.countryCode ?? '86',
      orElse: () {},
    );

    // 设置状态为提交中
    emit(
      LoginState.submitting(
        phone: phone,
        countryCode: countryCode,
        isPhoneValid: true,
      ),
    );

    try {
      Log.info('开始请求发送验证码: +$countryCode $phone');
      await _loginService.getSmsCode(countryCode: countryCode, phone: phone);

      Log.info('验证码发送成功');
      emit(
        LoginState.smsCodeSent(
          phone: phone,
          countryCode: countryCode,
          smsCode: '',
          isSmsCodeValid: false,
        ),
      );
    } catch (error) {
      Log.error('发送验证码失败', error: error);
      emit(
        LoginState.failure(
          errorMessage: '发送验证码失败: ${error.toString()}',
          phone: phone,
          countryCode: countryCode,
          isPhoneValid: true,
        ),
      );
    }
  }

  Future<void> _onLoginSubmitted(
    Emitter<LoginState> emit,
    String countryCode,
    String phone,
    String smsCode,
  ) async {
    Log.info('登录提交: $countryCode, $phone, $smsCode');

    // 如果当前已经在提交状态，避免重复处理
    final alreadySubmitting = state.maybeMap(
      submitting: (_) => true,
      orElse: () => false,
    );
    if (alreadySubmitting) {
      Log.info('登录已经在处理中，忽略重复请求');
      return;
    }

    // 验证表单
    final isPhoneValid = _isPhoneValid(phone);
    final isSmsCodeValid = _isSmsCodeValid(smsCode);

    if (!isPhoneValid || !isSmsCodeValid) {
      Log.info('登录表单验证失败');
      emit(
        LoginState.failure(
          errorMessage: '请填写正确的手机号和验证码',
          phone: phone,
          countryCode: countryCode,
          smsCode: smsCode,
          isPhoneValid: isPhoneValid,
          isSmsCodeValid: isSmsCodeValid,
        ),
      );
      return;
    }

    // 设置状态为提交中
    emit(
      LoginState.submitting(
        phone: phone,
        countryCode: countryCode,
        smsCode: smsCode,
        isPhoneValid: isPhoneValid,
        isSmsCodeValid: isSmsCodeValid,
      ),
    );

    try {
      Log.info('开始调用登录API');
      final loginResponse = await _loginService.login(
        countryCode: countryCode,
        phone: phone,
        smsCode: smsCode,
      );

      // 登录成功后通知AuthBloc
      if (loginResponse.user != null) {
        Log.info(
          '登录成功，获取到会话信息: sessionId=${loginResponse.sessionId}，准备通知AuthBloc',
        );

        // 标记当前state为正在提交状态以避免重复处理
        final isAlreadySuccess = state.maybeMap(
          success: (_) => true,
          orElse: () => false,
        );

        if (isAlreadySuccess) {
          Log.info('已经处于成功状态，避免重复通知AuthBloc');
          return;
        }

        _authBloc.add(
          AuthEvent.loggedIn(
            user: loginResponse.user!,
            token: loginResponse.token,
            sessionId: loginResponse.sessionId,
          ),
        );

        Log.info('已发送登录成功事件到AuthBloc');

        // 将状态设置为成功，不再触发其他状态变化
        emit(const LoginState.success());
        Log.info('登录流程完成，发出success状态');
      } else {
        Log.info('登录API返回成功但未获取到用户信息');
        emit(
          LoginState.failure(
            errorMessage: '登录失败: 服务器未返回用户信息',
            phone: phone,
            countryCode: countryCode,
            smsCode: smsCode,
            isPhoneValid: isPhoneValid,
            isSmsCodeValid: isSmsCodeValid,
          ),
        );
      }
    } catch (e) {
      Log.error('登录失败', error: e);
      emit(
        LoginState.failure(
          errorMessage: '登录失败: ${e.toString()}',
          phone: phone,
          countryCode: countryCode,
          smsCode: smsCode,
          isPhoneValid: isPhoneValid,
          isSmsCodeValid: isSmsCodeValid,
        ),
      );
    }
  }

  Future<void> _onLoginWithPassword(
    Emitter<LoginState> emit,
    String countryCode,
    String phone,
    String password,
  ) async {
    Log.info('密码登录提交: $countryCode, $phone');

    // 如果当前已经在提交状态，避免重复处理
    final alreadySubmitting = state.maybeMap(
      submitting: (_) => true,
      orElse: () => false,
    );
    if (alreadySubmitting) {
      Log.info('密码登录已经在处理中，忽略重复请求');
      return;
    }

    // 验证表单
    final isPhoneValid = _isPhoneValid(phone);
    final isPasswordValid = _isPasswordValid(password);

    if (!isPhoneValid || !isPasswordValid) {
      emit(
        LoginState.failure(
          errorMessage: '请填写正确的手机号和密码',
          phone: phone,
          countryCode: countryCode,
          password: password,
          isPhoneValid: isPhoneValid,
          isPasswordValid: isPasswordValid,
        ),
      );
      return;
    }

    // 设置状态为提交中
    emit(
      LoginState.submitting(
        phone: phone,
        countryCode: countryCode,
        password: password,
        isPhoneValid: isPhoneValid,
        isPasswordValid: isPasswordValid,
      ),
    );

    try {
      final loginResponse = await _loginService.loginWithPassword(
        countryCode: countryCode,
        phone: phone,
        password: password,
      );

      // 登录成功后通知AuthBloc
      if (loginResponse.user != null) {
        Log.info(
          '密码登录成功，获取到会话信息: sessionId=${loginResponse.sessionId}，准备通知AuthBloc',
        );

        // 标记当前state为正在提交状态以避免重复处理
        final isAlreadySuccess = state.maybeMap(
          success: (_) => true,
          orElse: () => false,
        );

        if (isAlreadySuccess) {
          Log.info('已经处于成功状态，避免重复通知AuthBloc');
          return;
        }

        _authBloc.add(
          AuthEvent.loggedIn(
            user: loginResponse.user!,
            token: loginResponse.token,
            sessionId: loginResponse.sessionId,
          ),
        );

        Log.info('已发送密码登录成功事件到AuthBloc');

        // 将状态设置为成功，不再触发其他状态变化
        emit(const LoginState.success());
        Log.info('密码登录流程完成，发出success状态');
      } else {
        Log.info('密码登录API返回成功但未获取到用户信息');
        emit(
          LoginState.failure(
            errorMessage: '登录失败: 服务器未返回用户信息',
            phone: phone,
            countryCode: countryCode,
            password: password,
            isPhoneValid: isPhoneValid,
            isPasswordValid: isPasswordValid,
          ),
        );
      }
    } catch (e) {
      Log.error('密码登录失败', error: e);
      emit(
        LoginState.failure(
          errorMessage: e.toString(),
          phone: phone,
          countryCode: countryCode,
          password: password,
          isPhoneValid: isPhoneValid,
          isPasswordValid: isPasswordValid,
        ),
      );
    }
  }

  bool _isPhoneValid(String phone) {
    // 简单的手机号验证逻辑
    return phone.length == 11;
  }

  bool _isSmsCodeValid(String smsCode) {
    // 验证码长度验证逻辑，改为4位
    Log.info(
      '验证SMS码有效性: "$smsCode", 长度=${smsCode.length}, 是否是4位=${smsCode.length == 4}',
    );
    if (smsCode.isEmpty) {
      return false;
    }
    return smsCode.length == 4;
  }

  bool _isPasswordValid(String password) {
    // 简单的密码验证逻辑
    return password.length >= 6;
  }

  // 获取短信验证码有效状态
  bool _getSmsCodeValidStatus() {
    return state.maybeMap(
      initial: (s) => s.isSmsCodeValid,
      smsCodeSent: (s) => s.isSmsCodeValid,
      submitting: (s) => s.isSmsCodeValid ?? false,
      failure: (s) => s.isSmsCodeValid ?? false,
      orElse: () => false,
    );
  }

  // 获取手机号有效状态
  bool _getPhoneValidStatus() {
    return state.maybeMap(
      initial: (s) => s.isPhoneValid,
      smsCodeSent: (s) => s.isPhoneValid,
      submitting: (s) => s.isPhoneValid,
      failure: (s) => s.isPhoneValid ?? false,
      orElse: () => false,
    );
  }

  // 便捷访问器 - 判断是否可以使用验证码登录
  bool get isPhoneLoginEnabled {
    return state.map(
      initial: (s) => s.isPhoneValid && s.isSmsCodeValid,
      smsCodeSent: (s) => s.isPhoneValid && s.isSmsCodeValid,
      submitting: (_) => false,
      success: (_) => false,
      failure: (s) => (s.isPhoneValid ?? false) && (s.isSmsCodeValid ?? false),
    );
  }

  // 便捷访问器 - 判断是否可以使用密码登录
  bool get isPasswordLoginEnabled {
    return state.maybeMap(
      initial: (s) => s.isPhoneValid && s.isPasswordValid,
      submitting: (_) => false,
      success: (_) => false,
      failure: (s) => (s.isPhoneValid ?? false) && (s.isPasswordValid ?? false),
      orElse: () => false,
    );
  }

  // 便捷访问器 - 判断是否可以发送短信验证码
  bool get canSendSmsCode {
    // 获取当前状态下的手机号
    final phone = state.maybeMap(
      initial: (s) => s.phone,
      smsCodeSent: (s) => s.phone,
      submitting: (s) => s.phone,
      failure: (s) => s.phone ?? '',
      orElse: () => '',
    );

    // 显式检查手机号长度是否为11位，而不是依赖状态中的isPhoneValid标志
    final isPhoneValid = phone.length == 11;

    // 在部分状态下即使手机号有效也不允许发送验证码
    bool result = false;

    state.map(
      initial: (s) => result = isPhoneValid, // 只有当手机号有效时才可发送
      smsCodeSent: (_) => result = false, // 已经发送过验证码
      submitting: (_) => result = false,
      success: (_) => result = false,
      failure: (s) => result = isPhoneValid, // 只有当手机号有效时才可发送
    );

    Log.info(
      'LoginBloc: 检查是否可发送验证码 - phone=$phone, phoneLength=${phone.length}, isPhoneValid=$isPhoneValid, 状态类型=${state.runtimeType}, 最终结果=$result',
    );
    return result;
  }
}
