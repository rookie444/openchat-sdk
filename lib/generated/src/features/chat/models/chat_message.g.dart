// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/features/chat/models/chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      ffiModel: FfiMessageModel.fromJson(
        json['ffiModel'] as Map<String, dynamic>,
      ),
      contentObj: json['contentObj'],
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'ffiModel': instance.ffiModel,
      'contentObj': instance.contentObj,
    };
