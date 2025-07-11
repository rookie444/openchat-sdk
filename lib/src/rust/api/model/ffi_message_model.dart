// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.9.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'ffi_message_common.dart';
import 'ffi_message_user.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part '../../../../generated/src/rust/api/model/ffi_message_model.freezed.dart';
part '../../../../generated/src/rust/api/model/ffi_message_model.g.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `clone`, `fmt`, `fmt`

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<Arc < dyn FfiMessageContentTrait >>>
abstract class ArcFfiMessageContentTrait implements RustOpaqueInterface {}

class FfiMessageMetaData {
  final FfiChatType chatType;
  final PlatformInt64 targetId;
  final int msgTypeVal;
  final PlatformInt64 senderUid;
  final String senderNickName;
  final String? senderAvatar;
  final PlatformInt64 msgId;
  final PlatformInt64 sendTime;
  final Uint8List content;

  const FfiMessageMetaData({
    required this.chatType,
    required this.targetId,
    required this.msgTypeVal,
    required this.senderUid,
    required this.senderNickName,
    this.senderAvatar,
    required this.msgId,
    required this.sendTime,
    required this.content,
  });

  @override
  int get hashCode =>
      chatType.hashCode ^
      targetId.hashCode ^
      msgTypeVal.hashCode ^
      senderUid.hashCode ^
      senderNickName.hashCode ^
      senderAvatar.hashCode ^
      msgId.hashCode ^
      sendTime.hashCode ^
      content.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FfiMessageMetaData &&
          runtimeType == other.runtimeType &&
          chatType == other.chatType &&
          targetId == other.targetId &&
          msgTypeVal == other.msgTypeVal &&
          senderUid == other.senderUid &&
          senderNickName == other.senderNickName &&
          senderAvatar == other.senderAvatar &&
          msgId == other.msgId &&
          sendTime == other.sendTime &&
          content == other.content;
}

/// 聊天消息模型
@freezed
class FfiMessageModel with _$FfiMessageModel {
  const FfiMessageModel._();
  const factory FfiMessageModel({
    required FfiCommonMessageModel common,
    String? contentObj,
    required FfiMessageUser senderUser,
    FfiReferenceObj? refObj,
    required bool isSendByMe,
    required bool isRead,
    required FfiMsgStatus status,
  }) = _FfiMessageModel;

  /// 生成本地发送的消息--> 转换为通用的ffi消息
  /// 将数据库消息转换为聊天消息
  static Future<FfiMessageModel> createSendMessage({
    required FfiChatType chatType,
    required PlatformInt64 targetId,
    required PlatformInt64 sendTime,
    FfiReferenceObj? refObj,
    required ArcFfiMessageContentTrait ffiContent,
  }) => RustLib.instance.api
      .crateApiModelFfiMessageModelFfiMessageModelCreateSendMessage(
        chatType: chatType,
        targetId: targetId,
        sendTime: sendTime,
        refObj: refObj,
        ffiContent: ffiContent,
      );

  /// 将数据库消息转换为聊天消息
  static Future<FfiMessageModel> ffiMessageFromProto({
    required FfiMessageMetaData metaData,
  }) => RustLib.instance.api
      .crateApiModelFfiMessageModelFfiMessageModelFfiMessageFromProto(
        metaData: metaData,
      );

  Future<PlatformInt64> getTargetId() => RustLib.instance.api
      .crateApiModelFfiMessageModelFfiMessageModelGetTargetId(that: this);

  factory FfiMessageModel.fromJson(Map<String, dynamic> json) =>
      _$FfiMessageModelFromJson(json);
}
