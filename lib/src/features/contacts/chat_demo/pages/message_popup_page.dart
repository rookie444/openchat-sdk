import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';
import '../blocs/message_popup_bloc.dart';
import '../blocs/message_popup_event.dart' as popup_event;
import '../blocs/message_popup_state.dart' as popup_state;
import '../notifiers/message_popup_notifier.dart';
import '../widgets/chat_list_message_widget.dart';
import '../providers/message_detail_provider.dart';
import '../../../../core/router/app_router.dart';
import '../../../../common/ffi.dart';
import 'dart:math' as math;

class MessagePopupPage extends StatefulWidget {
  final ChatMessage message;
  final double messageTop;
  final double messageHeight;
  final Widget backgroundWidget;
  final Function(ChatMessage)? onReply; // 新增回复回调
  final FfiChatType chatType; // 新增聊天类型参数
  final int targetId; // 新增目标ID参数

  const MessagePopupPage({
    super.key,
    required this.message,
    required this.messageTop,
    required this.messageHeight,
    required this.backgroundWidget,
    this.onReply, // 回复回调
    required this.chatType, // 聊天类型
    required this.targetId, // 目标ID
  });

  @override
  State<MessagePopupPage> createState() => _MessagePopupPageState();
}

class _MessagePopupPageState extends State<MessagePopupPage>
    with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _scaleController;
  late AnimationController _menuController;

  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _menuAnimation;

  final ScrollController _pageScrollController = ScrollController();

  // Add bloc instance variable to avoid context issues
  MessagePopupBloc? _bloc;

  @override
  void initState() {
    super.initState();

    // 初始化动画控制器
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );

    _scaleController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _menuController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    // 初始化动画 - 使用更安全的曲线
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _fadeController, curve: Curves.easeOut));

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _scaleController, curve: Curves.easeOutCubic),
    );

    _menuAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _menuController, curve: Curves.easeOutCubic),
    );

    // 启动动画
    _startAnimations();

    // 添加震动反馈
    HapticFeedback.mediumImpact();
  }

  void _startAnimations() async {
    if (!mounted) return;

    await Future.delayed(const Duration(milliseconds: 50));
    if (mounted) _fadeController.forward();

    await Future.delayed(const Duration(milliseconds: 100));
    if (mounted) _scaleController.forward();

    await Future.delayed(const Duration(milliseconds: 150));
    if (mounted) {
      _menuController.forward();

      // 如果消息过长，滚动到显示消息底部
      final screenHeight = MediaQuery.of(context).size.height;
      final isMessageTooLong = widget.messageHeight > screenHeight * 0.6;

      if (isMessageTooLong) {
        // 延迟滚动，确保动画完成后再滚动
        await Future.delayed(const Duration(milliseconds: 200));
        if (mounted && _pageScrollController.hasClients) {
          // 计算菜单和消息的实际位置
          final padding = MediaQuery.of(context).padding;
          final safeAreaTop = padding.top;
          final safeAreaBottom = padding.bottom;
          final menuItemHeight = 34.0;
          final dividerHeight = 1.0;
          final singleItemTotalHeight = menuItemHeight + dividerHeight;
          final menuPadding = 16.0;
          final menuHeight =
              (singleItemTotalHeight * 6) + menuPadding; // 假设6个菜单项
          const verticalMargin = 6.0;

          // 计算菜单顶部位置
          final menuTopPosition =
              screenHeight - safeAreaBottom - menuHeight - verticalMargin;
          final maxMessageBottom = menuTopPosition - verticalMargin;

          // 计算调整后的消息位置
          final originalMessageBottom =
              widget.messageTop + widget.messageHeight;
          double adjustedMessageTop = widget.messageTop;

          if (originalMessageBottom > maxMessageBottom) {
            adjustedMessageTop = maxMessageBottom - widget.messageHeight;
            adjustedMessageTop = math.max(safeAreaTop + 20, adjustedMessageTop);
          }

          // 计算需要滚动的距离，让消息底部可见
          final messageBottomAfterAdjustment =
              adjustedMessageTop + widget.messageHeight;
          final visibleAreaBottom = maxMessageBottom;

          // 如果调整后的消息底部仍然超出可见区域，需要滚动
          if (messageBottomAfterAdjustment > visibleAreaBottom) {
            final scrollOffset =
                messageBottomAfterAdjustment - visibleAreaBottom;

            _pageScrollController.animateTo(
              scrollOffset,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOutCubic,
            );
          }
        }
      }
    }
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _scaleController.dispose();
    _menuController.dispose();
    _pageScrollController.dispose();
    _bloc?.close(); // Dispose of the bloc
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (context) {
        _bloc =
            MessagePopupBloc()..add(
              popup_event.ShowMessagePopup(
                message: widget.message,
                messageTop: widget.messageTop,
                messageHeight: widget.messageHeight,
                screenHeight: screenHeight,
              ),
            );
        return _bloc!;
      },
      child: Builder(
        builder: (context) {
          return BlocConsumer<MessagePopupBloc, popup_state.MessagePopupState>(
            listener: (context, state) {
              if (state is popup_state.MessagePopupHidden) {
                _closeWithAnimation();
              } else if (state is popup_state.MessagePopupError) {
                // 显示错误提示
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.errorMessage),
                    backgroundColor: Colors.red,
                    duration: const Duration(seconds: 2),
                  ),
                );
              }
            },
            builder: (context, state) {
              return Scaffold(
                backgroundColor: Colors.transparent,
                body: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  controller: _pageScrollController,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: AnimatedBuilder(
                      animation: _fadeAnimation,
                      builder: (context, child) {
                        return Stack(
                          children: [
                            // 高斯模糊背景
                            _buildBlurredBackground(context),

                            // 消息内容
                            if (state is popup_state.MessagePopupShowing)
                              _buildMessageContent(context, state),

                            // 菜单选项
                            if (state is popup_state.MessagePopupShowing)
                              _buildMenuOptions(context, state),

                            // 处理中的加载指示器
                            if (state is popup_state.MessagePopupProcessing)
                              _buildProcessingIndicator(state),

                            // 错误状态显示
                            if (state is popup_state.MessagePopupError)
                              _buildErrorIndicator(context, state),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildBlurredBackground(BuildContext context) {
    return GestureDetector(
      onTap: () => _closePopup(context),
      child: AnimatedBuilder(
        animation: _fadeAnimation,
        builder: (context, child) {
          // 确保透明度值在有效范围内
          final opacity = math.max(0.0, math.min(1.0, _fadeAnimation.value));
          final blurValue = math.max(0.0, 10.0 * opacity);

          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: blurValue, sigmaY: blurValue),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withValues(alpha: 0.3 * opacity),
              child: widget.backgroundWidget,
            ),
          );
        },
      ),
    );
  }

  Widget _buildMessageContent(
    BuildContext context,
    popup_state.MessagePopupShowing state,
  ) {
    final screenHeight = MediaQuery.of(context).size.height;
    final padding = MediaQuery.of(context).padding;
    final safeAreaTop = padding.top;
    final safeAreaBottom = padding.bottom;

    // 判断消息是否过长
    final isMessageTooLong = widget.messageHeight > screenHeight * 0.6;

    // 计算菜单高度（与_buildMenuOptions中的计算保持一致）
    final menuItemHeight = 34.0;
    final dividerHeight = 1.0;
    final singleItemTotalHeight = menuItemHeight + dividerHeight;
    final menuPadding = 16.0;
    final menuHeight =
        (singleItemTotalHeight * state.menuItems.length) + menuPadding;
    const verticalMargin = 6.0;

    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        // 确保缩放值在合理范围内
        final scale = math.max(0.1, math.min(2.0, _scaleAnimation.value));

        double messageTop = widget.messageTop;

        if (isMessageTooLong) {
          // 长消息：确保消息不被菜单覆盖
          // 计算菜单顶部位置
          final menuTopPosition =
              screenHeight - safeAreaBottom - menuHeight - verticalMargin;

          // 计算消息可以显示的最大底部位置（菜单顶部上方）
          final maxMessageBottom = menuTopPosition - verticalMargin;

          // 如果原始消息底部会被菜单覆盖，调整消息位置
          final originalMessageBottom =
              widget.messageTop + widget.messageHeight;
          if (originalMessageBottom > maxMessageBottom) {
            // 调整消息顶部位置，让消息底部不超过菜单顶部
            messageTop = maxMessageBottom - widget.messageHeight;

            // 确保消息顶部不会超出屏幕顶部（留出安全区域）
            final minMessageTop = safeAreaTop + 20;
            messageTop = math.max(minMessageTop, messageTop);
          }
        }

        return Positioned(
          top: messageTop,
          left: 0,
          right: 0,
          child: Transform.scale(
            scale: scale,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: ChatListMessageWidget(
                message: widget.message,
                invisibleButKeepSpace: true,
                targetId: widget.targetId,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildMenuOptions(
    BuildContext context,
    popup_state.MessagePopupShowing state,
  ) {
    // 根据消息方向确定菜单位置
    final isMyMessage = widget.message.isMe;
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    final padding = MediaQuery.of(context).padding;
    final safeAreaTop = padding.top;
    final safeAreaBottom = padding.bottom;

    const menuWidth = 180.0;
    const horizontalMargin = 20.0;
    const verticalMargin = 6.0;

    // 重新计算菜单高度：每个菜单项现在包含SizedBox(34px) + Divider(1px)
    final menuItemHeight = 34.0; // SizedBox实际高度
    final dividerHeight = 1.0; // Divider高度
    final singleItemTotalHeight =
        menuItemHeight + dividerHeight; // 每个菜单项总高度35px
    final menuPadding = 16.0; // container padding 8px * 2 (top + bottom)

    // 总高度 = (菜单项高度 + 分割线高度) * 菜单项数量 + 容器内边距
    final menuHeight =
        (singleItemTotalHeight * state.menuItems.length) + menuPadding;

    // 计算消息底部位置
    final messageBottom = widget.messageTop + widget.messageHeight;

    // 判断消息是否过长（超过屏幕高度的60%）
    final isMessageTooLong = widget.messageHeight > screenHeight * 0.6;

    final double menuTop;

    if (isMessageTooLong) {
      // 长消息：菜单底部与屏幕底部对齐
      menuTop = screenHeight - safeAreaBottom - menuHeight - verticalMargin;
    } else {
      // 短消息：使用原有逻辑
      final availableTop = widget.messageTop - safeAreaTop - verticalMargin;
      final availableBottom =
          screenHeight - safeAreaBottom - messageBottom - verticalMargin;

      if (availableBottom >= menuHeight) {
        // 下方空间足够，显示在下方
        menuTop = messageBottom + verticalMargin;
      } else if (availableTop >= menuHeight) {
        // 下方不够但上方足够，显示在上方
        menuTop = widget.messageTop - menuHeight - verticalMargin;
      } else {
        // 上下都不够，选择空间更大的一方
        if (availableBottom > availableTop) {
          menuTop = math.max(
            messageBottom + verticalMargin,
            safeAreaTop + verticalMargin,
          );
        } else {
          final maxMenuTop = widget.messageTop - verticalMargin;
          final minMenuTop = safeAreaTop + verticalMargin;
          menuTop = math.max(minMenuTop, maxMenuTop - menuHeight);
        }
      }
    }

    // 计算菜单的左边距，确保不超出屏幕边界
    final menuLeft =
        isMyMessage
            ? screenWidth -
                menuWidth -
                horizontalMargin // 右对齐
            : horizontalMargin; // 左对齐

    // 确保菜单不超出屏幕边界
    final clampedMenuLeft = math.max(
      horizontalMargin,
      math.min(menuLeft, screenWidth - menuWidth - horizontalMargin),
    );

    return AnimatedBuilder(
      animation: _menuAnimation,
      builder: (context, child) {
        // 确保透明度和缩放值在有效范围内
        final opacity = math.max(0.0, math.min(1.0, _menuAnimation.value));
        final scale = math.max(0.1, math.min(2.0, _menuAnimation.value));

        return Positioned(
          top: menuTop,
          left: clampedMenuLeft,
          child: Transform.scale(
            scale: scale,
            alignment: Alignment.topLeft,
            child: Opacity(
              opacity: opacity,
              child: Container(
                width: menuWidth,
                height: menuHeight, // 固定高度，确保菜单完全展示
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.15),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [_buildMenuGrid(context, state.menuItems)],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildMenuGrid(
    BuildContext context,
    List<popup_state.PopupMenuItem> menuItems,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SingleChildScrollView(
        child: Column(
          children:
              menuItems
                  .map((item) => _buildMenuListItem(context, item))
                  .toList(),
        ),
      ),
    );
  }

  Widget _buildMenuListItem(
    BuildContext context,
    popup_state.PopupMenuItem item,
  ) {
    final isDestructive =
        item.type == popup_state.PopupMenuItemType.destructive;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: item.enabled ? () => _handleMenuAction(context, item.id) : null,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 34,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color:
                        item.enabled
                            ? (isDestructive ? Colors.red : Colors.black87)
                            : Colors.grey[500],
                  ),
                ),
                Image.asset(
                  'assets/images/common/${item.icon}.webp',
                  width: 18,
                  height: 18,
                ),
              ],
            ),
          ),
          // 添加底部分割线
          Divider(height: 1, thickness: 0.5, color: Colors.grey[300]),
        ],
      ),
    );
  }

  Widget _buildProcessingIndicator(popup_state.MessagePopupProcessing state) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(
              '正在${MessagePopupNotifier.getActionText(state.action)}...',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorIndicator(
    BuildContext context,
    popup_state.MessagePopupError state,
  ) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(24),
        margin: const EdgeInsets.symmetric(horizontal: 32),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline, color: Colors.red[600], size: 48),
            const SizedBox(height: 16),
            Text(
              state.errorMessage,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _closePopup(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[600],
                foregroundColor: Colors.white,
              ),
              child: const Text('关闭'),
            ),
          ],
        ),
      ),
    );
  }

  void _handleMenuAction(BuildContext context, String actionId) {
    final bloc = context.read<MessagePopupBloc>();

    // 添加触感反馈
    HapticFeedback.lightImpact();

    switch (actionId) {
      case 'reply':
        // 调用回复回调并关闭弹窗
        if (widget.onReply != null) {
          widget.onReply!(widget.message);
        }
        _closePopup(context);
        break;
      case 'delete':
        bloc.add(const popup_event.DeleteMessage());
        break;
      case 'detail':
        // 设置消息到Provider并导航到详情页面
        _navigateToMessageDetail(context);
        break;
      case 'quote':
        bloc.add(const popup_event.QuoteMessage());
        break;
      case 'copy':
        bloc.add(const popup_event.CopyMessage());
        break;
      case 'forward':
        // 直接跳转到转发页面
        _navigateToForwardPage(context);
        break;
      case 'favorite':
        bloc.add(const popup_event.FavoriteMessage());
        break;
      case 'select':
        bloc.add(const popup_event.SelectMessage());
        break;
      case 'recall':
        bloc.add(const popup_event.RecallMessage());
        break;
    }
  }

  void _closePopup(BuildContext context) {
    final bloc = context.read<MessagePopupBloc>();
    bloc.add(const popup_event.HideMessagePopup());
  }

  Future<void> _closeWithAnimation() async {
    if (!mounted) return;

    try {
      // 反向播放动画，添加安全检查
      await Future.wait([
        if (_menuController.isAnimating || _menuController.value > 0)
          _menuController.reverse(),
        if (_scaleController.isAnimating || _scaleController.value > 0)
          _scaleController.reverse(),
      ]);

      if (mounted &&
          (_fadeController.isAnimating || _fadeController.value > 0)) {
        await _fadeController.reverse();
      }

      if (mounted) {
        Navigator.of(context).pop();
      }
    } catch (e) {
      // 如果动画出错，直接关闭页面
      if (mounted) {
        Navigator.of(context).pop();
      }
    }
  }

  void _navigateToMessageDetail(BuildContext context) {
    // 设置消息到Provider
    ProviderScope.containerOf(
      context,
    ).read(messageDetailProvider.notifier).setMessage(widget.message);

    // 关闭当前弹窗
    _closePopup(context);

    // 导航到消息详情页面
    context.push(AppRoutes.messageDetail);
  }

  void _navigateToForwardPage(BuildContext context) {
    // 关闭当前弹窗
    _closePopup(context);

    // 创建转发数据对象，包含消息、聊天类型和目标ID
    final forwardData = {
      'messages': [widget.message],
      'chatType': widget.chatType,
      'targetId': widget.targetId,
    };

    // 导航到转发页面，传递转发数据
    context.push(AppRoutes.forward, extra: forwardData);
  }
}
