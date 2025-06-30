import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'chat_detail_bloc.dart';
import 'chat_detail_event.dart';
import 'chat_detail_state.dart';

part '../../../../generated/src/features/chat/blocs/chat_detail_notifier.g.dart';

@riverpod
class ChatDetailNotifier extends _$ChatDetailNotifier {
  StreamSubscription? _blocSubscription;

  @override
  ChatDetailState build() {
    final bloc = ref.watch(chatDetailBlocProvider);

    // 订阅 bloc 的状态流
    _blocSubscription = bloc.stream.listen((newState) {
      state = newState;
    });

    ref.onDispose(() {
      _blocSubscription?.cancel();
    });

    return bloc.state;
  }

  void add(ChatDetailEvent event) {
    ref.read(chatDetailBlocProvider).add(event);
  }
}
