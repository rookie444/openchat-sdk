// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_content_unknown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiUnknownMessageContentImpl _$$FfiUnknownMessageContentImplFromJson(
  Map<String, dynamic> json,
) => _$FfiUnknownMessageContentImpl(
  rawMsgType: (json['rawMsgType'] as num).toInt(),
  rawContent: json['rawContent'] as String,
);

Map<String, dynamic> _$$FfiUnknownMessageContentImplToJson(
  _$FfiUnknownMessageContentImpl instance,
) => <String, dynamic>{
  'rawMsgType': instance.rawMsgType,
  'rawContent': instance.rawContent,
};
