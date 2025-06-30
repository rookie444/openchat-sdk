// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiMessageUser _$FfiMessageUserFromJson(Map<String, dynamic> json) {
  return _FfiMessageUser.fromJson(json);
}

/// @nodoc
mixin _$FfiMessageUser {
  int get senderUid => throw _privateConstructorUsedError;
  String get senderNickName => throw _privateConstructorUsedError;
  String? get senderAvatar => throw _privateConstructorUsedError;
  String get remarkName => throw _privateConstructorUsedError;

  /// Serializes this FfiMessageUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiMessageUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiMessageUserCopyWith<FfiMessageUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiMessageUserCopyWith<$Res> {
  factory $FfiMessageUserCopyWith(
    FfiMessageUser value,
    $Res Function(FfiMessageUser) then,
  ) = _$FfiMessageUserCopyWithImpl<$Res, FfiMessageUser>;
  @useResult
  $Res call({
    int senderUid,
    String senderNickName,
    String? senderAvatar,
    String remarkName,
  });
}

/// @nodoc
class _$FfiMessageUserCopyWithImpl<$Res, $Val extends FfiMessageUser>
    implements $FfiMessageUserCopyWith<$Res> {
  _$FfiMessageUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiMessageUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderUid = null,
    Object? senderNickName = null,
    Object? senderAvatar = freezed,
    Object? remarkName = null,
  }) {
    return _then(
      _value.copyWith(
            senderUid:
                null == senderUid
                    ? _value.senderUid
                    : senderUid // ignore: cast_nullable_to_non_nullable
                        as int,
            senderNickName:
                null == senderNickName
                    ? _value.senderNickName
                    : senderNickName // ignore: cast_nullable_to_non_nullable
                        as String,
            senderAvatar:
                freezed == senderAvatar
                    ? _value.senderAvatar
                    : senderAvatar // ignore: cast_nullable_to_non_nullable
                        as String?,
            remarkName:
                null == remarkName
                    ? _value.remarkName
                    : remarkName // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiMessageUserImplCopyWith<$Res>
    implements $FfiMessageUserCopyWith<$Res> {
  factory _$$FfiMessageUserImplCopyWith(
    _$FfiMessageUserImpl value,
    $Res Function(_$FfiMessageUserImpl) then,
  ) = __$$FfiMessageUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int senderUid,
    String senderNickName,
    String? senderAvatar,
    String remarkName,
  });
}

/// @nodoc
class __$$FfiMessageUserImplCopyWithImpl<$Res>
    extends _$FfiMessageUserCopyWithImpl<$Res, _$FfiMessageUserImpl>
    implements _$$FfiMessageUserImplCopyWith<$Res> {
  __$$FfiMessageUserImplCopyWithImpl(
    _$FfiMessageUserImpl _value,
    $Res Function(_$FfiMessageUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMessageUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderUid = null,
    Object? senderNickName = null,
    Object? senderAvatar = freezed,
    Object? remarkName = null,
  }) {
    return _then(
      _$FfiMessageUserImpl(
        senderUid:
            null == senderUid
                ? _value.senderUid
                : senderUid // ignore: cast_nullable_to_non_nullable
                    as int,
        senderNickName:
            null == senderNickName
                ? _value.senderNickName
                : senderNickName // ignore: cast_nullable_to_non_nullable
                    as String,
        senderAvatar:
            freezed == senderAvatar
                ? _value.senderAvatar
                : senderAvatar // ignore: cast_nullable_to_non_nullable
                    as String?,
        remarkName:
            null == remarkName
                ? _value.remarkName
                : remarkName // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMessageUserImpl extends _FfiMessageUser {
  const _$FfiMessageUserImpl({
    required this.senderUid,
    required this.senderNickName,
    this.senderAvatar,
    required this.remarkName,
  }) : super._();

  factory _$FfiMessageUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMessageUserImplFromJson(json);

  @override
  final int senderUid;
  @override
  final String senderNickName;
  @override
  final String? senderAvatar;
  @override
  final String remarkName;

  @override
  String toString() {
    return 'FfiMessageUser(senderUid: $senderUid, senderNickName: $senderNickName, senderAvatar: $senderAvatar, remarkName: $remarkName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMessageUserImpl &&
            (identical(other.senderUid, senderUid) ||
                other.senderUid == senderUid) &&
            (identical(other.senderNickName, senderNickName) ||
                other.senderNickName == senderNickName) &&
            (identical(other.senderAvatar, senderAvatar) ||
                other.senderAvatar == senderAvatar) &&
            (identical(other.remarkName, remarkName) ||
                other.remarkName == remarkName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    senderUid,
    senderNickName,
    senderAvatar,
    remarkName,
  );

  /// Create a copy of FfiMessageUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMessageUserImplCopyWith<_$FfiMessageUserImpl> get copyWith =>
      __$$FfiMessageUserImplCopyWithImpl<_$FfiMessageUserImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMessageUserImplToJson(this);
  }
}

abstract class _FfiMessageUser extends FfiMessageUser {
  const factory _FfiMessageUser({
    required final int senderUid,
    required final String senderNickName,
    final String? senderAvatar,
    required final String remarkName,
  }) = _$FfiMessageUserImpl;
  const _FfiMessageUser._() : super._();

  factory _FfiMessageUser.fromJson(Map<String, dynamic> json) =
      _$FfiMessageUserImpl.fromJson;

  @override
  int get senderUid;
  @override
  String get senderNickName;
  @override
  String? get senderAvatar;
  @override
  String get remarkName;

  /// Create a copy of FfiMessageUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMessageUserImplCopyWith<_$FfiMessageUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
