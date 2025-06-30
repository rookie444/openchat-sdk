// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../src/rust/api/model/ffi_message_content_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfiLocationMessageContentImpl _$$FfiLocationMessageContentImplFromJson(
  Map<String, dynamic> json,
) => _$FfiLocationMessageContentImpl(
  lat: (json['lat'] as num).toInt(),
  lng: (json['lng'] as num).toInt(),
  address: json['address'] as String,
);

Map<String, dynamic> _$$FfiLocationMessageContentImplToJson(
  _$FfiLocationMessageContentImpl instance,
) => <String, dynamic>{
  'lat': instance.lat,
  'lng': instance.lng,
  'address': instance.address,
};
