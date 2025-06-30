import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/src/features/auth/blocs/login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  /// 初始状态，用户还没有输入任何信息
  const factory LoginState.initial({
    @Default('') String phone,
    @Default('86') String countryCode,
    @Default('') String smsCode,
    @Default('') String password,
    @Default(false) bool isPhoneValid,
    @Default(false) bool isSmsCodeValid,
    @Default(false) bool isPasswordValid,
  }) = _Initial;

  /// 验证码已发送状态，表示用户已经请求了验证码
  const factory LoginState.smsCodeSent({
    required String phone,
    required String countryCode,
    @Default('') String smsCode,
    @Default(false) bool isSmsCodeValid,
    @Default(true) bool isPhoneValid,
  }) = _SmsCodeSent;

  /// 正在提交状态，表示登录请求正在处理中
  const factory LoginState.submitting({
    required String phone,
    required String countryCode,
    String? smsCode,
    String? password,
    @Default(true) bool isPhoneValid,
    bool? isSmsCodeValid,
    bool? isPasswordValid,
  }) = _Submitting;

  /// 登录成功状态
  const factory LoginState.success() = _Success;

  /// 登录失败状态，包含错误信息
  const factory LoginState.failure({
    required String errorMessage,
    String? phone,
    String? countryCode,
    String? smsCode,
    String? password,
    bool? isPhoneValid,
    bool? isSmsCodeValid,
    bool? isPasswordValid,
  }) = _Failure;
}
