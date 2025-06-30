import 'package:flutter/services.dart';
import '../models/chat_message.dart';
import '../blocs/message_popup_state.dart';
import '../../../../rust/api/model/ffi_message_common.dart';

/// 消息弹出菜单业务逻辑通知器
/// 负责处理菜单项的业务逻辑和数据处理
class MessagePopupNotifier {
  /// 构建菜单项列表
  static List<PopupMenuItem> buildMenuItems(ChatMessage message) {
    final items = <PopupMenuItem>[];

    /// TODO 暂时处理非阅后即焚逻辑
    ///

    // 耳机播放
    if (isShowMsgSpeaker(message.ffiModel.common.msgType)) {
      items.add(
        const PopupMenuItem(
          id: 'speaker',
          title: '耳机播放',
          icon: 'msg_popup_earphone',
          enabled: true,
          type: PopupMenuItemType.normal,
        ),
      );
    }

    if (message.ffiModel.common.msgType == FfiMsgType.video) {
      items.add(
        const PopupMenuItem(
          id: 'mute',
          title: '静音播放',
          icon: 'msg_popup_mute',
          enabled: true,
          type: PopupMenuItemType.normal,
        ),
      );
    }

    // 回复 - 普通操作
    if (isShowMsgReply(message.ffiModel.common.msgType)) {
      items.add(
        const PopupMenuItem(
          id: 'reply',
          title: '回复',
          icon: 'msg_popup_reply',
          enabled: true,
          type: PopupMenuItemType.normal,
        ),
      );
    }

    // 复制（仅文本消息）
    if (isShowMsgCopy(message.ffiModel.common.msgType)) {
      items.add(
        const PopupMenuItem(
          id: 'copy',
          title: '复制',
          icon: 'msg_popup_copy',
          enabled: true,
          type: PopupMenuItemType.normal,
        ),
      );
    }

    // 保存图片
    if (isShowImgSave(message.ffiModel.common.msgType)) {
      items.add(
        const PopupMenuItem(
          id: 'save_img',
          title: '保存图片',
          icon: 'msg_popup_save',
          enabled: true,
          type: PopupMenuItemType.normal,
        ),
      );
    }

    // 保存视频
    if (isShowVideoSave(message.ffiModel.common.msgType)) {
      items.add(
        const PopupMenuItem(
          id: 'save_video',
          title: '保存视频',
          icon: 'msg_popup_save',
          enabled: true,
          type: PopupMenuItemType.normal,
        ),
      );
    }

    // 详情
    if (isShowMsgDetail(message.ffiModel.common.msgType) && message.isMe) {
      items.add(
        const PopupMenuItem(
          id: 'detail',
          title: '详情',
          icon: 'msg_popup_detail',
          enabled: true,
          type: PopupMenuItemType.normal,
        ),
      );
    }

    // 转发
    if (isShowMsgForward(message.ffiModel.common.msgType)) {
      items.add(
        const PopupMenuItem(
          id: 'forward',
          title: '转发',
          icon: 'msg_popup_retweet',
          enabled: true,
          type: PopupMenuItemType.normal,
        ),
      );
    }

    // 删除
    if (isShowMsgDelete(message.ffiModel.common.msgType)) {
      items.add(
        const PopupMenuItem(
          id: 'delete',
          title: '删除',
          icon: 'msg_popup_delete',
          enabled: true,
          type: PopupMenuItemType.destructive,
        ),
      );
    }

    // 多选
    if (isShowMsgSelect(message.ffiModel.common.msgType)) {
      items.add(
        const PopupMenuItem(
          id: 'select',
          title: '多选',
          icon: 'msg_popup_muti_choose',
          enabled: true,
          type: PopupMenuItemType.normal,
        ),
      );
    }

    return items;
  }

  /// 判断菜单是否应该显示在消息上方
  static bool shouldShowMenuAbove(
    double messageTop,
    double messageHeight,
    double screenHeight,
  ) {
    const menuHeight = 200.0; // 预估菜单高度
    const padding = 20.0;

    final spaceBelow = screenHeight - (messageTop + messageHeight);
    final spaceAbove = messageTop;

    // 如果下方空间不足，且上方空间充足，则显示在上方
    return spaceBelow < (menuHeight + padding) &&
        spaceAbove > (menuHeight + padding);
  }

  /// 处理回复消息
  static Future<void> handleReplyMessage(ChatMessage message) async {
    // 添加触感反馈
    HapticFeedback.lightImpact();

    // TODO: 实现回复消息的具体逻辑
    // 比如设置回复上下文，跳转到输入框等
    print('回复消息: ${message.id}');

    // 模拟异步操作
    await Future.delayed(const Duration(milliseconds: 300));
  }

  /// 处理删除消息
  static Future<void> handleDeleteMessage(ChatMessage message) async {
    // 添加触感反馈
    HapticFeedback.mediumImpact();

    // TODO: 实现删除消息的具体逻辑
    // 比如调用API删除消息，更新本地缓存等
    print('删除消息: ${message.id}');

    // 模拟异步操作
    await Future.delayed(const Duration(milliseconds: 500));
  }

  /// 处理引用消息
  static Future<void> handleQuoteMessage(ChatMessage message) async {
    // 添加触感反馈
    HapticFeedback.lightImpact();

    // TODO: 实现引用消息的具体逻辑
    // 比如在输入框中添加引用内容
    print('引用消息: ${message.id}');

    // 模拟异步操作
    await Future.delayed(const Duration(milliseconds: 300));
  }

  /// 处理复制消息
  static Future<void> handleCopyMessage(ChatMessage message) async {
    // 添加触感反馈
    HapticFeedback.lightImpact();

    if (message is ChatMessageTextModel) {
      // 复制文本内容到剪贴板
      await Clipboard.setData(ClipboardData(text: message.textContent.text));
      print('已复制文本: ${message.textContent.text}');
    } else {
      // 对于非文本消息，复制消息摘要
      await Clipboard.setData(
        ClipboardData(text: '[${_getMessageTypeName(message)}]'),
      );
      print('已复制消息类型: ${_getMessageTypeName(message)}');
    }

    // 模拟异步操作
    await Future.delayed(const Duration(milliseconds: 200));
  }

  /// 处理转发消息
  static Future<void> handleForwardMessage(ChatMessage message) async {
    // 添加触感反馈
    HapticFeedback.lightImpact();

    // TODO: 实现转发消息的具体逻辑
    // 比如打开联系人选择器，创建转发消息等
    print('转发消息: ${message.id}');

    // 模拟异步操作
    await Future.delayed(const Duration(milliseconds: 400));
  }

  /// 处理收藏消息
  static Future<void> handleFavoriteMessage(ChatMessage message) async {
    // 添加触感反馈
    HapticFeedback.lightImpact();

    // TODO: 实现收藏消息的具体逻辑
    // 比如添加到收藏夹，更新本地数据库等
    print('收藏消息: ${message.id}');

    // 模拟异步操作
    await Future.delayed(const Duration(milliseconds: 300));
  }

  /// 处理多选消息
  static Future<void> handleSelectMessage(ChatMessage message) async {
    // 添加触感反馈
    HapticFeedback.lightImpact();

    // TODO: 实现多选消息的具体逻辑
    // 比如进入多选模式，添加到选中列表等
    print('多选消息: ${message.id}');

    // 模拟异步操作
    await Future.delayed(const Duration(milliseconds: 200));
  }

  /// 处理撤回消息
  static Future<void> handleRecallMessage(ChatMessage message) async {
    // 添加触感反馈
    HapticFeedback.mediumImpact();

    // TODO: 实现撤回消息的具体逻辑
    // 比如调用API撤回消息，更新消息状态等
    print('撤回消息: ${message.id}');

    // 模拟异步操作
    await Future.delayed(const Duration(milliseconds: 600));
  }

  /// 处理详情消息
  static Future<void> handleDetailMessage(ChatMessage message) async {
    // 添加触感反馈
    HapticFeedback.lightImpact();

    // TODO: 实现详情消息的具体逻辑
    // 比如跳转到消息详情页面
    print('查看消息详情: ${message.id}');

    // 模拟异步操作
    await Future.delayed(const Duration(milliseconds: 300));
  }

  /// 获取操作的显示文本
  static String getActionText(String action) {
    switch (action) {
      case 'reply':
        return '回复';
      case 'delete':
        return '删除';
      case 'detail':
        return '详情';
      case 'quote':
        return '引用';
      case 'copy':
        return '复制';
      case 'forward':
        return '转发';
      case 'favorite':
        return '收藏';
      case 'select':
        return '多选';
      case 'recall':
        return '撤回';
      case 'speaker':
        return '耳机播放';
      case 'mute':
        return '静音播放';
      case 'paly':
        return '扩音播放';
      case 'save_img':
        return '保存图片';
      case 'save_video':
        return '保存视频';
      default:
        return '处理';
    }
  }

  /// 判断消息是否可以撤回
  static bool _canRecallMessage(ChatMessage message) {
    // 只有发送成功的消息才能撤回，且在2分钟内
    if (!message.isMe) return false;

    final now = DateTime.now();
    final timeDiff = now.difference(message.timestamp);

    // 2分钟内可以撤回
    return timeDiff.inMinutes < 2 &&
        (message.status == FfiMsgStatus.sent ||
            message.status == FfiMsgStatus.received ||
            message.status == FfiMsgStatus.read);
  }

  /// 获取消息类型名称
  static String _getMessageTypeName(ChatMessage message) {
    if (message is ChatMessageTextModel) return '文本消息';
    return '消息';
  }

  static bool isShowMsgCopy(FfiMsgType msgType) {
    switch (msgType) {
      case FfiMsgType.html:
      case FfiMsgType.image:
      case FfiMsgType.text:
        return true;
      default:
        return false;
    }
  }

  static bool isShowImgSave(FfiMsgType msgType) {
    switch (msgType) {
      case FfiMsgType.image:
        return true;
      default:
        return false;
    }
  }

  static bool isShowVideoSave(FfiMsgType msgType) {
    switch (msgType) {
      case FfiMsgType.video:
        return true;
      default:
        return false;
    }
  }

  static bool isShowMsgForward(FfiMsgType msgType) {
    switch (msgType) {
      case FfiMsgType.medias:
      case FfiMsgType.unknown:
      case FfiMsgType.transfer:
      case FfiMsgType.notice:
      case FfiMsgType.packet:
        return false;
      default:
        return true;
    }
  }

  static bool isShowMsgSpeaker(FfiMsgType msgType) {
    switch (msgType) {
      case FfiMsgType.audio:
        return true;
      default:
        return false;
    }
  }

  static bool isShowMsgReply(FfiMsgType msgType) {
    switch (msgType) {
      case FfiMsgType.medias:
      case FfiMsgType.unknown:
      case FfiMsgType.html:
        return false;
      default:
        return true;
    }
  }

  static bool isShowMsgDelete(FfiMsgType msgType) {
    switch (msgType) {
      default:
        return true;
    }
  }

  static bool isShowMsgSelect(FfiMsgType msgType) {
    switch (msgType) {
      case FfiMsgType.unknown:
      case FfiMsgType.html:
        return false;

      default:
        return true;
    }
  }

  static bool isShowMsgDetail(FfiMsgType msgType) {
    switch (msgType) {
      default:
        return true;
    }
  }
}
