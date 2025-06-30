// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_content_game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiAnmatedMessageContentImpl _$$FfiAnmatedMessageContentImplFromJson(
  Map<String, dynamic> json,
) => _$FfiAnmatedMessageContentImpl(
  gameId: (json['gameId'] as num).toInt(),
  currentImage: json['currentImage'] as String,
);

Map<String, dynamic> _$$FfiAnmatedMessageContentImplToJson(
  _$FfiAnmatedMessageContentImpl instance,
) => <String, dynamic>{
  'gameId': instance.gameId,
  'currentImage': instance.currentImage,
};
