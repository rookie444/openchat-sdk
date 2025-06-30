// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_content_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiChatTransferMessageContentImpl
_$$FfiChatTransferMessageContentImplFromJson(Map<String, dynamic> json) =>
    _$FfiChatTransferMessageContentImpl(
      transferNo: json['transferNo'] as String,
      count: json['count'] as String,
      coinName: json['coinName'] as String,
      status: (json['status'] as num).toInt(),
      expiredTime: (json['expiredTime'] as num).toInt(),
      receiverId: (json['receiverId'] as num).toInt(),
      receiverName: json['receiverName'] as String,
      issuerUid: (json['issuerUid'] as num).toInt(),
      issuerName: json['issuerName'] as String,
      issuerIcon: json['issuerIcon'] as String,
      remark: json['remark'] as String,
      plusOneWithhold: (json['plusOneWithhold'] as num).toInt(),
    );

Map<String, dynamic> _$$FfiChatTransferMessageContentImplToJson(
  _$FfiChatTransferMessageContentImpl instance,
) => <String, dynamic>{
  'transferNo': instance.transferNo,
  'count': instance.count,
  'coinName': instance.coinName,
  'status': instance.status,
  'expiredTime': instance.expiredTime,
  'receiverId': instance.receiverId,
  'receiverName': instance.receiverName,
  'issuerUid': instance.issuerUid,
  'issuerName': instance.issuerName,
  'issuerIcon': instance.issuerIcon,
  'remark': instance.remark,
  'plusOneWithhold': instance.plusOneWithhold,
};
