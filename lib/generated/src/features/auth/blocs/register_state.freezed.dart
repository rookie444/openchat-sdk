// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/features/auth/blocs/register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RegisterState {
  String get phone => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  bool get isPhoneValid => throw _privateConstructorUsedError;
  bool get isSmsCodeValid => throw _privateConstructorUsedError;
  bool get hasRequestedSmsCode => throw _privateConstructorUsedError;
  RegisterStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
    RegisterState value,
    $Res Function(RegisterState) then,
  ) = _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call({
    String phone,
    String countryCode,
    String smsCode,
    bool isPhoneValid,
    bool isSmsCodeValid,
    bool hasRequestedSmsCode,
    RegisterStatus status,
    String? errorMessage,
  });
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? countryCode = null,
    Object? smsCode = null,
    Object? isPhoneValid = null,
    Object? isSmsCodeValid = null,
    Object? hasRequestedSmsCode = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            phone:
                null == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as String,
            countryCode:
                null == countryCode
                    ? _value.countryCode
                    : countryCode // ignore: cast_nullable_to_non_nullable
                        as String,
            smsCode:
                null == smsCode
                    ? _value.smsCode
                    : smsCode // ignore: cast_nullable_to_non_nullable
                        as String,
            isPhoneValid:
                null == isPhoneValid
                    ? _value.isPhoneValid
                    : isPhoneValid // ignore: cast_nullable_to_non_nullable
                        as bool,
            isSmsCodeValid:
                null == isSmsCodeValid
                    ? _value.isSmsCodeValid
                    : isSmsCodeValid // ignore: cast_nullable_to_non_nullable
                        as bool,
            hasRequestedSmsCode:
                null == hasRequestedSmsCode
                    ? _value.hasRequestedSmsCode
                    : hasRequestedSmsCode // ignore: cast_nullable_to_non_nullable
                        as bool,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as RegisterStatus,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
    _$RegisterStateImpl value,
    $Res Function(_$RegisterStateImpl) then,
  ) = __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String phone,
    String countryCode,
    String smsCode,
    bool isPhoneValid,
    bool isSmsCodeValid,
    bool hasRequestedSmsCode,
    RegisterStatus status,
    String? errorMessage,
  });
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
    _$RegisterStateImpl _value,
    $Res Function(_$RegisterStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? countryCode = null,
    Object? smsCode = null,
    Object? isPhoneValid = null,
    Object? isSmsCodeValid = null,
    Object? hasRequestedSmsCode = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$RegisterStateImpl(
        phone:
            null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String,
        countryCode:
            null == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                    as String,
        smsCode:
            null == smsCode
                ? _value.smsCode
                : smsCode // ignore: cast_nullable_to_non_nullable
                    as String,
        isPhoneValid:
            null == isPhoneValid
                ? _value.isPhoneValid
                : isPhoneValid // ignore: cast_nullable_to_non_nullable
                    as bool,
        isSmsCodeValid:
            null == isSmsCodeValid
                ? _value.isSmsCodeValid
                : isSmsCodeValid // ignore: cast_nullable_to_non_nullable
                    as bool,
        hasRequestedSmsCode:
            null == hasRequestedSmsCode
                ? _value.hasRequestedSmsCode
                : hasRequestedSmsCode // ignore: cast_nullable_to_non_nullable
                    as bool,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as RegisterStatus,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$RegisterStateImpl implements _RegisterState {
  const _$RegisterStateImpl({
    this.phone = '',
    this.countryCode = '86',
    this.smsCode = '',
    this.isPhoneValid = false,
    this.isSmsCodeValid = false,
    this.hasRequestedSmsCode = false,
    this.status = RegisterStatus.initial,
    this.errorMessage,
  });

  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String countryCode;
  @override
  @JsonKey()
  final String smsCode;
  @override
  @JsonKey()
  final bool isPhoneValid;
  @override
  @JsonKey()
  final bool isSmsCodeValid;
  @override
  @JsonKey()
  final bool hasRequestedSmsCode;
  @override
  @JsonKey()
  final RegisterStatus status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RegisterState(phone: $phone, countryCode: $countryCode, smsCode: $smsCode, isPhoneValid: $isPhoneValid, isSmsCodeValid: $isSmsCodeValid, hasRequestedSmsCode: $hasRequestedSmsCode, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.isPhoneValid, isPhoneValid) ||
                other.isPhoneValid == isPhoneValid) &&
            (identical(other.isSmsCodeValid, isSmsCodeValid) ||
                other.isSmsCodeValid == isSmsCodeValid) &&
            (identical(other.hasRequestedSmsCode, hasRequestedSmsCode) ||
                other.hasRequestedSmsCode == hasRequestedSmsCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    phone,
    countryCode,
    smsCode,
    isPhoneValid,
    isSmsCodeValid,
    hasRequestedSmsCode,
    status,
    errorMessage,
  );

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState({
    final String phone,
    final String countryCode,
    final String smsCode,
    final bool isPhoneValid,
    final bool isSmsCodeValid,
    final bool hasRequestedSmsCode,
    final RegisterStatus status,
    final String? errorMessage,
  }) = _$RegisterStateImpl;

  @override
  String get phone;
  @override
  String get countryCode;
  @override
  String get smsCode;
  @override
  bool get isPhoneValid;
  @override
  bool get isSmsCodeValid;
  @override
  bool get hasRequestedSmsCode;
  @override
  RegisterStatus get status;
  @override
  String? get errorMessage;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
