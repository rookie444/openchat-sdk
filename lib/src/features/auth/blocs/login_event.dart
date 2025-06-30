import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/src/features/auth/blocs/login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.phoneChanged(String phone) = _PhoneChanged;

  const factory LoginEvent.countryCodeChanged(String countryCode) =
      _CountryCodeChanged;

  const factory LoginEvent.smsCodeChanged(String smsCode) = _SmsCodeChanged;

  const factory LoginEvent.passwordChanged(String password) = _PasswordChanged;

  const factory LoginEvent.sendSMSCode(String phone) = _SendSMSCode;

  const factory LoginEvent.loginSubmitted({
    required String countryCode,
    required String phone,
    required String smsCode,
  }) = _LoginSubmitted;

  const factory LoginEvent.loginWithPassword({
    required String countryCode,
    required String phone,
    required String password,
  }) = _LoginWithPassword;
}
