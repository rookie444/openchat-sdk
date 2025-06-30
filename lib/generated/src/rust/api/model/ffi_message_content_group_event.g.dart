// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_content_group_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiGroupEventMessageContentImpl _$$FfiGroupEventMessageContentImplFromJson(
  Map<String, dynamic> json,
) => _$FfiGroupEventMessageContentImpl(
  rawMsgType: (json['rawMsgType'] as num).toInt(),
  rawContent: json['rawContent'] as String,
);

Map<String, dynamic> _$$FfiGroupEventMessageContentImplToJson(
  _$FfiGroupEventMessageContentImpl instance,
) => <String, dynamic>{
  'rawMsgType': instance.rawMsgType,
  'rawContent': instance.rawContent,
};
