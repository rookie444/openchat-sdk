// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiConversationImpl _$$FfiConversationImplFromJson(
  Map<String, dynamic> json,
) => _$FfiConversationImpl(
  conversationId: json['conversationId'] as String,
  chatType: $enumDecode(_$FfiChatTypeEnumMap, json['chatType']),
  targetId: (json['targetId'] as num).toInt(),
  lastMessage: json['lastMessage'] as String,
  lastMessageTime: (json['lastMessageTime'] as num).toInt(),
  lastMessageType: $enumDecode(_$FfiMsgTypeEnumMap, json['lastMessageType']),
  senderUid: (json['senderUid'] as num).toInt(),
  senderName: json['senderName'] as String,
  name: json['name'] as String,
  avatar: json['avatar'] as String?,
  unreadCount: (json['unreadCount'] as num).toInt(),
  isTopPinned: json['isTopPinned'] as bool,
  isMuted: json['isMuted'] as bool,
  topPinnedAt: (json['topPinnedAt'] as num?)?.toInt(),
  isArchive: json['isArchive'] as bool,
);

Map<String, dynamic> _$$FfiConversationImplToJson(
  _$FfiConversationImpl instance,
) => <String, dynamic>{
  'conversationId': instance.conversationId,
  'chatType': _$FfiChatTypeEnumMap[instance.chatType]!,
  'targetId': instance.targetId,
  'lastMessage': instance.lastMessage,
  'lastMessageTime': instance.lastMessageTime,
  'lastMessageType': _$FfiMsgTypeEnumMap[instance.lastMessageType]!,
  'senderUid': instance.senderUid,
  'senderName': instance.senderName,
  'name': instance.name,
  'avatar': instance.avatar,
  'unreadCount': instance.unreadCount,
  'isTopPinned': instance.isTopPinned,
  'isMuted': instance.isMuted,
  'topPinnedAt': instance.topPinnedAt,
  'isArchive': instance.isArchive,
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
