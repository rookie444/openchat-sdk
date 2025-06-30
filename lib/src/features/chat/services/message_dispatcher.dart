import 'dart:async';

import '../../../core/utils/log.dart';
import '../../../rust/api/chat_api.dart' as chat_api;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../../generated/src/features/chat/services/message_dispatcher.g.dart';

@Riverpod(keepAlive: true)
MessageDispatcher messageDispatcher(Ref ref) {
  final messageDispatcher = MessageDispatcher();
  ref.onDispose(() => messageDispatcher.dispose());
  return messageDispatcher;
}

/// 全局消息分发器
///
/// 负责从Rust核心接收消息，并广播给所有订阅者
class MessageDispatcher {
  /// 消息流控制器
  final StreamController<chat_api.Rust2ClientMessagePayload> _messagesController =
      StreamController<chat_api.Rust2ClientMessagePayload>.broadcast();

  /// 订阅计数
  int _subscriptionCount = 0;

  /// 原始流订阅
  StreamSubscription? _originalSubscription;

  /// 是否已初始化
  bool _isInitialized = false;

  /// 初始化分发器
  void initialize() {
    if (_isInitialized) return;
    Log.info('消息分发器: 初始化');
    _setupMessageListener();

    _isInitialized = true;
  }

  /// 设置消息监听
  void _setupMessageListener() {
    _originalSubscription = chat_api.listenForMessages().listen(
      (rustMessage) {
        if (!_messagesController.isClosed) {
          _messagesController.add(rustMessage);
        }
      },
      onError: (error) {
        Log.error('消息分发器: 接收消息出错', error: error);
        if (!_messagesController.isClosed) {
          _messagesController.addError(error);
        }
      },
    );
  }

  /// 获取消息流
  Stream<chat_api.Rust2ClientMessagePayload> getMessageStream() {
    initialize();

    _subscriptionCount++;
    Log.info('消息分发器: 新订阅者加入，当前订阅数: $_subscriptionCount');

    return _messagesController.stream.asBroadcastStream().map((rustMessage) {
      return rustMessage;
    });
  }

  /// 取消订阅
  void unsubscribe() {
    if (_subscriptionCount > 0) {
      _subscriptionCount--;
      Log.info('消息分发器: 订阅者退出，当前订阅数: $_subscriptionCount');
    }

    // 如果没有订阅者，考虑释放资源
    // 注意：在实际应用中，你可能不希望完全关闭，因为可能会有新的订阅者
    // 这里我们保持流开启状态
  }

  /// 关闭分发器
  void dispose() {
    Log.info('消息分发器: 释放资源');
    _originalSubscription?.cancel();
    _messagesController.close();
    _isInitialized = false;
  }
}
