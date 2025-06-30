// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_init_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiInitParamsImpl _$$FfiInitParamsImplFromJson(Map<String, dynamic> json) =>
    _$FfiInitParamsImpl(
      baseDir: json['baseDir'] as String,
      secretKeyName: json['secretKeyName'] as String,
      secretKeyValue: json['secretKeyValue'] as String,
      embedDomianHost: json['embedDomianHost'] as String,
      embedDomainOssUrl: json['embedDomainOssUrl'] as String,
      embedLoginHost: json['embedLoginHost'] as String,
      embedLoginOssUrl: json['embedLoginOssUrl'] as String,
    );

Map<String, dynamic> _$$FfiInitParamsImplToJson(_$FfiInitParamsImpl instance) =>
    <String, dynamic>{
      'baseDir': instance.baseDir,
      'secretKeyName': instance.secretKeyName,
      'secretKeyValue': instance.secretKeyValue,
      'embedDomianHost': instance.embedDomianHost,
      'embedDomainOssUrl': instance.embedDomainOssUrl,
      'embedLoginHost': instance.embedLoginHost,
      'embedLoginOssUrl': instance.embedLoginOssUrl,
    };
