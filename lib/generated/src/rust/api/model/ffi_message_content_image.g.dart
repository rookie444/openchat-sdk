// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_content_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiImageMessageContentImpl _$$FfiImageMessageContentImplFromJson(
  Map<String, dynamic> json,
) => _$FfiImageMessageContentImpl(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  fileSize: (json['fileSize'] as num).toInt(),
  url: json['url'] as String,
  thumbUrl: json['thumbUrl'] as String,
  sizeType: (json['sizeType'] as num).toInt(),
);

Map<String, dynamic> _$$FfiImageMessageContentImplToJson(
  _$FfiImageMessageContentImpl instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'fileSize': instance.fileSize,
  'url': instance.url,
  'thumbUrl': instance.thumbUrl,
  'sizeType': instance.sizeType,
};
