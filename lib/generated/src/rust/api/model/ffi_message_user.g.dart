// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiMessageUserImpl _$$FfiMessageUserImplFromJson(Map<String, dynamic> json) =>
    _$FfiMessageUserImpl(
      senderUid: (json['senderUid'] as num).toInt(),
      senderNickName: json['senderNickName'] as String,
      senderAvatar: json['senderAvatar'] as String?,
      remarkName: json['remarkName'] as String,
    );

Map<String, dynamic> _$$FfiMessageUserImplToJson(
  _$FfiMessageUserImpl instance,
) => <String, dynamic>{
  'senderUid': instance.senderUid,
  'senderNickName': instance.senderNickName,
  'senderAvatar': instance.senderAvatar,
  'remarkName': instance.remarkName,
};
