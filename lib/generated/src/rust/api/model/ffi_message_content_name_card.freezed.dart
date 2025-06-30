// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_name_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiNameCardMessageContent _$FfiNameCardMessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiNameCardMessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiNameCardMessageContent {
  int get uid => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get identify => throw _privateConstructorUsedError;

  /// Serializes this FfiNameCardMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiNameCardMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiNameCardMessageContentCopyWith<FfiNameCardMessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiNameCardMessageContentCopyWith<$Res> {
  factory $FfiNameCardMessageContentCopyWith(
    FfiNameCardMessageContent value,
    $Res Function(FfiNameCardMessageContent) then,
  ) = _$FfiNameCardMessageContentCopyWithImpl<$Res, FfiNameCardMessageContent>;
  @useResult
  $Res call({int uid, String nickName, String icon, String identify});
}

/// @nodoc
class _$FfiNameCardMessageContentCopyWithImpl<
  $Res,
  $Val extends FfiNameCardMessageContent
>
    implements $FfiNameCardMessageContentCopyWith<$Res> {
  _$FfiNameCardMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiNameCardMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? nickName = null,
    Object? icon = null,
    Object? identify = null,
  }) {
    return _then(
      _value.copyWith(
            uid:
                null == uid
                    ? _value.uid
                    : uid // ignore: cast_nullable_to_non_nullable
                        as int,
            nickName:
                null == nickName
                    ? _value.nickName
                    : nickName // ignore: cast_nullable_to_non_nullable
                        as String,
            icon:
                null == icon
                    ? _value.icon
                    : icon // ignore: cast_nullable_to_non_nullable
                        as String,
            identify:
                null == identify
                    ? _value.identify
                    : identify // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiNameCardMessageContentImplCopyWith<$Res>
    implements $FfiNameCardMessageContentCopyWith<$Res> {
  factory _$$FfiNameCardMessageContentImplCopyWith(
    _$FfiNameCardMessageContentImpl value,
    $Res Function(_$FfiNameCardMessageContentImpl) then,
  ) = __$$FfiNameCardMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int uid, String nickName, String icon, String identify});
}

/// @nodoc
class __$$FfiNameCardMessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiNameCardMessageContentCopyWithImpl<
          $Res,
          _$FfiNameCardMessageContentImpl
        >
    implements _$$FfiNameCardMessageContentImplCopyWith<$Res> {
  __$$FfiNameCardMessageContentImplCopyWithImpl(
    _$FfiNameCardMessageContentImpl _value,
    $Res Function(_$FfiNameCardMessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiNameCardMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? nickName = null,
    Object? icon = null,
    Object? identify = null,
  }) {
    return _then(
      _$FfiNameCardMessageContentImpl(
        uid:
            null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                    as int,
        nickName:
            null == nickName
                ? _value.nickName
                : nickName // ignore: cast_nullable_to_non_nullable
                    as String,
        icon:
            null == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                    as String,
        identify:
            null == identify
                ? _value.identify
                : identify // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiNameCardMessageContentImpl extends _FfiNameCardMessageContent {
  const _$FfiNameCardMessageContentImpl({
    required this.uid,
    required this.nickName,
    required this.icon,
    required this.identify,
  }) : super._();

  factory _$FfiNameCardMessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiNameCardMessageContentImplFromJson(json);

  @override
  final int uid;
  @override
  final String nickName;
  @override
  final String icon;
  @override
  final String identify;

  @override
  String toString() {
    return 'FfiNameCardMessageContent(uid: $uid, nickName: $nickName, icon: $icon, identify: $identify)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiNameCardMessageContentImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.identify, identify) ||
                other.identify == identify));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, nickName, icon, identify);

  /// Create a copy of FfiNameCardMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiNameCardMessageContentImplCopyWith<_$FfiNameCardMessageContentImpl>
  get copyWith => __$$FfiNameCardMessageContentImplCopyWithImpl<
    _$FfiNameCardMessageContentImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiNameCardMessageContentImplToJson(this);
  }
}

abstract class _FfiNameCardMessageContent extends FfiNameCardMessageContent {
  const factory _FfiNameCardMessageContent({
    required final int uid,
    required final String nickName,
    required final String icon,
    required final String identify,
  }) = _$FfiNameCardMessageContentImpl;
  const _FfiNameCardMessageContent._() : super._();

  factory _FfiNameCardMessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiNameCardMessageContentImpl.fromJson;

  @override
  int get uid;
  @override
  String get nickName;
  @override
  String get icon;
  @override
  String get identify;

  /// Create a copy of FfiNameCardMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiNameCardMessageContentImplCopyWith<_$FfiNameCardMessageContentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
