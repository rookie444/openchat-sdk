import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/src/features/connection/blocs/connection_status_state.freezed.dart';

@freezed
class ConnectionStatusState with _$ConnectionStatusState {
  const factory ConnectionStatusState.connecting() = _Connecting;
  const factory ConnectionStatusState.authenticating() = _Authenticating;
  const factory ConnectionStatusState.connected() = _Connected;
  const factory ConnectionStatusState.failed(String message) = _Failed;
}
