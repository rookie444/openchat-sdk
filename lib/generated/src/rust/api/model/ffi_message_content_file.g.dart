// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_content_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiFileMessageContentImpl _$$FfiFileMessageContentImplFromJson(
  Map<String, dynamic> json,
) => _$FfiFileMessageContentImpl(
  size: (json['size'] as num).toInt(),
  fileUrl: json['fileUrl'] as String,
  name: json['name'] as String,
  mimeType: json['mimeType'] as String,
);

Map<String, dynamic> _$$FfiFileMessageContentImplToJson(
  _$FfiFileMessageContentImpl instance,
) => <String, dynamic>{
  'size': instance.size,
  'fileUrl': instance.fileUrl,
  'name': instance.name,
  'mimeType': instance.mimeType,
};
