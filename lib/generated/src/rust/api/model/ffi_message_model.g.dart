// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiMessageModelImpl _$$FfiMessageModelImplFromJson(
  Map<String, dynamic> json,
) => _$FfiMessageModelImpl(
  common: FfiCommonMessageModel.fromJson(
    json['common'] as Map<String, dynamic>,
  ),
  contentObj: json['contentObj'] as String?,
  senderUser: FfiMessageUser.fromJson(
    json['senderUser'] as Map<String, dynamic>,
  ),
  refObj:
      json['refObj'] == null
          ? null
          : FfiReferenceObj.fromJson(json['refObj'] as Map<String, dynamic>),
  isSendByMe: json['isSendByMe'] as bool,
  isRead: json['isRead'] as bool,
  status: $enumDecode(_$FfiMsgStatusEnumMap, json['status']),
);

Map<String, dynamic> _$$FfiMessageModelImplToJson(
  _$FfiMessageModelImpl instance,
) => <String, dynamic>{
  'common': instance.common,
  'contentObj': instance.contentObj,
  'senderUser': instance.senderUser,
  'refObj': instance.refObj,
  'isSendByMe': instance.isSendByMe,
  'isRead': instance.isRead,
  'status': _$FfiMsgStatusEnumMap[instance.status]!,
};

const _$FfiMsgStatusEnumMap = {
  FfiMsgStatus.sending: 'sending',
  FfiMsgStatus.sent: 'sent',
  FfiMsgStatus.failed: 'failed',
  FfiMsgStatus.received: 'received',
  FfiMsgStatus.read: 'read',
};
