import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../rust/api/model/user.dart';

part '../../../../generated/src/features/auth/blocs/auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.authenticated({
    required FfiUserBase user,
    required String token,
    required String sessionId,
  }) = _Authenticated;

  const factory AuthState.unauthenticated({String? errorMessage}) =
      _Unauthenticated;
}
