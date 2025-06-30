// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiLocationMessageContent _$FfiLocationMessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiLocationMessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiLocationMessageContent {
  int get lat => throw _privateConstructorUsedError;
  int get lng => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  /// Serializes this FfiLocationMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiLocationMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiLocationMessageContentCopyWith<FfiLocationMessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiLocationMessageContentCopyWith<$Res> {
  factory $FfiLocationMessageContentCopyWith(
    FfiLocationMessageContent value,
    $Res Function(FfiLocationMessageContent) then,
  ) = _$FfiLocationMessageContentCopyWithImpl<$Res, FfiLocationMessageContent>;
  @useResult
  $Res call({int lat, int lng, String address});
}

/// @nodoc
class _$FfiLocationMessageContentCopyWithImpl<
  $Res,
  $Val extends FfiLocationMessageContent
>
    implements $FfiLocationMessageContentCopyWith<$Res> {
  _$FfiLocationMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiLocationMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null, Object? address = null}) {
    return _then(
      _value.copyWith(
            lat:
                null == lat
                    ? _value.lat
                    : lat // ignore: cast_nullable_to_non_nullable
                        as int,
            lng:
                null == lng
                    ? _value.lng
                    : lng // ignore: cast_nullable_to_non_nullable
                        as int,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiLocationMessageContentImplCopyWith<$Res>
    implements $FfiLocationMessageContentCopyWith<$Res> {
  factory _$$FfiLocationMessageContentImplCopyWith(
    _$FfiLocationMessageContentImpl value,
    $Res Function(_$FfiLocationMessageContentImpl) then,
  ) = __$$FfiLocationMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int lat, int lng, String address});
}

/// @nodoc
class __$$FfiLocationMessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiLocationMessageContentCopyWithImpl<
          $Res,
          _$FfiLocationMessageContentImpl
        >
    implements _$$FfiLocationMessageContentImplCopyWith<$Res> {
  __$$FfiLocationMessageContentImplCopyWithImpl(
    _$FfiLocationMessageContentImpl _value,
    $Res Function(_$FfiLocationMessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiLocationMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null, Object? address = null}) {
    return _then(
      _$FfiLocationMessageContentImpl(
        lat:
            null == lat
                ? _value.lat
                : lat // ignore: cast_nullable_to_non_nullable
                    as int,
        lng:
            null == lng
                ? _value.lng
                : lng // ignore: cast_nullable_to_non_nullable
                    as int,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiLocationMessageContentImpl extends _FfiLocationMessageContent {
  const _$FfiLocationMessageContentImpl({
    required this.lat,
    required this.lng,
    required this.address,
  }) : super._();

  factory _$FfiLocationMessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiLocationMessageContentImplFromJson(json);

  @override
  final int lat;
  @override
  final int lng;
  @override
  final String address;

  @override
  String toString() {
    return 'FfiLocationMessageContent(lat: $lat, lng: $lng, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiLocationMessageContentImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, address);

  /// Create a copy of FfiLocationMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiLocationMessageContentImplCopyWith<_$FfiLocationMessageContentImpl>
  get copyWith => __$$FfiLocationMessageContentImplCopyWithImpl<
    _$FfiLocationMessageContentImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiLocationMessageContentImplToJson(this);
  }
}

abstract class _FfiLocationMessageContent extends FfiLocationMessageContent {
  const factory _FfiLocationMessageContent({
    required final int lat,
    required final int lng,
    required final String address,
  }) = _$FfiLocationMessageContentImpl;
  const _FfiLocationMessageContent._() : super._();

  factory _FfiLocationMessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiLocationMessageContentImpl.fromJson;

  @override
  int get lat;
  @override
  int get lng;
  @override
  String get address;

  /// Create a copy of FfiLocationMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiLocationMessageContentImplCopyWith<_$FfiLocationMessageContentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
