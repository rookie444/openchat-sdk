import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openchat_client/src/common/ffi.dart';
import 'package:openchat_client/src/features/common/utils/emoji_chat/emoji_utils.dart';

// 消息类型枚举
enum MessageType {
  text,
  image,
  video,
  voice,
  gif,
  richText,
  file,
  location,
  emoji,
  namecard,
  redpacket,
}

// 图片加载状态枚举
enum ImageLoadState { loading, success, error }

// 图片加载信息
class ImageLoadInfo {
  final ImageLoadState state;
  final double progress;
  final String? error;

  ImageLoadInfo({required this.state, this.progress = 0.0, this.error});
}

// 聊天消息模型（基于FFI，普通类）
class ChatMessage {
  final FfiMessageModel ffiModel; // FfiMessageModel
  final dynamic contentObj;
  List<InputTextToken>? textTokens;
  TextMessageCalculateModel? contentCalculteModel;
  bool isSelected = false;

  ChatMessage({
    required this.ffiModel,
    this.contentObj,
    this.textTokens,
    this.contentCalculteModel,
  });

  // Getters - 根据FFI模型获取属性
  int get id => ffiModel.common.flag;
  int get msgId => ffiModel.common.msgId;
  dynamic get chatType => ffiModel.common.chatType;
  FfiMsgType get messageType => ffiModel.common.msgType;
  dynamic get type => ffiModel.common.msgType;
  int get senderId => ffiModel.senderUser.senderUid;
  String get senderName => ffiModel.senderUser.senderNickName;
  String get senderAvatar => ffiModel.senderUser.senderAvatar ?? "";
  bool get isMe => ffiModel.isSendByMe;
  dynamic get status => ffiModel.status;
  bool get isRead => ffiModel.isRead;
  DateTime get timestamp =>
      DateTime.fromMillisecondsSinceEpoch(ffiModel.common.sendTime);
  int get targetId => ffiModel.common.targetId;

  FfiReferenceObj? get refObj =>
      ffiModel.refObj != null ? ffiModel.refObj as FfiReferenceObj : null;
  FfiTextMessageContent get textContent => contentObj as FfiTextMessageContent;
  FfiRedPacketMessageContent get redPacketContent =>
      contentObj as FfiRedPacketMessageContent;
  FfiImageMessageContent get imageContent =>
      contentObj as FfiImageMessageContent;
  FfiDynamicImageMessageContent get dynamicImageContent =>
      contentObj as FfiDynamicImageMessageContent;
  FfiNameCardMessageContent get nameCardContent =>
      contentObj as FfiNameCardMessageContent;
  FfiVideoMessageContent get videoContent =>
      contentObj as FfiVideoMessageContent;
  FfiFileMessageContent get fileContent => contentObj as FfiFileMessageContent;
  FfiDiceMessageContent get diceContent => contentObj as FfiDiceMessageContent;
  FfiAudioMessageContent get audioContent =>
      contentObj as FfiAudioMessageContent;
  FfiChatTransferMessageContent get transferContent =>
      contentObj as FfiChatTransferMessageContent;
  FfiSystemMessageContent get systemContent =>
      contentObj as FfiSystemMessageContent;
  FfiAnmatedMessageContent get gameContent =>
      contentObj as FfiAnmatedMessageContent;


  /// 复制并更新消息
  ChatMessage copyWith({
    FfiMessageModel? ffiModel,
    dynamic contentObj,
    List<InputTextToken>? textTokens,
    TextMessageCalculateModel? contentCalculteModel,
  }) {
    return ChatMessage(
      ffiModel: ffiModel ?? this.ffiModel,
      contentObj: contentObj ?? this.contentObj,
      textTokens: textTokens ?? this.textTokens,
      contentCalculteModel: contentCalculteModel ?? this.contentCalculteModel,
    );
  }

  /// 转换为 JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'msgId': msgId,
      'senderId': senderId,
      'senderName': senderName,
      'senderAvatar': senderAvatar,
      'isMe': isMe,
      'timestamp': timestamp.millisecondsSinceEpoch,
    };
  }

  /// 从 JSON 创建实例
  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      ffiModel: json['ffiModel'],
      contentObj: json['contentObj'],
      textTokens: json['textTokens'],
      contentCalculteModel: json['contentCalculteModel'],
    );
  }
}

class ChatMessageTextModel extends ChatMessage {
  final String? _translateContent;

  ChatMessageTextModel({
    required super.ffiModel,
    super.contentObj,
    String? translateContent,
  }) : _translateContent = translateContent;

  // 获取文本内容 - 解析JSON字符串
  String get text {
    try {
      if (contentObj == null) return "";

      // 如果contentObj是字符串，尝试解析为JSON
      if (contentObj is String) {
        final Map<String, dynamic> jsonData = jsonDecode(contentObj);
        // 尝试不同的可能字段名
        return jsonData['text'] ??
            jsonData['content'] ??
            jsonData['message'] ??
            jsonData['body'] ??
            contentObj.toString();
      }

      // 如果已经是Map对象
      if (contentObj is Map<String, dynamic>) {
        return contentObj['text'] ??
            contentObj['content'] ??
            contentObj['message'] ??
            contentObj['body'] ??
            contentObj.toString();
      }

      // 其他情况直接转字符串
      return contentObj.toString();
    } catch (e) {
      // JSON解析失败，返回原始字符串
      print('解析文本内容失败: $e');
      return contentObj?.toString() ?? "";
    }
  }

  // 获取翻译内容
  String? get translateContent => _translateContent;

  static Future<bool> calculateTextInfoContentSize(
    ChatMessage chatMessage,
  ) async {
    if (chatMessage.messageType != FfiMsgType.text) {
      return false;
    }

    var textTokens = await EmojiUtils.parseEmojiContent(
      chatMessage.textContent.text,
    );
    var calModel = TextMessageCalculateModel(
      textTokens: textTokens,
      maxWidth: 0,
      lastLineWidth: 0,
    );
    chatMessage.contentCalculteModel = calModel;
    return true;
  }
}

class TextMessageCalculateModel {
  final List<InputTextToken> textTokens;
  final double maxWidth;
  final double lastLineWidth;

  TextMessageCalculateModel({
    required this.textTokens,
    required this.maxWidth,
    required this.lastLineWidth,
  });
}
