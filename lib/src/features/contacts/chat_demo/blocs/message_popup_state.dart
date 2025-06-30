import 'package:equatable/equatable.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';

/// 消息弹出菜单状态基类
abstract class MessagePopupState extends Equatable {
  const MessagePopupState();

  @override
  List<Object?> get props => [];
}

/// 隐藏状态
class MessagePopupHidden extends MessagePopupState {
  const MessagePopupHidden();
}

/// 显示状态
class MessagePopupShowing extends MessagePopupState {
  final ChatMessage message;
  final double messageTop;
  final double messageHeight;
  final double screenHeight;
  final bool showMenuAbove;
  final List<PopupMenuItem> menuItems;

  const MessagePopupShowing({
    required this.message,
    required this.messageTop,
    required this.messageHeight,
    required this.screenHeight,
    required this.showMenuAbove,
    required this.menuItems,
  });

  @override
  List<Object?> get props => [
    message,
    messageTop,
    messageHeight,
    screenHeight,
    showMenuAbove,
    menuItems,
  ];
}

/// 处理中状态
class MessagePopupProcessing extends MessagePopupState {
  final ChatMessage message;
  final String action;

  const MessagePopupProcessing({required this.message, required this.action});

  @override
  List<Object?> get props => [message, action];
}

/// 加载状态
class MessagePopupLoading extends MessagePopupState {
  final String? message;

  const MessagePopupLoading({this.message});

  @override
  List<Object?> get props => [message];
}

/// 错误状态
class MessagePopupError extends MessagePopupState {
  final String errorMessage;
  final ChatMessage? message;

  const MessagePopupError({required this.errorMessage, this.message});

  @override
  List<Object?> get props => [errorMessage, message];
}

/// 弹出菜单项模型
class PopupMenuItem extends Equatable {
  final String id;
  final String title;
  final String icon;
  final bool enabled;
  final String? subtitle;
  final PopupMenuItemType type;

  const PopupMenuItem({
    required this.id,
    required this.title,
    required this.icon,
    required this.enabled,
    this.subtitle,
    this.type = PopupMenuItemType.normal,
  });

  @override
  List<Object?> get props => [id, title, icon, enabled, subtitle, type];
}

/// 弹出菜单项类型
enum PopupMenuItemType {
  normal, // 普通选项
  destructive, // 危险选项（如删除）
}
