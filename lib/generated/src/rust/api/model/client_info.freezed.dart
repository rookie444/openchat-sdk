// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/client_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FfiClientInfo {
  String get sessionId => throw _privateConstructorUsedError;
  int get appVer => throw _privateConstructorUsedError;
  int get packageCode => throw _privateConstructorUsedError;
  int get plat => throw _privateConstructorUsedError;
  int get language => throw _privateConstructorUsedError;
  String get sysMac => throw _privateConstructorUsedError;
  String get sysModel => throw _privateConstructorUsedError;

  /// Create a copy of FfiClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiClientInfoCopyWith<FfiClientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiClientInfoCopyWith<$Res> {
  factory $FfiClientInfoCopyWith(
    FfiClientInfo value,
    $Res Function(FfiClientInfo) then,
  ) = _$FfiClientInfoCopyWithImpl<$Res, FfiClientInfo>;
  @useResult
  $Res call({
    String sessionId,
    int appVer,
    int packageCode,
    int plat,
    int language,
    String sysMac,
    String sysModel,
  });
}

/// @nodoc
class _$FfiClientInfoCopyWithImpl<$Res, $Val extends FfiClientInfo>
    implements $FfiClientInfoCopyWith<$Res> {
  _$FfiClientInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? appVer = null,
    Object? packageCode = null,
    Object? plat = null,
    Object? language = null,
    Object? sysMac = null,
    Object? sysModel = null,
  }) {
    return _then(
      _value.copyWith(
            sessionId:
                null == sessionId
                    ? _value.sessionId
                    : sessionId // ignore: cast_nullable_to_non_nullable
                        as String,
            appVer:
                null == appVer
                    ? _value.appVer
                    : appVer // ignore: cast_nullable_to_non_nullable
                        as int,
            packageCode:
                null == packageCode
                    ? _value.packageCode
                    : packageCode // ignore: cast_nullable_to_non_nullable
                        as int,
            plat:
                null == plat
                    ? _value.plat
                    : plat // ignore: cast_nullable_to_non_nullable
                        as int,
            language:
                null == language
                    ? _value.language
                    : language // ignore: cast_nullable_to_non_nullable
                        as int,
            sysMac:
                null == sysMac
                    ? _value.sysMac
                    : sysMac // ignore: cast_nullable_to_non_nullable
                        as String,
            sysModel:
                null == sysModel
                    ? _value.sysModel
                    : sysModel // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiClientInfoImplCopyWith<$Res>
    implements $FfiClientInfoCopyWith<$Res> {
  factory _$$FfiClientInfoImplCopyWith(
    _$FfiClientInfoImpl value,
    $Res Function(_$FfiClientInfoImpl) then,
  ) = __$$FfiClientInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sessionId,
    int appVer,
    int packageCode,
    int plat,
    int language,
    String sysMac,
    String sysModel,
  });
}

/// @nodoc
class __$$FfiClientInfoImplCopyWithImpl<$Res>
    extends _$FfiClientInfoCopyWithImpl<$Res, _$FfiClientInfoImpl>
    implements _$$FfiClientInfoImplCopyWith<$Res> {
  __$$FfiClientInfoImplCopyWithImpl(
    _$FfiClientInfoImpl _value,
    $Res Function(_$FfiClientInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? appVer = null,
    Object? packageCode = null,
    Object? plat = null,
    Object? language = null,
    Object? sysMac = null,
    Object? sysModel = null,
  }) {
    return _then(
      _$FfiClientInfoImpl(
        sessionId:
            null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                    as String,
        appVer:
            null == appVer
                ? _value.appVer
                : appVer // ignore: cast_nullable_to_non_nullable
                    as int,
        packageCode:
            null == packageCode
                ? _value.packageCode
                : packageCode // ignore: cast_nullable_to_non_nullable
                    as int,
        plat:
            null == plat
                ? _value.plat
                : plat // ignore: cast_nullable_to_non_nullable
                    as int,
        language:
            null == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                    as int,
        sysMac:
            null == sysMac
                ? _value.sysMac
                : sysMac // ignore: cast_nullable_to_non_nullable
                    as String,
        sysModel:
            null == sysModel
                ? _value.sysModel
                : sysModel // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$FfiClientInfoImpl implements _FfiClientInfo {
  const _$FfiClientInfoImpl({
    required this.sessionId,
    required this.appVer,
    required this.packageCode,
    required this.plat,
    required this.language,
    required this.sysMac,
    required this.sysModel,
  });

  @override
  final String sessionId;
  @override
  final int appVer;
  @override
  final int packageCode;
  @override
  final int plat;
  @override
  final int language;
  @override
  final String sysMac;
  @override
  final String sysModel;

  @override
  String toString() {
    return 'FfiClientInfo(sessionId: $sessionId, appVer: $appVer, packageCode: $packageCode, plat: $plat, language: $language, sysMac: $sysMac, sysModel: $sysModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiClientInfoImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.appVer, appVer) || other.appVer == appVer) &&
            (identical(other.packageCode, packageCode) ||
                other.packageCode == packageCode) &&
            (identical(other.plat, plat) || other.plat == plat) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.sysMac, sysMac) || other.sysMac == sysMac) &&
            (identical(other.sysModel, sysModel) ||
                other.sysModel == sysModel));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    sessionId,
    appVer,
    packageCode,
    plat,
    language,
    sysMac,
    sysModel,
  );

  /// Create a copy of FfiClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiClientInfoImplCopyWith<_$FfiClientInfoImpl> get copyWith =>
      __$$FfiClientInfoImplCopyWithImpl<_$FfiClientInfoImpl>(this, _$identity);
}

abstract class _FfiClientInfo implements FfiClientInfo {
  const factory _FfiClientInfo({
    required final String sessionId,
    required final int appVer,
    required final int packageCode,
    required final int plat,
    required final int language,
    required final String sysMac,
    required final String sysModel,
  }) = _$FfiClientInfoImpl;

  @override
  String get sessionId;
  @override
  int get appVer;
  @override
  int get packageCode;
  @override
  int get plat;
  @override
  int get language;
  @override
  String get sysMac;
  @override
  String get sysModel;

  /// Create a copy of FfiClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiClientInfoImplCopyWith<_$FfiClientInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
