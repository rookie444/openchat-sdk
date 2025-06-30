// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/features/auth/blocs/login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String countryCode) countryCodeChanged,
    required TResult Function(String smsCode) smsCodeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) sendSMSCode,
    required TResult Function(String countryCode, String phone, String smsCode)
    loginSubmitted,
    required TResult Function(String countryCode, String phone, String password)
    loginWithPassword,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String countryCode)? countryCodeChanged,
    TResult? Function(String smsCode)? smsCodeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? sendSMSCode,
    TResult? Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult? Function(String countryCode, String phone, String password)?
    loginWithPassword,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String countryCode)? countryCodeChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? sendSMSCode,
    TResult Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult Function(String countryCode, String phone, String password)?
    loginWithPassword,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_SmsCodeChanged value) smsCodeChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendSMSCode value) sendSMSCode,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_LoginWithPassword value) loginWithPassword,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendSMSCode value)? sendSMSCode,
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_LoginWithPassword value)? loginWithPassword,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendSMSCode value)? sendSMSCode,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_LoginWithPassword value)? loginWithPassword,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
    LoginEvent value,
    $Res Function(LoginEvent) then,
  ) = _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
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
    extends _$LoginEventCopyWithImpl<$Res, _$PhoneChangedImpl>
    implements _$$PhoneChangedImplCopyWith<$Res> {
  __$$PhoneChangedImplCopyWithImpl(
    _$PhoneChangedImpl _value,
    $Res Function(_$PhoneChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginEvent
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
    return 'LoginEvent.phoneChanged(phone: $phone)';
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

  /// Create a copy of LoginEvent
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
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) sendSMSCode,
    required TResult Function(String countryCode, String phone, String smsCode)
    loginSubmitted,
    required TResult Function(String countryCode, String phone, String password)
    loginWithPassword,
  }) {
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String countryCode)? countryCodeChanged,
    TResult? Function(String smsCode)? smsCodeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? sendSMSCode,
    TResult? Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult? Function(String countryCode, String phone, String password)?
    loginWithPassword,
  }) {
    return phoneChanged?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String countryCode)? countryCodeChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? sendSMSCode,
    TResult Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult Function(String countryCode, String phone, String password)?
    loginWithPassword,
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
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendSMSCode value) sendSMSCode,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_LoginWithPassword value) loginWithPassword,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendSMSCode value)? sendSMSCode,
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_LoginWithPassword value)? loginWithPassword,
  }) {
    return phoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendSMSCode value)? sendSMSCode,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_LoginWithPassword value)? loginWithPassword,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChanged implements LoginEvent {
  const factory _PhoneChanged(final String phone) = _$PhoneChangedImpl;

  String get phone;

  /// Create a copy of LoginEvent
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
    extends _$LoginEventCopyWithImpl<$Res, _$CountryCodeChangedImpl>
    implements _$$CountryCodeChangedImplCopyWith<$Res> {
  __$$CountryCodeChangedImplCopyWithImpl(
    _$CountryCodeChangedImpl _value,
    $Res Function(_$CountryCodeChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginEvent
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
    return 'LoginEvent.countryCodeChanged(countryCode: $countryCode)';
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

  /// Create a copy of LoginEvent
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
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) sendSMSCode,
    required TResult Function(String countryCode, String phone, String smsCode)
    loginSubmitted,
    required TResult Function(String countryCode, String phone, String password)
    loginWithPassword,
  }) {
    return countryCodeChanged(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String countryCode)? countryCodeChanged,
    TResult? Function(String smsCode)? smsCodeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? sendSMSCode,
    TResult? Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult? Function(String countryCode, String phone, String password)?
    loginWithPassword,
  }) {
    return countryCodeChanged?.call(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String countryCode)? countryCodeChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? sendSMSCode,
    TResult Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult Function(String countryCode, String phone, String password)?
    loginWithPassword,
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
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendSMSCode value) sendSMSCode,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_LoginWithPassword value) loginWithPassword,
  }) {
    return countryCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendSMSCode value)? sendSMSCode,
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_LoginWithPassword value)? loginWithPassword,
  }) {
    return countryCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendSMSCode value)? sendSMSCode,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_LoginWithPassword value)? loginWithPassword,
    required TResult orElse(),
  }) {
    if (countryCodeChanged != null) {
      return countryCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _CountryCodeChanged implements LoginEvent {
  const factory _CountryCodeChanged(final String countryCode) =
      _$CountryCodeChangedImpl;

  String get countryCode;

  /// Create a copy of LoginEvent
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
    extends _$LoginEventCopyWithImpl<$Res, _$SmsCodeChangedImpl>
    implements _$$SmsCodeChangedImplCopyWith<$Res> {
  __$$SmsCodeChangedImplCopyWithImpl(
    _$SmsCodeChangedImpl _value,
    $Res Function(_$SmsCodeChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginEvent
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
    return 'LoginEvent.smsCodeChanged(smsCode: $smsCode)';
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

  /// Create a copy of LoginEvent
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
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) sendSMSCode,
    required TResult Function(String countryCode, String phone, String smsCode)
    loginSubmitted,
    required TResult Function(String countryCode, String phone, String password)
    loginWithPassword,
  }) {
    return smsCodeChanged(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String countryCode)? countryCodeChanged,
    TResult? Function(String smsCode)? smsCodeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? sendSMSCode,
    TResult? Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult? Function(String countryCode, String phone, String password)?
    loginWithPassword,
  }) {
    return smsCodeChanged?.call(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String countryCode)? countryCodeChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? sendSMSCode,
    TResult Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult Function(String countryCode, String phone, String password)?
    loginWithPassword,
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
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendSMSCode value) sendSMSCode,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_LoginWithPassword value) loginWithPassword,
  }) {
    return smsCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendSMSCode value)? sendSMSCode,
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_LoginWithPassword value)? loginWithPassword,
  }) {
    return smsCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendSMSCode value)? sendSMSCode,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_LoginWithPassword value)? loginWithPassword,
    required TResult orElse(),
  }) {
    if (smsCodeChanged != null) {
      return smsCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _SmsCodeChanged implements LoginEvent {
  const factory _SmsCodeChanged(final String smsCode) = _$SmsCodeChangedImpl;

  String get smsCode;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SmsCodeChangedImplCopyWith<_$SmsCodeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(
    _$PasswordChangedImpl value,
    $Res Function(_$PasswordChangedImpl) then,
  ) = __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
    _$PasswordChangedImpl _value,
    $Res Function(_$PasswordChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? password = null}) {
    return _then(
      _$PasswordChangedImpl(
        null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$PasswordChangedImpl implements _PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String countryCode) countryCodeChanged,
    required TResult Function(String smsCode) smsCodeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) sendSMSCode,
    required TResult Function(String countryCode, String phone, String smsCode)
    loginSubmitted,
    required TResult Function(String countryCode, String phone, String password)
    loginWithPassword,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String countryCode)? countryCodeChanged,
    TResult? Function(String smsCode)? smsCodeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? sendSMSCode,
    TResult? Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult? Function(String countryCode, String phone, String password)?
    loginWithPassword,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String countryCode)? countryCodeChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? sendSMSCode,
    TResult Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult Function(String countryCode, String phone, String password)?
    loginWithPassword,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_SmsCodeChanged value) smsCodeChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendSMSCode value) sendSMSCode,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_LoginWithPassword value) loginWithPassword,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendSMSCode value)? sendSMSCode,
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_LoginWithPassword value)? loginWithPassword,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendSMSCode value)? sendSMSCode,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_LoginWithPassword value)? loginWithPassword,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements LoginEvent {
  const factory _PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
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
    extends _$LoginEventCopyWithImpl<$Res, _$SendSMSCodeImpl>
    implements _$$SendSMSCodeImplCopyWith<$Res> {
  __$$SendSMSCodeImplCopyWithImpl(
    _$SendSMSCodeImpl _value,
    $Res Function(_$SendSMSCodeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginEvent
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
    return 'LoginEvent.sendSMSCode(phone: $phone)';
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

  /// Create a copy of LoginEvent
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
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) sendSMSCode,
    required TResult Function(String countryCode, String phone, String smsCode)
    loginSubmitted,
    required TResult Function(String countryCode, String phone, String password)
    loginWithPassword,
  }) {
    return sendSMSCode(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String countryCode)? countryCodeChanged,
    TResult? Function(String smsCode)? smsCodeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? sendSMSCode,
    TResult? Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult? Function(String countryCode, String phone, String password)?
    loginWithPassword,
  }) {
    return sendSMSCode?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String countryCode)? countryCodeChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? sendSMSCode,
    TResult Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult Function(String countryCode, String phone, String password)?
    loginWithPassword,
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
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendSMSCode value) sendSMSCode,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_LoginWithPassword value) loginWithPassword,
  }) {
    return sendSMSCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendSMSCode value)? sendSMSCode,
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_LoginWithPassword value)? loginWithPassword,
  }) {
    return sendSMSCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendSMSCode value)? sendSMSCode,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_LoginWithPassword value)? loginWithPassword,
    required TResult orElse(),
  }) {
    if (sendSMSCode != null) {
      return sendSMSCode(this);
    }
    return orElse();
  }
}

abstract class _SendSMSCode implements LoginEvent {
  const factory _SendSMSCode(final String phone) = _$SendSMSCodeImpl;

  String get phone;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendSMSCodeImplCopyWith<_$SendSMSCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSubmittedImplCopyWith<$Res> {
  factory _$$LoginSubmittedImplCopyWith(
    _$LoginSubmittedImpl value,
    $Res Function(_$LoginSubmittedImpl) then,
  ) = __$$LoginSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String countryCode, String phone, String smsCode});
}

/// @nodoc
class __$$LoginSubmittedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginSubmittedImpl>
    implements _$$LoginSubmittedImplCopyWith<$Res> {
  __$$LoginSubmittedImplCopyWithImpl(
    _$LoginSubmittedImpl _value,
    $Res Function(_$LoginSubmittedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? phone = null,
    Object? smsCode = null,
  }) {
    return _then(
      _$LoginSubmittedImpl(
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

class _$LoginSubmittedImpl implements _LoginSubmitted {
  const _$LoginSubmittedImpl({
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
    return 'LoginEvent.loginSubmitted(countryCode: $countryCode, phone: $phone, smsCode: $smsCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSubmittedImpl &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryCode, phone, smsCode);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSubmittedImplCopyWith<_$LoginSubmittedImpl> get copyWith =>
      __$$LoginSubmittedImplCopyWithImpl<_$LoginSubmittedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String countryCode) countryCodeChanged,
    required TResult Function(String smsCode) smsCodeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) sendSMSCode,
    required TResult Function(String countryCode, String phone, String smsCode)
    loginSubmitted,
    required TResult Function(String countryCode, String phone, String password)
    loginWithPassword,
  }) {
    return loginSubmitted(countryCode, phone, smsCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String countryCode)? countryCodeChanged,
    TResult? Function(String smsCode)? smsCodeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? sendSMSCode,
    TResult? Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult? Function(String countryCode, String phone, String password)?
    loginWithPassword,
  }) {
    return loginSubmitted?.call(countryCode, phone, smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String countryCode)? countryCodeChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? sendSMSCode,
    TResult Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult Function(String countryCode, String phone, String password)?
    loginWithPassword,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(countryCode, phone, smsCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_SmsCodeChanged value) smsCodeChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendSMSCode value) sendSMSCode,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_LoginWithPassword value) loginWithPassword,
  }) {
    return loginSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendSMSCode value)? sendSMSCode,
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_LoginWithPassword value)? loginWithPassword,
  }) {
    return loginSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendSMSCode value)? sendSMSCode,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_LoginWithPassword value)? loginWithPassword,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(this);
    }
    return orElse();
  }
}

abstract class _LoginSubmitted implements LoginEvent {
  const factory _LoginSubmitted({
    required final String countryCode,
    required final String phone,
    required final String smsCode,
  }) = _$LoginSubmittedImpl;

  String get countryCode;
  String get phone;
  String get smsCode;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginSubmittedImplCopyWith<_$LoginSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginWithPasswordImplCopyWith<$Res> {
  factory _$$LoginWithPasswordImplCopyWith(
    _$LoginWithPasswordImpl value,
    $Res Function(_$LoginWithPasswordImpl) then,
  ) = __$$LoginWithPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String countryCode, String phone, String password});
}

/// @nodoc
class __$$LoginWithPasswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginWithPasswordImpl>
    implements _$$LoginWithPasswordImplCopyWith<$Res> {
  __$$LoginWithPasswordImplCopyWithImpl(
    _$LoginWithPasswordImpl _value,
    $Res Function(_$LoginWithPasswordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(
      _$LoginWithPasswordImpl(
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
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$LoginWithPasswordImpl implements _LoginWithPassword {
  const _$LoginWithPasswordImpl({
    required this.countryCode,
    required this.phone,
    required this.password,
  });

  @override
  final String countryCode;
  @override
  final String phone;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.loginWithPassword(countryCode: $countryCode, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithPasswordImpl &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryCode, phone, password);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginWithPasswordImplCopyWith<_$LoginWithPasswordImpl> get copyWith =>
      __$$LoginWithPasswordImplCopyWithImpl<_$LoginWithPasswordImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String countryCode) countryCodeChanged,
    required TResult Function(String smsCode) smsCodeChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) sendSMSCode,
    required TResult Function(String countryCode, String phone, String smsCode)
    loginSubmitted,
    required TResult Function(String countryCode, String phone, String password)
    loginWithPassword,
  }) {
    return loginWithPassword(countryCode, phone, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneChanged,
    TResult? Function(String countryCode)? countryCodeChanged,
    TResult? Function(String smsCode)? smsCodeChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String phone)? sendSMSCode,
    TResult? Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult? Function(String countryCode, String phone, String password)?
    loginWithPassword,
  }) {
    return loginWithPassword?.call(countryCode, phone, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneChanged,
    TResult Function(String countryCode)? countryCodeChanged,
    TResult Function(String smsCode)? smsCodeChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? sendSMSCode,
    TResult Function(String countryCode, String phone, String smsCode)?
    loginSubmitted,
    TResult Function(String countryCode, String phone, String password)?
    loginWithPassword,
    required TResult orElse(),
  }) {
    if (loginWithPassword != null) {
      return loginWithPassword(countryCode, phone, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_CountryCodeChanged value) countryCodeChanged,
    required TResult Function(_SmsCodeChanged value) smsCodeChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendSMSCode value) sendSMSCode,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_LoginWithPassword value) loginWithPassword,
  }) {
    return loginWithPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult? Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendSMSCode value)? sendSMSCode,
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_LoginWithPassword value)? loginWithPassword,
  }) {
    return loginWithPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_CountryCodeChanged value)? countryCodeChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendSMSCode value)? sendSMSCode,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_LoginWithPassword value)? loginWithPassword,
    required TResult orElse(),
  }) {
    if (loginWithPassword != null) {
      return loginWithPassword(this);
    }
    return orElse();
  }
}

abstract class _LoginWithPassword implements LoginEvent {
  const factory _LoginWithPassword({
    required final String countryCode,
    required final String phone,
    required final String password,
  }) = _$LoginWithPasswordImpl;

  String get countryCode;
  String get phone;
  String get password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginWithPasswordImplCopyWith<_$LoginWithPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
