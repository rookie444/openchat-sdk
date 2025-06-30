import 'package:equatable/equatable.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';

/// 消息弹出菜单事件基类
abstract class MessagePopupEvent extends Equatable {
  const MessagePopupEvent();

  @override
  List<Object?> get props => [];
}

/// 显示消息弹出菜单事件
class ShowMessagePopup extends MessagePopupEvent {
  final ChatMessage message;
  final double messageTop;
  final double messageHeight;
  final double screenHeight;

  const ShowMessagePopup({
    required this.message,
    required this.messageTop,
    required this.messageHeight,
    required this.screenHeight,
  });

  @override
  List<Object?> get props => [message, messageTop, messageHeight, screenHeight];
}

/// 隐藏消息弹出菜单事件
class HideMessagePopup extends MessagePopupEvent {
  const HideMessagePopup();
}

/// 回复消息事件
class ReplyToMessage extends MessagePopupEvent {
  const ReplyToMessage();
}

/// 删除消息事件
class DeleteMessage extends MessagePopupEvent {
  const DeleteMessage();
}

/// 引用消息事件
class QuoteMessage extends MessagePopupEvent {
  const QuoteMessage();
}

/// 复制消息事件
class CopyMessage extends MessagePopupEvent {
  const CopyMessage();
}

/// 转发消息事件
class ForwardMessage extends MessagePopupEvent {
  const ForwardMessage();
}

/// 收藏消息事件
class FavoriteMessage extends MessagePopupEvent {
  const FavoriteMessage();
}

/// 多选消息事件
class SelectMessage extends MessagePopupEvent {
  const SelectMessage();
}

/// 撤回消息事件
class RecallMessage extends MessagePopupEvent {
  const RecallMessage();
}
