import 'package:bloc/bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/utils/log.dart';
import '../service/register_service.dart';
import 'auth_bloc.dart';
import 'auth_event.dart';
import 'register_event.dart';
import 'register_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../../generated/src/features/auth/blocs/register_bloc.g.dart';

// 使用riverpod的provider简单提供RegisterBloc实例
@riverpod
RegisterBloc registerBloc(Ref ref) {
  final registerService = ref.read(registerServiceProvider);
  final authBloc = ref.read(authBlocProvider);
  final bloc = RegisterBloc(
    registerService: registerService,
    authBloc: authBloc,
  );
  ref.onDispose(() {
    bloc.close();
  });
  return bloc;
}

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterService _registerService;
  final AuthBloc _authBloc;

  RegisterBloc({
    required RegisterService registerService,
    required AuthBloc authBloc,
  }) : _registerService = registerService,
       _authBloc = authBloc,
       super(RegisterState.initial()) {
    on<RegisterEvent>((event, emit) async {
      await event.maybeMap(
        sendSMSCode: (e) async => await _onSendSmsSubmitted(e.phone, emit),
        registerSubmitted:
            (e) async => await _onRegisterSubmitted(
              e.countryCode,
              e.phone,
              e.smsCode,
              emit,
            ),
        orElse: () async {},
      );

      event.maybeMap(
        phoneChanged: (e) => _onPhoneChanged(e.phone, emit),
        countryCodeChanged: (e) => _onCountryCodeChanged(e.countryCode, emit),
        smsCodeChanged: (e) => _onSmsCodeChanged(e.smsCode, emit),
        orElse: () async {},
      );
    });
  }

  void _onPhoneChanged(String phone, Emitter<RegisterState> emit) {
    final isPhoneValid = _isPhoneValid(phone);
    emit(state.copyWith(phone: phone, isPhoneValid: isPhoneValid));
    Log.info('手机号变更: $phone, 有效=$isPhoneValid');
  }

  void _onCountryCodeChanged(String countryCode, Emitter<RegisterState> emit) {
    emit(state.copyWith(countryCode: countryCode));
    Log.info('国家代码变更: $countryCode');
  }

  void _onSmsCodeChanged(String smsCode, Emitter<RegisterState> emit) {
    final isSmsCodeValid = _isSmsCodeValid(smsCode);
    Log.info('验证码变更: $smsCode, 长度=${smsCode.length}, 有效=$isSmsCodeValid');
    emit(state.copyWith(smsCode: smsCode, isSmsCodeValid: isSmsCodeValid));
  }

  Future<void> _onSendSmsSubmitted(
    String phone,
    Emitter<RegisterState> emit,
  ) async {
    // 先检查手机号有效性
    final isPhoneValid = _isPhoneValid(phone);
    Log.info('发送验证码前先检查手机号: $phone, 有效=$isPhoneValid');

    // 如果当前已经在提交状态，避免重复处理
    if (state.status == RegisterStatus.submitting) {
      Log.info('验证码发送已经在处理中，忽略重复请求');
      return;
    }

    if (!isPhoneValid) {
      emit(
        state.copyWith(
          status: RegisterStatus.failure,
          phone: phone,
          isPhoneValid: false,
          errorMessage: '请输入有效的手机号',
        ),
      );
      return;
    }

    // 设置状态为提交中
    emit(
      state.copyWith(
        status: RegisterStatus.submitting,
        phone: phone,
        isPhoneValid: true,
      ),
    );

    try {
      Log.info('开始请求发送验证码: +${state.countryCode} $phone');
      await _registerService.getSmsCode(
        countryCode: state.countryCode,
        phone: phone,
      );

      // 设置状态为短信码已请求
      emit(
        state.copyWith(
          status: RegisterStatus.smsCode,
          hasRequestedSmsCode: true,
          smsCode: '', // 重置短信验证码
          isSmsCodeValid: false, // 重置验证码有效状态
        ),
      );
      Log.info('验证码发送成功，已设置hasRequestedSmsCode=true');
    } catch (e) {
      Log.error('发送验证码失败', error: e);
      emit(
        state.copyWith(
          status: RegisterStatus.failure,
          errorMessage: '验证码发送失败: ${e.toString()}',
        ),
      );
    }
  }

  Future<void> _onRegisterSubmitted(
    String countryCode,
    String phone,
    String smsCode,
    Emitter<RegisterState> emit,
  ) async {
    Log.info('提交注册: 国家码=$countryCode, 手机=$phone, 验证码长度=${smsCode.length}');

    // 如果当前已经在提交状态，避免重复处理
    if (state.status == RegisterStatus.submitting) {
      Log.info('注册已经在处理中，忽略重复请求');
      return;
    }

    // 验证表单数据
    final isPhoneValid = _isPhoneValid(phone);
    final isSmsCodeValid = _isSmsCodeValid(smsCode);

    if (!isPhoneValid || !isSmsCodeValid) {
      String errorMessage = '';

      if (!isPhoneValid) {
        errorMessage = '请输入有效的手机号码';
      } else if (!isSmsCodeValid) {
        errorMessage = '请输入有效的验证码';
      }

      Log.warning('注册表单验证失败: $errorMessage');
      emit(
        state.copyWith(
          status: RegisterStatus.failure,
          errorMessage: errorMessage,
        ),
      );
      return;
    }

    // 表单验证通过，设置状态为提交中
    emit(
      state.copyWith(
        status: RegisterStatus.submitting,
        phone: phone,
        countryCode: countryCode,
        smsCode: smsCode,
      ),
    );

    try {
      Log.info('开始调用注册API');
      // 调用注册API
      final response = await _registerService.register(
        countryCode: countryCode,
        phone: phone,
        smsCode: smsCode,
      );

      if (response.user != null) {
        Log.info('注册成功: ${response.user!.nickName}');

        // 通知认证状态更新
        _authBloc.add(
          AuthEvent.registered(user: response.user!, token: response.token),
        );

        // 设置注册成功状态 - 直接使用专用状态构造器
        emit(RegisterState.success());
        Log.info('注册流程完成，发出success状态');
      } else {
        Log.error('注册失败: 未获取到用户信息');
        emit(
          state.copyWith(
            status: RegisterStatus.failure,
            errorMessage: '注册失败: 服务器未返回用户信息',
          ),
        );
      }
    } catch (e) {
      Log.error('注册异常', error: e);
      emit(
        state.copyWith(
          status: RegisterStatus.failure,
          errorMessage: '注册失败: ${e.toString()}',
        ),
      );
    }
  }

  bool _isPhoneValid(String phone) {
    // 简单的手机号验证逻辑
    return phone.length == 11;
  }

  bool _isSmsCodeValid(String smsCode) {
    // 简单的验证码验证逻辑
    return smsCode.length == 4;
  }
}
