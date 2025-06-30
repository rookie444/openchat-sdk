import 'package:bloc/bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'connection_status_event.dart';
import 'connection_status_state.dart';
import 'dart:async';
import '../../../core/utils/log.dart';
import '../../../features/chat/services/chat_service.dart';
import 'package:openchat_client/src/rust/api/chat_api.dart' as chat_api;
import 'package:openchat_client/src/rust/api/app_api.dart' as rust_app;
part '../../../../generated/src/features/connection/blocs/connection_status_bloc.g.dart';

@Riverpod(keepAlive: true)
ConnectionStatusBloc connectionStatusBloc(Ref ref) {
  final chatService = ref.read(chatServiceProvider);
  final bloc = ConnectionStatusBloc(chatService: chatService);
  Log.info('ConnectionStatusBloc 初始化');
  ref.onDispose(() => bloc.close());
  return bloc;
}

class ConnectionStatusBloc
    extends Bloc<ConnectionStatusEvent, ConnectionStatusState> {
  final ChatService _chatService;
  StreamSubscription? _messageSubscription;
  bool _hasSubscribed = false;
  bool _isClosed = false;

  ConnectionStatusBloc({required ChatService chatService})
    : _chatService = chatService,
      super(const ConnectionStatusState.connecting()) {
    Log.info('ConnectionStatusBloc 初始化');
    // 添加事件处理器
    _addEventHandlers();

    // 监听新消息
    _setupMessageListener();

    // 建立TCP连接
    rust_app.startTcpClientConnection();
  }

  void _addEventHandlers() {
    on<ConnectionStatusEvent>((event, emit) {
      event.map(
        connect: (_) => emit(const ConnectionStatusState.connecting()),
        startAuthentication:
            (_) => emit(const ConnectionStatusState.authenticating()),
        connectionComplete:
            (_) => emit(const ConnectionStatusState.connected()),
        connectionFailed: (e) => emit(ConnectionStatusState.failed(e.message)),
      );
    });
  }

  void _setupMessageListener() {
    if (_isClosed || _hasSubscribed) return;

    Log.info('ConnectionStatusBloc 设置消息监听');

    _messageSubscription = _chatService.listenForMessages().listen((
      chat_api.Rust2ClientMessagePayload message,
    ) {
      if (_isClosed) return;

      final messageType = message.messageType;

      if (messageType == chat_api.Rust2ClientMessageType.startAuthentication) {
        if (!_isClosed) {
          Log.info('ConnectionStatusBloc 认证开始');
          add(ConnectionStatusEvent.startAuthentication());
        }
      }

      if (messageType == chat_api.Rust2ClientMessageType.connectionComplete) {
        if (!_isClosed) {
          Log.info('ConnectionStatusBloc 连接完成');
          add(ConnectionStatusEvent.connectionComplete());
        }
      }
    });

    _hasSubscribed = true;
  }

  bool get isClosed => _isClosed;

  @override
  Future<void> close() {
    _isClosed = true;
    Log.info('ConnectionStatusBloc 关闭');
    if (_hasSubscribed) {
      _messageSubscription?.cancel();
      _hasSubscribed = false;
    }
    return super.close();
  }
}
