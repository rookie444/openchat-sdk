import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/src/features/connection/blocs/connection_status_event.freezed.dart';

@freezed
class ConnectionStatusEvent with _$ConnectionStatusEvent {
  const factory ConnectionStatusEvent.connect() = _Connect;
  const factory ConnectionStatusEvent.startAuthentication() =
      _StartAuthentication;
  const factory ConnectionStatusEvent.connectionComplete() =
      _ConnectionComplete;
  const factory ConnectionStatusEvent.connectionFailed(String message) =
      _ConnectionFailed;
}
