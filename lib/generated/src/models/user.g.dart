// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/models/user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: json['id'] as String,
  phone: json['phone'] as String,
  nickname: json['nickname'] as String?,
  avatar: json['avatar'] as String?,
  isEmailVerified: json['isEmailVerified'] as bool? ?? false,
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'nickname': instance.nickname,
      'avatar': instance.avatar,
      'isEmailVerified': instance.isEmailVerified,
    };
