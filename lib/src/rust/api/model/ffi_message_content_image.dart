// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.9.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'ffi_message_common.dart';
import 'ffi_message_content.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part '../../../../generated/src/rust/api/model/ffi_message_content_image.freezed.dart';
part '../../../../generated/src/rust/api/model/ffi_message_content_image.g.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`

/// 文本消息内容
@freezed
class FfiImageMessageContent with _$FfiImageMessageContent {
  const FfiImageMessageContent._();
  const factory FfiImageMessageContent({
    required int width,
    required int height,
    required PlatformInt64 fileSize,
    required String url,
    required String thumbUrl,
    required int sizeType,
  }) = _FfiImageMessageContent;
  static Future<FfiImageMessageContent> default_() =>
      RustLib.instance.api
          .crateApiModelFfiMessageContentImageFfiImageMessageContentDefault();

  Future<String> ffiToJsonString() => RustLib.instance.api
      .crateApiModelFfiMessageContentImageFfiImageMessageContentFfiToJsonString(
        that: this,
      );

  Future<Uint8List> ffiToProtoData({
    required String contentObj,
    FfiReferenceObj? ffiRefObj,
  }) => RustLib.instance.api
      .crateApiModelFfiMessageContentImageFfiImageMessageContentFfiToProtoData(
        that: this,
        contentObj: contentObj,
        ffiRefObj: ffiRefObj,
      );

  Future<FfiMsgType> getFfiSubMsgType() => RustLib.instance.api
      .crateApiModelFfiMessageContentImageFfiImageMessageContentGetFfiSubMsgType(
        that: this,
      );

  Future<void> jsonToFfi({required String uniKey, required String jsonStr}) =>
      RustLib.instance.api
          .crateApiModelFfiMessageContentImageFfiImageMessageContentJsonToFfi(
            that: this,
            uniKey: uniKey,
            jsonStr: jsonStr,
          );

  Future<(String, FfiReferenceObj?)> protoDecodeToJson({
    required List<int> content,
  }) => RustLib.instance.api
      .crateApiModelFfiMessageContentImageFfiImageMessageContentProtoDecodeToJson(
        that: this,
        content: content,
      );

  factory FfiImageMessageContent.fromJson(Map<String, dynamic> json) =>
      _$FfiImageMessageContentFromJson(json);
}
