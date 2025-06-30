import 'package:flutter/material.dart';
import 'package:openchat_client/src/core/theme/colors.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_audio.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_dice.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_dynamic_image.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_file.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_game.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_image.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_namecard.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_redpacket.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_transfer.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_video.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/widgets/chat_list_audio_widget.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/widgets/chat_list_dynamic_image_widget.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/widgets/chat_list_file_widget.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/widgets/chat_list_game_widget.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/widgets/chat_list_transfer_widget.dart';
import 'chat_list_image_widget.dart';
import 'chat_list_text_widget.dart';
import 'chat_list_namecard_widget.dart';
import 'chat_list_redpacket_widget.dart';
import 'chat_list_dice_widget.dart';
import 'chat_list_video_widget.dart';
import 'chat_reference_widget.dart';
import 'package:intl/intl.dart';
import '../../../../rust/api/model/ffi_message_common.dart';
import 'package:flutter/services.dart';
import '../pages/message_popup_page.dart';

/// 聊天消息通用父组件
class ChatListMessageWidget extends StatefulWidget {
  final ChatMessage message;
  final bool? showAvatar;
  final bool? showNickname;
  final bool invisibleButKeepSpace; // 新增参数：不可见但保持空间占用
  final Function(ChatMessage)? onReply; // 新增回复回调
  final int targetId; // 新增目标ID参数
  final bool? isForwardPreview;

  ///转发预览样式
  const ChatListMessageWidget({
    super.key,
    required this.message,
    this.showAvatar,
    this.showNickname,
    this.invisibleButKeepSpace = false, // 默认为false
    this.onReply, // 回复回调
    required this.targetId, // 目标ID
    this.isForwardPreview,
  });

  @override
  State<ChatListMessageWidget> createState() => _ChatListMessageWidgetState();
}

class _ChatListMessageWidgetState extends State<ChatListMessageWidget> {
  final GlobalKey _messageKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final message = widget.message;
    final isGroup = message.chatType == FfiChatType.group;
    var isMe = message.isMe;

    if (widget.isForwardPreview == true) {
      isMe = true;
    }

    // 自动决定是否显示头像和昵称
    final bool shouldShowAvatar;
    final bool shouldShowNickname;

    if (widget.showAvatar != null) {
      // 如果明确指定了showAvatar，使用指定值
      shouldShowAvatar = widget.showAvatar!;
    } else {
      // 自动决定：只有群聊接收消息才显示头像
      shouldShowAvatar = !isMe && isGroup;
    }

    if (widget.showNickname != null) {
      // 如果明确指定了showNickname，使用指定值
      shouldShowNickname = widget.showNickname!;
    } else {
      // 自动决定：只有群聊接收消息才显示昵称
      shouldShowNickname = !isMe && isGroup;
    }

    // 处理不可见但保持空间的情况
    final bool shouldReserveAvatarSpace;
    final bool shouldReserveNicknameSpace;

    if (widget.invisibleButKeepSpace) {
      // 如果设置了不可见但保持空间，则群聊中都保留空间（发送端和接收端）
      shouldReserveAvatarSpace = isGroup;
      shouldReserveNicknameSpace = isGroup;
    } else {
      // 正常情况下，保留空间与显示状态一致
      shouldReserveAvatarSpace = shouldShowAvatar;
      shouldReserveNicknameSpace = shouldShowNickname;
    }

    return Container(
      key: _messageKey,
      width: double.infinity,
      color: Colors.transparent,
      // 根据是否显示头像调整padding，进一步优化空间利用
      padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical:
            shouldReserveAvatarSpace || shouldReserveNicknameSpace ? 4 : 4,
      ),
      child: Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        // 根据是否显示头像来决定对齐方式，避免为不可见元素保留空间
        crossAxisAlignment:
            shouldReserveAvatarSpace
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
        children: [
          // 对方头像（左侧）- 只在群聊接收消息时显示
          if (shouldReserveAvatarSpace) ...[
            const SizedBox(width: 4),
            Opacity(
              opacity:
                  (widget.invisibleButKeepSpace && !shouldShowAvatar)
                      ? 0.0
                      : 1.0, // 只有在应该显示时才可见
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child:
                      message.senderAvatar.isNotEmpty
                          ? Image.network(
                            message.senderAvatar,
                            width: 20,
                            height: 20,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(
                                Icons.person,
                                color: Colors.grey[600],
                                size: 12,
                              );
                            },
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Center(
                                child: SizedBox(
                                  width: 10,
                                  height: 10,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 1,
                                    value:
                                        loadingProgress.expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                    .cumulativeBytesLoaded /
                                                loadingProgress
                                                    .expectedTotalBytes!
                                            : null,
                                  ),
                                ),
                              );
                            },
                          )
                          : Icon(
                            Icons.person,
                            color: Colors.grey[600],
                            size: 12,
                          ),
                ),
              ),
            ),
            const SizedBox(width: 8),
          ],

          // 消息内容区域
          Flexible(
            child: GestureDetector(
              onLongPress: () => _showMessagePopup(context),
              child: Column(
                crossAxisAlignment:
                    isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                // 确保Column的主轴大小最小化，避免为不可见元素保留空间
                mainAxisSize: MainAxisSize.min,
                children: [
                  // 群聊昵称（只在群聊接收消息时显示）
                  if (shouldReserveNicknameSpace)
                    Opacity(
                      opacity:
                          (widget.invisibleButKeepSpace && !shouldShowNickname)
                              ? 0.0
                              : 1.0, // 只有在应该显示时才可见
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Text(
                          message.senderName,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),

                  // 消息气泡和状态图标的组合
                  Row(
                    mainAxisAlignment:
                        isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // 发送状态图标（仅自己的消息，在气泡左侧） 再新增一个阅后即焚图标
                      if (isMe) ...[
                        if (false) _buildReadCancelIcon(),
                        _buildSendingStatusIcon(),
                      ],
                      // 消息气泡
                      if (isMe)
                        _buildMyMessageBubble(context)
                      else
                        _buildOtherMessageBubble(context),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // 自己的头像（右侧）- 根据需求，isMe=true时不显示头像
          // if (isMe) ...[
          //   const SizedBox(width: 8),
          //   CircleAvatar(
          //     radius: 20,
          //     backgroundColor: Colors.blue[100],
          //     child: const Icon(Icons.person, color: Colors.blue, size: 20),
          //   ),
          // ],
        ],
      ),
    );
  }

  /// 构建自己的消息气泡（右边）
  Widget _buildMyMessageBubble(BuildContext context) {
    // 判断是否为名片消息
    final isNameCard = widget.message is ChatMessageNamecardModel;
    // 判断是否为骰子消息
    final isDice = widget.message is ChatMessageDiceModel;
    // 判断是否为红包消息
    final isRedpacket = widget.message is ChatMessageRedpacketModel;
    // 判断是否为转账消息
    final isTransfer = widget.message is ChatMessageTransferModel;
    // 判断是否为游戏消息
    final isGame = widget.message is ChatMessageGameModel;

    return IntrinsicWidth(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
          minWidth: 80, // 最小宽度确保时间显示
        ),
        height:
            isDice
                ? 100
                : isNameCard
                ? 81
                : isGame
                ? 200 // 游戏消息固定高度200
                : null, // 骰子消息固定高度100 名片消息固定高度80 游戏消息固定高度200
        decoration:
            isDice || isRedpacket || isTransfer || isGame
                ? BoxDecoration(color: Colors.transparent)
                : BoxDecoration(
                  color: AppColors.rightBubble,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  border: Border.all(
                    color: AppColors.rightBubbleBorder, // 边框颜色
                    width: 0.3,
                  ),
                ),
        child: Stack(
          children: [
            // 名片、骰子和游戏消息居中显示，其他消息正常显示 骰子消息居右显示
            if (isNameCard || isDice || isGame)
              Center(child: _buildMyMessageLayout())
            else
              _buildMyMessageLayout(),

            if (!isRedpacket && !isTransfer && !isGame) ...[
              // 时间和状态区域（绝对定位在右下角）
              Positioned(
                right: 8,
                bottom: 4,
                child: Container(
                  padding:
                      isDice
                          ? const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          )
                          : EdgeInsets.zero,
                  decoration:
                      isDice
                          ? BoxDecoration(
                            color: AppColors.rightBubble,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                          )
                          : null,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _formatTime(widget.message.timestamp),
                        style: TextStyle(
                          fontSize: 10,
                          color: isDice ? Colors.grey[600] : Colors.black54,
                        ),
                      ),
                      const SizedBox(width: 4),
                      _buildMessageStatusIcon(),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  /// 构建对方的消息气泡（左边）
  Widget _buildOtherMessageBubble(BuildContext context) {
    // 判断是否为名片消息
    final isNameCard = widget.message is ChatMessageNamecardModel;
    // 判断是否为骰子消息
    final isDice = widget.message is ChatMessageDiceModel;
    // 判断是否为红包消息
    final isRedpacket = widget.message is ChatMessageRedpacketModel;
    // 判断是否为转账消息
    final isTransfer = widget.message is ChatMessageTransferModel;
    // 判断是否为游戏消息
    final isGame = widget.message is ChatMessageGameModel;

    return IntrinsicWidth(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
          minWidth: 60, // 最小宽度确保时间显示
        ),
        height:
            isDice
                ? 100
                : isNameCard
                ? 81
                : isGame
                ? 200 // 游戏消息固定高度200
                : null, // 骰子消息固定高度100 名片消息固定高度80 游戏消息固定高度200
        decoration:
            isDice || isRedpacket || isTransfer || isGame
                ? BoxDecoration(color: Colors.transparent)
                : BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColors.leftBubbleBorder,
                    width: 0.3,
                  ),
                ),
        child: Stack(
          children: [
            // 名片、骰子和游戏消息居中显示，其他消息正常显示
            if (isNameCard || isDice || isGame)
              Center(child: _buildOtherMessageLayout())
            else
              _buildOtherMessageLayout(),
            if (!isRedpacket && !isTransfer && !isGame) ...[
              if (isDice) ...[
                // 时间区域（绝对定位在左下角）
                Positioned(
                  left: 1,
                  bottom: 4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    child: Text(
                      _formatTime(widget.message.timestamp),
                      style: TextStyle(fontSize: 10, color: Colors.grey[600]),
                    ),
                  ),
                ),
              ] else ...[
                // 时间区域（绝对定位在右下角）
                Positioned(
                  right: 8,
                  bottom: 4,
                  child: Container(
                    padding:
                        isDice
                            ? const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            )
                            : EdgeInsets.zero,
                    decoration:
                        isDice
                            ? BoxDecoration(
                              color: Colors.black.withValues(alpha: 0.6),
                              borderRadius: BorderRadius.circular(8),
                            )
                            : null,
                    child: Text(
                      _formatTime(widget.message.timestamp),
                      style: TextStyle(
                        fontSize: 10,
                        color: isDice ? Colors.white : Colors.grey[600],
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ],
        ),
      ),
    );
  }

  /// 构建自己的消息布局（右边）
  Widget _buildMyMessageLayout() {
    // 判断是否为名片消息
    final isNameCard = widget.message is ChatMessageNamecardModel;
    // 判断是否为骰子消息
    final isDice = widget.message is ChatMessageDiceModel;
    // 判断是否为红包消息
    final isRedpacket = widget.message is ChatMessageRedpacketModel;
    // 判断是否为转账消息
    final isTransfer = widget.message is ChatMessageTransferModel;
    // 判断是否为游戏消息
    final isGame = widget.message is ChatMessageGameModel;

    return Padding(
      padding: EdgeInsets.only(
        left:
            (isNameCard || isDice || isRedpacket || isTransfer || isGame)
                ? 0
                : 12, // 名片、骰子、游戏类型不添加左边距
        right:
            (isNameCard || isDice || isRedpacket || isTransfer || isGame)
                ? 0
                : 12, // 名片、骰子、游戏类型不添加右边距
        top:
            (isNameCard || isDice || isRedpacket || isTransfer || isGame)
                ? 0
                : 8, // 名片、骰子、游戏类型不添加上边距
        bottom:
            (isNameCard || isRedpacket || isTransfer || isGame)
                ? 0
                : 20, // 为底部时间状态区域留空间
      ),
      child: Align(
        alignment: isDice ? Alignment.centerRight : Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            // 引用消息显示
            if (widget.message.refObj != null ) ...[
              if (widget.message.refObj!.msgType != FfiMsgType.dice && widget.message.refObj!.msgType != FfiMsgType.game) ...[
                ChatReferenceWidget(refObj: widget.message.refObj!, isMe: true),
                const SizedBox(height: 4),
              ]
            ],
            // 主消息内容
            _buildMessageContent(),
          ],
        ),
      ),
    );
  }

  /// 构建对方的消息布局（左边）
  Widget _buildOtherMessageLayout() {
    // 判断是否为名片消息
    final isNameCard = widget.message is ChatMessageNamecardModel;
    // 判断是否为骰子消息
    final isDice = widget.message is ChatMessageDiceModel;
    // 判断是否为红包消息
    final isRedpacket = widget.message is ChatMessageRedpacketModel;
    // 判断是否为转账消息
    final isTransfer = widget.message is ChatMessageTransferModel;
    // 判断是否为游戏消息
    final isGame = widget.message is ChatMessageGameModel;

    return Padding(
      padding: EdgeInsets.only(
        left:
            (isNameCard || isDice || isRedpacket || isTransfer || isGame)
                ? 0
                : 12, // 名片、骰子、游戏类型不添加左边距
        right:
            (isNameCard || isDice || isRedpacket || isTransfer || isGame)
                ? 0
                : 12, // 名片、骰子、游戏类型不添加右边距
        top: (isNameCard || isDice || isGame) ? 0 : 8, // 名片、骰子、游戏类型不添加上边距
        bottom:
            (isNameCard || isRedpacket || isTransfer || isGame)
                ? 0
                : 20, // 为底部时间状态区域留空间
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // 引用消息显示
            if (widget.message.refObj != null ) ...[
              if (widget.message.refObj!.msgType != FfiMsgType.dice && widget.message.refObj!.msgType != FfiMsgType.game) ...[
                ChatReferenceWidget(refObj: widget.message.refObj!, isMe: true),
                const SizedBox(height: 4),
              ]
            ],
            // 主消息内容
            _buildMessageContent(),
          ],
        ),
      ),
    );
  }

  /// 构建阅后即焚图标（消息左侧）
  Widget _buildReadCancelIcon() {
    return SizedBox(
      width: 14,
      height: 14,
      child: Image.asset(
        'assets/images/chat/msg_snapchat_flag@2x.png',
        width: 14,
        height: 14,
      ),
    );
  }

  /// 构建发送状态图标（消息左侧）
  Widget _buildSendingStatusIcon() {
    switch (widget.message.status) {
      //该用图片代替
      case FfiMsgStatus.failed:
        return Container(
          width: 30,
          height: 30,
          alignment: Alignment.center, // 居中对齐
          child: Image.asset(
            'assets/images/message_status/chat_retry@2x.png',
            width: 14,
            height: 14,
            fit: BoxFit.contain, // 保持图片比例，不拉伸
          ),
        );
      default:
        return const SizedBox(width: 8);
    }
  }

  /// 构建消息状态图标（右下角）
  Widget _buildMessageStatusIcon() {
    switch (widget.message.status) {
      case FfiMsgStatus.sending:
        return Image.asset(
          'assets/images/message_status/msg_status_sending@2x.png',
          width: 12,
          height: 12,
        );
      case FfiMsgStatus.sent:
        return Image.asset(
          'assets/images/message_status/msg_status_sended@2x.png',
          width: 12,
          height: 12,
        );
      case FfiMsgStatus.received:
        return Image.asset(
          'assets/images/message_status/msg_status_received@2x.png',
          width: 12,
          height: 12,
        );
      default:
        return Image.asset(
          'assets/images/message_status/msg_status_readed@2x.png',
          width: 12,
          height: 12,
        );
    }
  }

  /// 构建消息内容
  Widget _buildMessageContent() {
    if (widget.message is ChatMessageImageModel) {
      return ChatListImageWidget(
        message: widget.message as ChatMessageImageModel,
      );
    } else if (widget.message is ChatMessageTextModel) {
      return ChatListTextWidget(
        message: widget.message as ChatMessageTextModel,
        textColor: widget.message.isMe ? Colors.black87 : Colors.black87,
      );
    } else if (widget.message is ChatMessageNamecardModel) {
      return ChatListNamecardWidget(
        message: widget.message as ChatMessageNamecardModel,
      );
    } else if (widget.message is ChatMessageRedpacketModel) {
      return ChatListRedpacketWidget(
        message: widget.message as ChatMessageRedpacketModel,
      );
    } else if (widget.message is ChatMessageDiceModel) {
      return ChatListDiceWidget(
        message: widget.message as ChatMessageDiceModel,
      );
    } else if (widget.message is ChatMessageDynamicImageModel) {
      return ChatListDynamicImageWidget(
        message: widget.message as ChatMessageDynamicImageModel,
      );
    } else if (widget.message is ChatMessageGameModel) {
      return ChatListGameWidget(
        message: widget.message as ChatMessageGameModel,
        onAnimationComplete: () {
          print('🎮 游戏动画完成回调触发');
        },
        onGameRestart: () {
          print('🔄 游戏重新开始回调触发');
        },
        onWaitLoopComplete: (waitLoopCount) {},
      );
    } else if (widget.message is ChatMessageTransferModel) {
      return ChatListTransferWidget(
        message: widget.message as ChatMessageTransferModel,
      );
    } else if (widget.message is ChatMessageVideoModel) {
      return ChatListVideoWidget(
        message: widget.message as ChatMessageVideoModel,
      );
    } else if (widget.message is ChatMessageAudioModel) {
      return ChatListAudioWidget(
        message: widget.message as ChatMessageAudioModel,
      );
    } else if (widget.message is ChatMessageFileModel) {
      return ChatListFileWidget(
        message: widget.message as ChatMessageFileModel,
      );
    } else {
      return Text(
        'Unsupported message type',
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 14,
          fontStyle: FontStyle.italic,
        ),
      );
    }
  }

  /// 格式化时间显示
  String _formatTime(DateTime timestamp) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final messageDate = DateTime(
      timestamp.year,
      timestamp.month,
      timestamp.day,
    );

    if (messageDate == today) {
      // 今天的消息只显示时间
      return DateFormat('HH:mm').format(timestamp);
    } else if (messageDate == today.subtract(const Duration(days: 1))) {
      // 昨天的消息
      return '昨天 ${DateFormat('HH:mm').format(timestamp)}';
    } else {
      // 更早的消息显示日期和时间
      return DateFormat('MM/dd HH:mm').format(timestamp);
    }
  }

  void _showMessagePopup(BuildContext context) {
    // 获取消息组件的位置和大小
    final RenderBox? renderBox =
        _messageKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    final position = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;

    // 添加触感反馈
    HapticFeedback.mediumImpact();

    // 创建背景截图
    final backgroundWidget = _buildBackgroundWidget(context);

    // 导航到弹出页面
    Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        barrierDismissible: true,
        pageBuilder: (context, animation, secondaryAnimation) {
          return MessagePopupPage(
            message: widget.message,
            messageTop: position.dy,
            messageHeight: size.height,
            backgroundWidget: backgroundWidget,
            onReply: widget.onReply, // 传递回复回调
            chatType: widget.message.chatType, // 传递聊天类型
            targetId: widget.targetId, // 传递目标ID
          );
        },
        transitionDuration: const Duration(milliseconds: 300),
        reverseTransitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  Widget _buildBackgroundWidget(BuildContext context) {
    // 这里可以传递当前页面的截图或者重建当前页面
    // 为了简化，我们返回一个透明容器
    return Container(color: Colors.transparent, child: const SizedBox.expand());
  }
}
