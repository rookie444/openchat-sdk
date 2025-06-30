// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_content_redpacket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiRedPacketMessageContentImpl _$$FfiRedPacketMessageContentImplFromJson(
  Map<String, dynamic> json,
) => _$FfiRedPacketMessageContentImpl(
  redPacketId: json['redPacketId'] as String,
  status: (json['status'] as num).toInt(),
  expiredTime: (json['expiredTime'] as num).toInt(),
  type: (json['type'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  receiverId: (json['receiverId'] as num).toInt(),
  receiverName: json['receiverName'] as String,
  issuerUid: (json['issuerUid'] as num).toInt(),
  issuerName: json['issuerName'] as String,
  issuerIcon: json['issuerIcon'] as String,
  luckyWord: json['luckyWord'] as String,
  luckyImageUrl: json['luckyImageUrl'] as String,
  openedCoverUrl: json['openedCoverUrl'] as String,
  unOpenedCoverUrl: json['unOpenedCoverUrl'] as String,
  coverExpireTime: (json['coverExpireTime'] as num).toInt(),
  plusOneWithhold: (json['plusOneWithhold'] as num).toInt(),
);

Map<String, dynamic> _$$FfiRedPacketMessageContentImplToJson(
  _$FfiRedPacketMessageContentImpl instance,
) => <String, dynamic>{
  'redPacketId': instance.redPacketId,
  'status': instance.status,
  'expiredTime': instance.expiredTime,
  'type': instance.type,
  'count': instance.count,
  'receiverId': instance.receiverId,
  'receiverName': instance.receiverName,
  'issuerUid': instance.issuerUid,
  'issuerName': instance.issuerName,
  'issuerIcon': instance.issuerIcon,
  'luckyWord': instance.luckyWord,
  'luckyImageUrl': instance.luckyImageUrl,
  'openedCoverUrl': instance.openedCoverUrl,
  'unOpenedCoverUrl': instance.unOpenedCoverUrl,
  'coverExpireTime': instance.coverExpireTime,
  'plusOneWithhold': instance.plusOneWithhold,
};
