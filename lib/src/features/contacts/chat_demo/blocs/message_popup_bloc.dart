import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';
import 'message_popup_event.dart';
import 'message_popup_state.dart';
import '../notifiers/message_popup_notifier.dart';

/// 消息弹出菜单Bloc
/// 负责协调事件处理和状态管理
class MessagePopupBloc extends Bloc<MessagePopupEvent, MessagePopupState> {
  MessagePopupBloc() : super(const MessagePopupHidden()) {
    on<ShowMessagePopup>(_onShowMessagePopup);
    on<HideMessagePopup>(_onHideMessagePopup);
    on<ReplyToMessage>(_onReplyToMessage);
    on<DeleteMessage>(_onDeleteMessage);
    on<QuoteMessage>(_onQuoteMessage);
    on<CopyMessage>(_onCopyMessage);
    on<ForwardMessage>(_onForwardMessage);
    on<FavoriteMessage>(_onFavoriteMessage);
    on<SelectMessage>(_onSelectMessage);
    on<RecallMessage>(_onRecallMessage);
  }

  /// 处理显示消息弹出菜单事件
  void _onShowMessagePopup(
    ShowMessagePopup event,
    Emitter<MessagePopupState> emit,
  ) {
    try {
      // 使用通知器构建菜单项
      final menuItems = MessagePopupNotifier.buildMenuItems(event.message);

      // 判断菜单显示位置
      final showMenuAbove = MessagePopupNotifier.shouldShowMenuAbove(
        event.messageTop,
        event.messageHeight,
        event.screenHeight,
      );

      emit(
        MessagePopupShowing(
          message: event.message,
          messageTop: event.messageTop,
          messageHeight: event.messageHeight,
          screenHeight: event.screenHeight,
          showMenuAbove: showMenuAbove,
          menuItems: menuItems,
        ),
      );
    } catch (error) {
      emit(
        MessagePopupError(
          errorMessage: '显示菜单失败: $error',
          message: event.message,
        ),
      );
    }
  }

  /// 处理隐藏消息弹出菜单事件
  void _onHideMessagePopup(
    HideMessagePopup event,
    Emitter<MessagePopupState> emit,
  ) {
    emit(const MessagePopupHidden());
  }

  /// 处理回复消息事件
  Future<void> _onReplyToMessage(
    ReplyToMessage event,
    Emitter<MessagePopupState> emit,
  ) async {
    await _handleMessageAction(
      emit,
      'reply',
      MessagePopupNotifier.handleReplyMessage,
    );
  }

  /// 处理删除消息事件
  Future<void> _onDeleteMessage(
    DeleteMessage event,
    Emitter<MessagePopupState> emit,
  ) async {
    await _handleMessageAction(
      emit,
      'delete',
      MessagePopupNotifier.handleDeleteMessage,
    );
  }

  /// 处理引用消息事件
  Future<void> _onQuoteMessage(
    QuoteMessage event,
    Emitter<MessagePopupState> emit,
  ) async {
    await _handleMessageAction(
      emit,
      'quote',
      MessagePopupNotifier.handleQuoteMessage,
    );
  }

  /// 处理复制消息事件
  Future<void> _onCopyMessage(
    CopyMessage event,
    Emitter<MessagePopupState> emit,
  ) async {
    await _handleMessageAction(
      emit,
      'copy',
      MessagePopupNotifier.handleCopyMessage,
    );
  }

  /// 处理转发消息事件
  Future<void> _onForwardMessage(
    ForwardMessage event,
    Emitter<MessagePopupState> emit,
  ) async {
    await _handleMessageAction(
      emit,
      'forward',
      MessagePopupNotifier.handleForwardMessage,
    );
  }

  /// 处理收藏消息事件
  Future<void> _onFavoriteMessage(
    FavoriteMessage event,
    Emitter<MessagePopupState> emit,
  ) async {
    await _handleMessageAction(
      emit,
      'favorite',
      MessagePopupNotifier.handleFavoriteMessage,
    );
  }

  /// 处理多选消息事件
  Future<void> _onSelectMessage(
    SelectMessage event,
    Emitter<MessagePopupState> emit,
  ) async {
    await _handleMessageAction(
      emit,
      'select',
      MessagePopupNotifier.handleSelectMessage,
    );
  }

  /// 处理撤回消息事件
  Future<void> _onRecallMessage(
    RecallMessage event,
    Emitter<MessagePopupState> emit,
  ) async {
    await _handleMessageAction(
      emit,
      'recall',
      MessagePopupNotifier.handleRecallMessage,
    );
  }

  /// 通用的消息操作处理方法
  Future<void> _handleMessageAction(
    Emitter<MessagePopupState> emit,
    String action,
    Future<void> Function(ChatMessage) handler,
  ) async {
    final currentState = state;
    if (currentState is! MessagePopupShowing) return;

    try {
      // 发出处理中状态
      emit(
        MessagePopupProcessing(message: currentState.message, action: action),
      );

      // 执行具体的业务逻辑
      await handler(currentState.message);

      // 处理完成，隐藏菜单
      emit(const MessagePopupHidden());
    } catch (error) {
      // 处理失败，显示错误状态
      emit(
        MessagePopupError(
          errorMessage:
              '${MessagePopupNotifier.getActionText(action)}失败: $error',
          message: currentState.message,
        ),
      );

      // 延迟后自动隐藏错误状态
      await Future.delayed(const Duration(seconds: 2));
      if (!emit.isDone) {
        emit(const MessagePopupHidden());
      }
    }
  }
}
