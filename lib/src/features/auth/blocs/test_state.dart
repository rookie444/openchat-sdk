import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/src/features/auth/blocs/test_state.freezed.dart';

@freezed
class TestState with _$TestState {
  const factory TestState.failed({required String errorMessage}) = _Failed;

  const factory TestState.authenticated({
    required String user,
    required String token,
    required String sessionId,
  }) = _Authenticated;

  const factory TestState.unauthenticated() = _Unauthenticated;
}
