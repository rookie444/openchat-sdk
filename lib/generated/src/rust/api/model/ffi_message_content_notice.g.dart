// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_content_notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiNoticeMessageContentImpl _$$FfiNoticeMessageContentImplFromJson(
  Map<String, dynamic> json,
) => _$FfiNoticeMessageContentImpl(
  content: json['content'] as String,
  noticeId: (json['noticeId'] as num).toInt(),
  showNotify: json['showNotify'] as bool,
);

Map<String, dynamic> _$$FfiNoticeMessageContentImplToJson(
  _$FfiNoticeMessageContentImpl instance,
) => <String, dynamic>{
  'content': instance.content,
  'noticeId': instance.noticeId,
  'showNotify': instance.showNotify,
};
