import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'connection_status_bloc.dart';
import 'connection_status_event.dart';
import 'connection_status_state.dart';

part '../../../../generated/src/features/connection/blocs/connection_status_notifier.g.dart';

@riverpod
class ConnectionStatusNotifier extends _$ConnectionStatusNotifier {
  StreamSubscription<ConnectionStatusState>? _subscription;

  @override
  ConnectionStatusState build() {
    final bloc = ref.watch(connectionStatusBlocProvider);

    _subscription = bloc.stream.listen((newState) {
      state = newState;
    });

    ref.onDispose(() {
      _subscription?.cancel();
    });

    return bloc.state;
  }

  void add(ConnectionStatusEvent event) {
    ref.read(connectionStatusBlocProvider).add(event);
  }
}
