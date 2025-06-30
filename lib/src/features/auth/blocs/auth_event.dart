import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../rust/api/model/user.dart';

part '../../../../generated/src/features/auth/blocs/auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;

  const factory AuthEvent.loggedIn({
    required FfiUserBase user,
    required String token,
    required String sessionId,
  }) = _LoggedIn;

  const factory AuthEvent.registered({
    required FfiUserBase user,
    required String token,
  }) = _Registered;

  const factory AuthEvent.loggedOut() = _LoggedOut;
}
