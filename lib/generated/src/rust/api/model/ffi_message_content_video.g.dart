// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_content_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiVideoMessageContentImpl _$$FfiVideoMessageContentImplFromJson(
  Map<String, dynamic> json,
) => _$FfiVideoMessageContentImpl(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  fileSize: (json['fileSize'] as num).toInt(),
  url: json['url'] as String,
  thumbUrl: json['thumbUrl'] as String,
  duration: (json['duration'] as num).toInt(),
);

Map<String, dynamic> _$$FfiVideoMessageContentImplToJson(
  _$FfiVideoMessageContentImpl instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'fileSize': instance.fileSize,
  'url': instance.url,
  'thumbUrl': instance.thumbUrl,
  'duration': instance.duration,
};
