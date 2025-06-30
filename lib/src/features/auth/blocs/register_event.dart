import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/src/features/auth/blocs/register_event.freezed.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.phoneChanged(String phone) = _PhoneChanged;

  const factory RegisterEvent.countryCodeChanged(String countryCode) =
      _CountryCodeChanged;

  const factory RegisterEvent.smsCodeChanged(String smsCode) = _SmsCodeChanged;

  const factory RegisterEvent.sendSMSCode(String phone) = _SendSMSCode;

  const factory RegisterEvent.registerSubmitted({
    required String countryCode,
    required String phone,
    required String smsCode,
  }) = _RegisterSubmitted;
}
