// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_common.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiCommonMessageModelImpl _$$FfiCommonMessageModelImplFromJson(
  Map<String, dynamic> json,
) => _$FfiCommonMessageModelImpl(
  flag: (json['flag'] as num).toInt(),
  msgId: (json['msgId'] as num).toInt(),
  targetId: (json['targetId'] as num).toInt(),
  chatType: $enumDecode(_$FfiChatTypeEnumMap, json['chatType']),
  conversationId: json['conversationId'] as String,
  msgType: $enumDecode(_$FfiMsgTypeEnumMap, json['msgType']),
  sendTime: (json['sendTime'] as num).toInt(),
  serverReceiveTime: (json['serverReceiveTime'] as num).toInt(),
  receiveTime: (json['receiveTime'] as num).toInt(),
);

Map<String, dynamic> _$$FfiCommonMessageModelImplToJson(
  _$FfiCommonMessageModelImpl instance,
) => <String, dynamic>{
  'flag': instance.flag,
  'msgId': instance.msgId,
  'targetId': instance.targetId,
  'chatType': _$FfiChatTypeEnumMap[instance.chatType]!,
  'conversationId': instance.conversationId,
  'msgType': _$FfiMsgTypeEnumMap[instance.msgType]!,
  'sendTime': instance.sendTime,
  'serverReceiveTime': instance.serverReceiveTime,
  'receiveTime': instance.receiveTime,
};

const _$FfiChatTypeEnumMap = {
  FfiChatType.single: 'single',
  FfiChatType.group: 'group',
  FfiChatType.channel: 'channel',
};

const _$FfiMsgTypeEnumMap = {
  FfiMsgType.text: 'text',
  FfiMsgType.image: 'image',
  FfiMsgType.audio: 'audio',
  FfiMsgType.video: 'video',
  FfiMsgType.location: 'location',
  FfiMsgType.card: 'card',
  FfiMsgType.system: 'system',
  FfiMsgType.file: 'file',
  FfiMsgType.notice: 'notice',
  FfiMsgType.image2: 'image2',
  FfiMsgType.packet: 'packet',
  FfiMsgType.html: 'html',
  FfiMsgType.dice: 'dice',
  FfiMsgType.transfer: 'transfer',
  FfiMsgType.transfer2: 'transfer2',
  FfiMsgType.packet2: 'packet2',
  FfiMsgType.html2: 'html2',
  FfiMsgType.medias: 'medias',
  FfiMsgType.game: 'game',
  FfiMsgType.groupEvent: 'groupEvent',
  FfiMsgType.unknown: 'unknown',
};

_$FfiReferenceObjImpl _$$FfiReferenceObjImplFromJson(
  Map<String, dynamic> json,
) => _$FfiReferenceObjImpl(
  msgId: (json['msgId'] as num).toInt(),
  content: json['content'] as String,
  msgType: $enumDecode(_$FfiMsgTypeEnumMap, json['msgType']),
  uid: (json['uid'] as num).toInt(),
  nickname: json['nickname'] as String,
);

Map<String, dynamic> _$$FfiReferenceObjImplToJson(
  _$FfiReferenceObjImpl instance,
) => <String, dynamic>{
  'msgId': instance.msgId,
  'content': instance.content,
  'msgType': _$FfiMsgTypeEnumMap[instance.msgType]!,
  'uid': instance.uid,
  'nickname': instance.nickname,
};
