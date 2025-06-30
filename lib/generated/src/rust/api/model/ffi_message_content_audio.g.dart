// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_content_audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiAudioMessageContentImpl _$$FfiAudioMessageContentImplFromJson(
  Map<String, dynamic> json,
) => _$FfiAudioMessageContentImpl(
  duration: (json['duration'] as num).toInt(),
  fileSize: (json['fileSize'] as num).toInt(),
  url: json['url'] as String,
  waveData: json['waveData'] as String,
);

Map<String, dynamic> _$$FfiAudioMessageContentImplToJson(
  _$FfiAudioMessageContentImpl instance,
) => <String, dynamic>{
  'duration': instance.duration,
  'fileSize': instance.fileSize,
  'url': instance.url,
  'waveData': instance.waveData,
};
