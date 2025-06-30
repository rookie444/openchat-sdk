// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/features/auth/blocs/register_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String countryCode) countryCodeChanged,
    required TResult Function(String smsCode) smsCodeChanged,
    required TResult Function(String phone) sendSMSCode,
    required TResult Function(String countryCode, String phone, String smsCode)
    registerSubmitted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String countryCode)? countryCodeChanged,
    TResult? Function(String smsCode)? smsCodeChanged,
    TResult? Function(String phone)? sendSMSCode,
    TResult? Function(String countryCode, String phone, String smsCode)?
    registerSubmitted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String countryCode)? countryCodeChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function(String phone)? sendSMSCode,
    TResult Function(String countryCode, String phone, String smsCode)?
    registerSubmitted,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_SmsCodeChanged value) smsCodeChanged,
    required TResult Function(_SendSMSCode value) sendSMSCode,
    required TResult Function(_RegisterSubmitted value) registerSubmitted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult? Function(_SendSMSCode value)? sendSMSCode,
    TResult? Function(_RegisterSubmitted value)? registerSubmitted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_SendSMSCode value)? sendSMSCode,
    TResult Function(_RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
    RegisterEvent value,
    $Res Function(RegisterEvent) then,
  ) = _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PhoneChangedImplCopyWith<$Res> {
  factory _$$PhoneChangedImplCopyWith(
    _$PhoneChangedImpl value,
    $Res Function(_$PhoneChangedImpl) then,
  ) = __$$PhoneChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$PhoneChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$PhoneChangedImpl>
    implements _$$PhoneChangedImplCopyWith<$Res> {
  __$$PhoneChangedImplCopyWithImpl(
    _$PhoneChangedImpl _value,
    $Res Function(_$PhoneChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phone = null}) {
    return _then(
      _$PhoneChangedImpl(
        null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$PhoneChangedImpl implements _PhoneChanged {
  const _$PhoneChangedImpl(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'RegisterEvent.phoneChanged(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneChangedImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneChangedImplCopyWith<_$PhoneChangedImpl> get copyWith =>
      __$$PhoneChangedImplCopyWithImpl<_$PhoneChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String countryCode) countryCodeChanged,
    required TResult Function(String smsCode) smsCodeChanged,
    required TResult Function(String phone) sendSMSCode,
    required TResult Function(String countryCode, String phone, String smsCode)
    registerSubmitted,
  }) {
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String countryCode)? countryCodeChanged,
    TResult? Function(String smsCode)? smsCodeChanged,
    TResult? Function(String phone)? sendSMSCode,
    TResult? Function(String countryCode, String phone, String smsCode)?
    registerSubmitted,
  }) {
    return phoneChanged?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String countryCode)? countryCodeChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function(String phone)? sendSMSCode,
    TResult Function(String countryCode, String phone, String smsCode)?
    registerSubmitted,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_SmsCodeChanged value) smsCodeChanged,
    required TResult Function(_SendSMSCode value) sendSMSCode,
    required TResult Function(_RegisterSubmitted value) registerSubmitted,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult? Function(_SendSMSCode value)? sendSMSCode,
    TResult? Function(_RegisterSubmitted value)? registerSubmitted,
  }) {
    return phoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_SendSMSCode value)? sendSMSCode,
    TResult Function(_RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChanged implements RegisterEvent {
  const factory _PhoneChanged(final String phone) = _$PhoneChangedImpl;

  String get phone;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneChangedImplCopyWith<_$PhoneChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountryCodeChangedImplCopyWith<$Res> {
  factory _$$CountryCodeChangedImplCopyWith(
    _$CountryCodeChangedImpl value,
    $Res Function(_$CountryCodeChangedImpl) then,
  ) = __$$CountryCodeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String countryCode});
}

/// @nodoc
class __$$CountryCodeChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$CountryCodeChangedImpl>
    implements _$$CountryCodeChangedImplCopyWith<$Res> {
  __$$CountryCodeChangedImplCopyWithImpl(
    _$CountryCodeChangedImpl _value,
    $Res Function(_$CountryCodeChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? countryCode = null}) {
    return _then(
      _$CountryCodeChangedImpl(
        null == countryCode
            ? _value.countryCode
            : countryCode // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$CountryCodeChangedImpl implements _CountryCodeChanged {
  const _$CountryCodeChangedImpl(this.countryCode);

  @override
  final String countryCode;

  @override
  String toString() {
    return 'RegisterEvent.countryCodeChanged(countryCode: $countryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryCodeChangedImpl &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryCode);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryCodeChangedImplCopyWith<_$CountryCodeChangedImpl> get copyWith =>
      __$$CountryCodeChangedImplCopyWithImpl<_$CountryCodeChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String countryCode) countryCodeChanged,
    required TResult Function(String smsCode) smsCodeChanged,
    required TResult Function(String phone) sendSMSCode,
    required TResult Function(String countryCode, String phone, String smsCode)
    registerSubmitted,
  }) {
    return countryCodeChanged(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String countryCode)? countryCodeChanged,
    TResult? Function(String smsCode)? smsCodeChanged,
    TResult? Function(String phone)? sendSMSCode,
    TResult? Function(String countryCode, String phone, String smsCode)?
    registerSubmitted,
  }) {
    return countryCodeChanged?.call(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String countryCode)? countryCodeChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function(String phone)? sendSMSCode,
    TResult Function(String countryCode, String phone, String smsCode)?
    registerSubmitted,
    required TResult orElse(),
  }) {
    if (countryCodeChanged != null) {
      return countryCodeChanged(countryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_SmsCodeChanged value) smsCodeChanged,
    required TResult Function(_SendSMSCode value) sendSMSCode,
    required TResult Function(_RegisterSubmitted value) registerSubmitted,
  }) {
    return countryCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult? Function(_SendSMSCode value)? sendSMSCode,
    TResult? Function(_RegisterSubmitted value)? registerSubmitted,
  }) {
    return countryCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_SendSMSCode value)? sendSMSCode,
    TResult Function(_RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (countryCodeChanged != null) {
      return countryCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _CountryCodeChanged implements RegisterEvent {
  const factory _CountryCodeChanged(final String countryCode) =
      _$CountryCodeChangedImpl;

  String get countryCode;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryCodeChangedImplCopyWith<_$CountryCodeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SmsCodeChangedImplCopyWith<$Res> {
  factory _$$SmsCodeChangedImplCopyWith(
    _$SmsCodeChangedImpl value,
    $Res Function(_$SmsCodeChangedImpl) then,
  ) = __$$SmsCodeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String smsCode});
}

/// @nodoc
class __$$SmsCodeChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$SmsCodeChangedImpl>
    implements _$$SmsCodeChangedImplCopyWith<$Res> {
  __$$SmsCodeChangedImplCopyWithImpl(
    _$SmsCodeChangedImpl _value,
    $Res Function(_$SmsCodeChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? smsCode = null}) {
    return _then(
      _$SmsCodeChangedImpl(
        null == smsCode
            ? _value.smsCode
            : smsCode // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SmsCodeChangedImpl implements _SmsCodeChanged {
  const _$SmsCodeChangedImpl(this.smsCode);

  @override
  final String smsCode;

  @override
  String toString() {
    return 'RegisterEvent.smsCodeChanged(smsCode: $smsCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmsCodeChangedImpl &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, smsCode);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SmsCodeChangedImplCopyWith<_$SmsCodeChangedImpl> get copyWith =>
      __$$SmsCodeChangedImplCopyWithImpl<_$SmsCodeChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String countryCode) countryCodeChanged,
    required TResult Function(String smsCode) smsCodeChanged,
    required TResult Function(String phone) sendSMSCode,
    required TResult Function(String countryCode, String phone, String smsCode)
    registerSubmitted,
  }) {
    return smsCodeChanged(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String countryCode)? countryCodeChanged,
    TResult? Function(String smsCode)? smsCodeChanged,
    TResult? Function(String phone)? sendSMSCode,
    TResult? Function(String countryCode, String phone, String smsCode)?
    registerSubmitted,
  }) {
    return smsCodeChanged?.call(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String countryCode)? countryCodeChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function(String phone)? sendSMSCode,
    TResult Function(String countryCode, String phone, String smsCode)?
    registerSubmitted,
    required TResult orElse(),
  }) {
    if (smsCodeChanged != null) {
      return smsCodeChanged(smsCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_SmsCodeChanged value) smsCodeChanged,
    required TResult Function(_SendSMSCode value) sendSMSCode,
    required TResult Function(_RegisterSubmitted value) registerSubmitted,
  }) {
    return smsCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult? Function(_SendSMSCode value)? sendSMSCode,
    TResult? Function(_RegisterSubmitted value)? registerSubmitted,
  }) {
    return smsCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_SendSMSCode value)? sendSMSCode,
    TResult Function(_RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (smsCodeChanged != null) {
      return smsCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _SmsCodeChanged implements RegisterEvent {
  const factory _SmsCodeChanged(final String smsCode) = _$SmsCodeChangedImpl;

  String get smsCode;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SmsCodeChangedImplCopyWith<_$SmsCodeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendSMSCodeImplCopyWith<$Res> {
  factory _$$SendSMSCodeImplCopyWith(
    _$SendSMSCodeImpl value,
    $Res Function(_$SendSMSCodeImpl) then,
  ) = __$$SendSMSCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$SendSMSCodeImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$SendSMSCodeImpl>
    implements _$$SendSMSCodeImplCopyWith<$Res> {
  __$$SendSMSCodeImplCopyWithImpl(
    _$SendSMSCodeImpl _value,
    $Res Function(_$SendSMSCodeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phone = null}) {
    return _then(
      _$SendSMSCodeImpl(
        null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SendSMSCodeImpl implements _SendSMSCode {
  const _$SendSMSCodeImpl(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'RegisterEvent.sendSMSCode(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendSMSCodeImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendSMSCodeImplCopyWith<_$SendSMSCodeImpl> get copyWith =>
      __$$SendSMSCodeImplCopyWithImpl<_$SendSMSCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String countryCode) countryCodeChanged,
    required TResult Function(String smsCode) smsCodeChanged,
    required TResult Function(String phone) sendSMSCode,
    required TResult Function(String countryCode, String phone, String smsCode)
    registerSubmitted,
  }) {
    return sendSMSCode(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String countryCode)? countryCodeChanged,
    TResult? Function(String smsCode)? smsCodeChanged,
    TResult? Function(String phone)? sendSMSCode,
    TResult? Function(String countryCode, String phone, String smsCode)?
    registerSubmitted,
  }) {
    return sendSMSCode?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String countryCode)? countryCodeChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function(String phone)? sendSMSCode,
    TResult Function(String countryCode, String phone, String smsCode)?
    registerSubmitted,
    required TResult orElse(),
  }) {
    if (sendSMSCode != null) {
      return sendSMSCode(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_SmsCodeChanged value) smsCodeChanged,
    required TResult Function(_SendSMSCode value) sendSMSCode,
    required TResult Function(_RegisterSubmitted value) registerSubmitted,
  }) {
    return sendSMSCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult? Function(_SendSMSCode value)? sendSMSCode,
    TResult? Function(_RegisterSubmitted value)? registerSubmitted,
  }) {
    return sendSMSCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_SendSMSCode value)? sendSMSCode,
    TResult Function(_RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (sendSMSCode != null) {
      return sendSMSCode(this);
    }
    return orElse();
  }
}

abstract class _SendSMSCode implements RegisterEvent {
  const factory _SendSMSCode(final String phone) = _$SendSMSCodeImpl;

  String get phone;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendSMSCodeImplCopyWith<_$SendSMSCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterSubmittedImplCopyWith<$Res> {
  factory _$$RegisterSubmittedImplCopyWith(
    _$RegisterSubmittedImpl value,
    $Res Function(_$RegisterSubmittedImpl) then,
  ) = __$$RegisterSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String countryCode, String phone, String smsCode});
}

/// @nodoc
class __$$RegisterSubmittedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterSubmittedImpl>
    implements _$$RegisterSubmittedImplCopyWith<$Res> {
  __$$RegisterSubmittedImplCopyWithImpl(
    _$RegisterSubmittedImpl _value,
    $Res Function(_$RegisterSubmittedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? phone = null,
    Object? smsCode = null,
  }) {
    return _then(
      _$RegisterSubmittedImpl(
        countryCode:
            null == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                    as String,
        phone:
            null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String,
        smsCode:
            null == smsCode
                ? _value.smsCode
                : smsCode // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$RegisterSubmittedImpl implements _RegisterSubmitted {
  const _$RegisterSubmittedImpl({
    required this.countryCode,
    required this.phone,
    required this.smsCode,
  });

  @override
  final String countryCode;
  @override
  final String phone;
  @override
  final String smsCode;

  @override
  String toString() {
    return 'RegisterEvent.registerSubmitted(countryCode: $countryCode, phone: $phone, smsCode: $smsCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSubmittedImpl &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryCode, phone, smsCode);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSubmittedImplCopyWith<_$RegisterSubmittedImpl> get copyWith =>
      __$$RegisterSubmittedImplCopyWithImpl<_$RegisterSubmittedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String countryCode) countryCodeChanged,
    required TResult Function(String smsCode) smsCodeChanged,
    required TResult Function(String phone) sendSMSCode,
    required TResult Function(String countryCode, String phone, String smsCode)
    registerSubmitted,
  }) {
    return registerSubmitted(countryCode, phone, smsCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String countryCode)? countryCodeChanged,
    TResult? Function(String smsCode)? smsCodeChanged,
    TResult? Function(String phone)? sendSMSCode,
    TResult? Function(String countryCode, String phone, String smsCode)?
    registerSubmitted,
  }) {
    return registerSubmitted?.call(countryCode, phone, smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String countryCode)? countryCodeChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function(String phone)? sendSMSCode,
    TResult Function(String countryCode, String phone, String smsCode)?
    registerSubmitted,
    required TResult orElse(),
  }) {
    if (registerSubmitted != null) {
      return registerSubmitted(countryCode, phone, smsCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_SmsCodeChanged value) smsCodeChanged,
    required TResult Function(_SendSMSCode value) sendSMSCode,
    required TResult Function(_RegisterSubmitted value) registerSubmitted,
  }) {
    return registerSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult? Function(_SendSMSCode value)? sendSMSCode,
    TResult? Function(_RegisterSubmitted value)? registerSubmitted,
  }) {
    return registerSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_SendSMSCode value)? sendSMSCode,
    TResult Function(_RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (registerSubmitted != null) {
      return registerSubmitted(this);
    }
    return orElse();
  }
}

abstract class _RegisterSubmitted implements RegisterEvent {
  const factory _RegisterSubmitted({
    required final String countryCode,
    required final String phone,
    required final String smsCode,
  }) = _$RegisterSubmittedImpl;

  String get countryCode;
  String get phone;
  String get smsCode;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterSubmittedImplCopyWith<_$RegisterSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
