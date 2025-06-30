import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/src/features/auth/blocs/register_state.freezed.dart';

enum RegisterStatus { initial, submitting, success, failure, smsCode }

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default('') String phone,
    @Default('86') String countryCode,
    @Default('') String smsCode,
    @Default(false) bool isPhoneValid,
    @Default(false) bool isSmsCodeValid,
    @Default(false) bool hasRequestedSmsCode,
    @Default(RegisterStatus.initial) RegisterStatus status,
    String? errorMessage,
  }) = _RegisterState;

  factory RegisterState.initial() => const RegisterState(
    phone: '',
    countryCode: '86',
    smsCode: '',
    isPhoneValid: false,
    isSmsCodeValid: false,
    hasRequestedSmsCode: false,
    status: RegisterStatus.initial,
  );

  factory RegisterState.success() =>
      const RegisterState(status: RegisterStatus.success);
}
