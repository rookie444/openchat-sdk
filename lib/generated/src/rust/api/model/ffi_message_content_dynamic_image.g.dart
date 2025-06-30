// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_content_dynamic_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiDynamicImageMessageContentImpl
_$$FfiDynamicImageMessageContentImplFromJson(Map<String, dynamic> json) =>
    _$FfiDynamicImageMessageContentImpl(
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      fileSize: (json['fileSize'] as num).toInt(),
      url: json['url'] as String,
      thumbUrl: json['thumbUrl'] as String,
      emoticonId: (json['emoticonId'] as num).toInt(),
    );

Map<String, dynamic> _$$FfiDynamicImageMessageContentImplToJson(
  _$FfiDynamicImageMessageContentImpl instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'fileSize': instance.fileSize,
  'url': instance.url,
  'thumbUrl': instance.thumbUrl,
  'emoticonId': instance.emoticonId,
};
