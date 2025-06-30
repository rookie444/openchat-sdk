// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_content_dice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiDiceMessageContentImpl _$$FfiDiceMessageContentImplFromJson(
  Map<String, dynamic> json,
) => _$FfiDiceMessageContentImpl(
  setImageId: (json['setImageId'] as num).toInt(),
  imageSize: (json['imageSize'] as num).toInt(),
  currentImage: (json['currentImage'] as num).toInt(),
);

Map<String, dynamic> _$$FfiDiceMessageContentImplToJson(
  _$FfiDiceMessageContentImpl instance,
) => <String, dynamic>{
  'setImageId': instance.setImageId,
  'imageSize': instance.imageSize,
  'currentImage': instance.currentImage,
};
