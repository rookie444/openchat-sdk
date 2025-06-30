import '../../../core/utils/log.dart';
import 'register_event.dart';
import 'register_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:async';
import '../blocs/register_bloc.dart';

part '../../../../generated/src/features/auth/blocs/register_bloc_notifier.g.dart';

@riverpod
class RegisterBlocNotifier extends _$RegisterBlocNotifier {
  // Holds the subscription to the underlying Bloc's stream
  StreamSubscription? _blocSubscription;

  /// Build method: Called once initially to set up the notifier.
  /// It returns the INITIAL state and sets up the listener.
  @override
  RegisterState build() {
    Log.info("RegisterBlocNotifier: build() called");
    final bloc = ref.watch(registerBlocProvider);
    _blocSubscription = bloc.stream.listen((newState) {
      Log.info(
        "RegisterBlocNotifier: Received new state from Bloc stream: $newState",
      );
      state =
          newState; // Update the notifier's state, this triggers UI listeners
    });

    ref.onDispose(() {
      Log.info(
        "RegisterBlocNotifier: Disposing - cancelling Bloc subscription",
      );
      _blocSubscription?.cancel();
    });

    Log.info("RegisterBlocNotifier: Returning initial state: ${bloc.state}");
    return bloc.state;
  }

  /// Public method to forward events to the underlying Bloc.
  void add(RegisterEvent event) {
    Log.info("RegisterBlocNotifier: Adding event: $event");

    ref.read(registerBlocProvider).add(event);
  }

  // You can add other methods here that might read the current state
  // or interact with the bloc if needed. For example:
  // bool get isSubmitting => state.status == RegisterStatus.submitting;
}
