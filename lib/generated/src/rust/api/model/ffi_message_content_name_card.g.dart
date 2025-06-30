// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_content_name_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiNameCardMessageContentImpl _$$FfiNameCardMessageContentImplFromJson(
  Map<String, dynamic> json,
) => _$FfiNameCardMessageContentImpl(
  uid: (json['uid'] as num).toInt(),
  nickName: json['nickName'] as String,
  icon: json['icon'] as String,
  identify: json['identify'] as String,
);

Map<String, dynamic> _$$FfiNameCardMessageContentImplToJson(
  _$FfiNameCardMessageContentImpl instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'nickName': instance.nickName,
  'icon': instance.icon,
  'identify': instance.identify,
};
