// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiMessageModel _$FfiMessageModelFromJson(Map<String, dynamic> json) {
  return _FfiMessageModel.fromJson(json);
}

/// @nodoc
mixin _$FfiMessageModel {
  FfiCommonMessageModel get common => throw _privateConstructorUsedError;
  String? get contentObj => throw _privateConstructorUsedError;
  FfiMessageUser get senderUser => throw _privateConstructorUsedError;
  FfiReferenceObj? get refObj => throw _privateConstructorUsedError;
  bool get isSendByMe => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  FfiMsgStatus get status => throw _privateConstructorUsedError;

  /// Serializes this FfiMessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiMessageModelCopyWith<FfiMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiMessageModelCopyWith<$Res> {
  factory $FfiMessageModelCopyWith(
    FfiMessageModel value,
    $Res Function(FfiMessageModel) then,
  ) = _$FfiMessageModelCopyWithImpl<$Res, FfiMessageModel>;
  @useResult
  $Res call({
    FfiCommonMessageModel common,
    String? contentObj,
    FfiMessageUser senderUser,
    FfiReferenceObj? refObj,
    bool isSendByMe,
    bool isRead,
    FfiMsgStatus status,
  });

  $FfiCommonMessageModelCopyWith<$Res> get common;
  $FfiMessageUserCopyWith<$Res> get senderUser;
  $FfiReferenceObjCopyWith<$Res>? get refObj;
}

/// @nodoc
class _$FfiMessageModelCopyWithImpl<$Res, $Val extends FfiMessageModel>
    implements $FfiMessageModelCopyWith<$Res> {
  _$FfiMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? contentObj = freezed,
    Object? senderUser = null,
    Object? refObj = freezed,
    Object? isSendByMe = null,
    Object? isRead = null,
    Object? status = null,
  }) {
    return _then(
      _value.copyWith(
            common:
                null == common
                    ? _value.common
                    : common // ignore: cast_nullable_to_non_nullable
                        as FfiCommonMessageModel,
            contentObj:
                freezed == contentObj
                    ? _value.contentObj
                    : contentObj // ignore: cast_nullable_to_non_nullable
                        as String?,
            senderUser:
                null == senderUser
                    ? _value.senderUser
                    : senderUser // ignore: cast_nullable_to_non_nullable
                        as FfiMessageUser,
            refObj:
                freezed == refObj
                    ? _value.refObj
                    : refObj // ignore: cast_nullable_to_non_nullable
                        as FfiReferenceObj?,
            isSendByMe:
                null == isSendByMe
                    ? _value.isSendByMe
                    : isSendByMe // ignore: cast_nullable_to_non_nullable
                        as bool,
            isRead:
                null == isRead
                    ? _value.isRead
                    : isRead // ignore: cast_nullable_to_non_nullable
                        as bool,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as FfiMsgStatus,
          )
          as $Val,
    );
  }

  /// Create a copy of FfiMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiCommonMessageModelCopyWith<$Res> get common {
    return $FfiCommonMessageModelCopyWith<$Res>(_value.common, (value) {
      return _then(_value.copyWith(common: value) as $Val);
    });
  }

  /// Create a copy of FfiMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiMessageUserCopyWith<$Res> get senderUser {
    return $FfiMessageUserCopyWith<$Res>(_value.senderUser, (value) {
      return _then(_value.copyWith(senderUser: value) as $Val);
    });
  }

  /// Create a copy of FfiMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiReferenceObjCopyWith<$Res>? get refObj {
    if (_value.refObj == null) {
      return null;
    }

    return $FfiReferenceObjCopyWith<$Res>(_value.refObj!, (value) {
      return _then(_value.copyWith(refObj: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FfiMessageModelImplCopyWith<$Res>
    implements $FfiMessageModelCopyWith<$Res> {
  factory _$$FfiMessageModelImplCopyWith(
    _$FfiMessageModelImpl value,
    $Res Function(_$FfiMessageModelImpl) then,
  ) = __$$FfiMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    FfiCommonMessageModel common,
    String? contentObj,
    FfiMessageUser senderUser,
    FfiReferenceObj? refObj,
    bool isSendByMe,
    bool isRead,
    FfiMsgStatus status,
  });

  @override
  $FfiCommonMessageModelCopyWith<$Res> get common;
  @override
  $FfiMessageUserCopyWith<$Res> get senderUser;
  @override
  $FfiReferenceObjCopyWith<$Res>? get refObj;
}

/// @nodoc
class __$$FfiMessageModelImplCopyWithImpl<$Res>
    extends _$FfiMessageModelCopyWithImpl<$Res, _$FfiMessageModelImpl>
    implements _$$FfiMessageModelImplCopyWith<$Res> {
  __$$FfiMessageModelImplCopyWithImpl(
    _$FfiMessageModelImpl _value,
    $Res Function(_$FfiMessageModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? contentObj = freezed,
    Object? senderUser = null,
    Object? refObj = freezed,
    Object? isSendByMe = null,
    Object? isRead = null,
    Object? status = null,
  }) {
    return _then(
      _$FfiMessageModelImpl(
        common:
            null == common
                ? _value.common
                : common // ignore: cast_nullable_to_non_nullable
                    as FfiCommonMessageModel,
        contentObj:
            freezed == contentObj
                ? _value.contentObj
                : contentObj // ignore: cast_nullable_to_non_nullable
                    as String?,
        senderUser:
            null == senderUser
                ? _value.senderUser
                : senderUser // ignore: cast_nullable_to_non_nullable
                    as FfiMessageUser,
        refObj:
            freezed == refObj
                ? _value.refObj
                : refObj // ignore: cast_nullable_to_non_nullable
                    as FfiReferenceObj?,
        isSendByMe:
            null == isSendByMe
                ? _value.isSendByMe
                : isSendByMe // ignore: cast_nullable_to_non_nullable
                    as bool,
        isRead:
            null == isRead
                ? _value.isRead
                : isRead // ignore: cast_nullable_to_non_nullable
                    as bool,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as FfiMsgStatus,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMessageModelImpl extends _FfiMessageModel {
  const _$FfiMessageModelImpl({
    required this.common,
    this.contentObj,
    required this.senderUser,
    this.refObj,
    required this.isSendByMe,
    required this.isRead,
    required this.status,
  }) : super._();

  factory _$FfiMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMessageModelImplFromJson(json);

  @override
  final FfiCommonMessageModel common;
  @override
  final String? contentObj;
  @override
  final FfiMessageUser senderUser;
  @override
  final FfiReferenceObj? refObj;
  @override
  final bool isSendByMe;
  @override
  final bool isRead;
  @override
  final FfiMsgStatus status;

  @override
  String toString() {
    return 'FfiMessageModel(common: $common, contentObj: $contentObj, senderUser: $senderUser, refObj: $refObj, isSendByMe: $isSendByMe, isRead: $isRead, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMessageModelImpl &&
            (identical(other.common, common) || other.common == common) &&
            (identical(other.contentObj, contentObj) ||
                other.contentObj == contentObj) &&
            (identical(other.senderUser, senderUser) ||
                other.senderUser == senderUser) &&
            (identical(other.refObj, refObj) || other.refObj == refObj) &&
            (identical(other.isSendByMe, isSendByMe) ||
                other.isSendByMe == isSendByMe) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    common,
    contentObj,
    senderUser,
    refObj,
    isSendByMe,
    isRead,
    status,
  );

  /// Create a copy of FfiMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMessageModelImplCopyWith<_$FfiMessageModelImpl> get copyWith =>
      __$$FfiMessageModelImplCopyWithImpl<_$FfiMessageModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMessageModelImplToJson(this);
  }
}

abstract class _FfiMessageModel extends FfiMessageModel {
  const factory _FfiMessageModel({
    required final FfiCommonMessageModel common,
    final String? contentObj,
    required final FfiMessageUser senderUser,
    final FfiReferenceObj? refObj,
    required final bool isSendByMe,
    required final bool isRead,
    required final FfiMsgStatus status,
  }) = _$FfiMessageModelImpl;
  const _FfiMessageModel._() : super._();

  factory _FfiMessageModel.fromJson(Map<String, dynamic> json) =
      _$FfiMessageModelImpl.fromJson;

  @override
  FfiCommonMessageModel get common;
  @override
  String? get contentObj;
  @override
  FfiMessageUser get senderUser;
  @override
  FfiReferenceObj? get refObj;
  @override
  bool get isSendByMe;
  @override
  bool get isRead;
  @override
  FfiMsgStatus get status;

  /// Create a copy of FfiMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMessageModelImplCopyWith<_$FfiMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
