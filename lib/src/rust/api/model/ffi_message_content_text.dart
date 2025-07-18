// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.9.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'ffi_message_common.dart';
import 'ffi_message_content.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part '../../../../generated/src/rust/api/model/ffi_message_content_text.freezed.dart';
part '../../../../generated/src/rust/api/model/ffi_message_content_text.g.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`

/// 文本消息内容
@freezed
class FfiTextMessageContent with _$FfiTextMessageContent {
  const FfiTextMessageContent._();
  const factory FfiTextMessageContent({required String text}) =
      _FfiTextMessageContent;
  static Future<FfiTextMessageContent> default_() =>
      RustLib.instance.api
          .crateApiModelFfiMessageContentTextFfiTextMessageContentDefault();

  Future<String> ffiToJsonString() => RustLib.instance.api
      .crateApiModelFfiMessageContentTextFfiTextMessageContentFfiToJsonString(
        that: this,
      );

  Future<Uint8List> ffiToProtoData({
    required String contentObj,
    FfiReferenceObj? ffiRefObj,
  }) => RustLib.instance.api
      .crateApiModelFfiMessageContentTextFfiTextMessageContentFfiToProtoData(
        that: this,
        contentObj: contentObj,
        ffiRefObj: ffiRefObj,
      );

  Future<FfiMsgType> getFfiSubMsgType() => RustLib.instance.api
      .crateApiModelFfiMessageContentTextFfiTextMessageContentGetFfiSubMsgType(
        that: this,
      );

  Future<void> jsonToFfi({required String uniKey, required String jsonStr}) =>
      RustLib.instance.api
          .crateApiModelFfiMessageContentTextFfiTextMessageContentJsonToFfi(
            that: this,
            uniKey: uniKey,
            jsonStr: jsonStr,
          );

  Future<(String, FfiReferenceObj?)> protoDecodeToJson({
    required List<int> content,
  }) => RustLib.instance.api
      .crateApiModelFfiMessageContentTextFfiTextMessageContentProtoDecodeToJson(
        that: this,
        content: content,
      );

  factory FfiTextMessageContent.fromJson(Map<String, dynamic> json) =>
      _$FfiTextMessageContentFromJson(json);
}
