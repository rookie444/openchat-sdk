// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/features/auth/blocs/login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )
    initial,
    required TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )
    smsCodeSent,
    required TResult Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )
    submitting,
    required TResult Function() success,
    required TResult Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )
    failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )?
    initial,
    TResult? Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )?
    smsCodeSent,
    TResult? Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    submitting,
    TResult? Function()? success,
    TResult? Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )?
    initial,
    TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )?
    smsCodeSent,
    TResult Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    submitting,
    TResult Function()? success,
    TResult Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SmsCodeSent value) smsCodeSent,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SmsCodeSent value)? smsCodeSent,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SmsCodeSent value)? smsCodeSent,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
    LoginState value,
    $Res Function(LoginState) then,
  ) = _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String phone,
    String countryCode,
    String smsCode,
    String password,
    bool isPhoneValid,
    bool isSmsCodeValid,
    bool isPasswordValid,
  });
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? countryCode = null,
    Object? smsCode = null,
    Object? password = null,
    Object? isPhoneValid = null,
    Object? isSmsCodeValid = null,
    Object? isPasswordValid = null,
  }) {
    return _then(
      _$InitialImpl(
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
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
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
        isPasswordValid:
            null == isPasswordValid
                ? _value.isPasswordValid
                : isPasswordValid // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({
    this.phone = '',
    this.countryCode = '86',
    this.smsCode = '',
    this.password = '',
    this.isPhoneValid = false,
    this.isSmsCodeValid = false,
    this.isPasswordValid = false,
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
  final String password;
  @override
  @JsonKey()
  final bool isPhoneValid;
  @override
  @JsonKey()
  final bool isSmsCodeValid;
  @override
  @JsonKey()
  final bool isPasswordValid;

  @override
  String toString() {
    return 'LoginState.initial(phone: $phone, countryCode: $countryCode, smsCode: $smsCode, password: $password, isPhoneValid: $isPhoneValid, isSmsCodeValid: $isSmsCodeValid, isPasswordValid: $isPasswordValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isPhoneValid, isPhoneValid) ||
                other.isPhoneValid == isPhoneValid) &&
            (identical(other.isSmsCodeValid, isSmsCodeValid) ||
                other.isSmsCodeValid == isSmsCodeValid) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                other.isPasswordValid == isPasswordValid));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    phone,
    countryCode,
    smsCode,
    password,
    isPhoneValid,
    isSmsCodeValid,
    isPasswordValid,
  );

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )
    initial,
    required TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )
    smsCodeSent,
    required TResult Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )
    submitting,
    required TResult Function() success,
    required TResult Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )
    failure,
  }) {
    return initial(
      phone,
      countryCode,
      smsCode,
      password,
      isPhoneValid,
      isSmsCodeValid,
      isPasswordValid,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )?
    initial,
    TResult? Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )?
    smsCodeSent,
    TResult? Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    submitting,
    TResult? Function()? success,
    TResult? Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    failure,
  }) {
    return initial?.call(
      phone,
      countryCode,
      smsCode,
      password,
      isPhoneValid,
      isSmsCodeValid,
      isPasswordValid,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )?
    initial,
    TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )?
    smsCodeSent,
    TResult Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    submitting,
    TResult Function()? success,
    TResult Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
        phone,
        countryCode,
        smsCode,
        password,
        isPhoneValid,
        isSmsCodeValid,
        isPasswordValid,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SmsCodeSent value) smsCodeSent,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SmsCodeSent value)? smsCodeSent,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SmsCodeSent value)? smsCodeSent,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial({
    final String phone,
    final String countryCode,
    final String smsCode,
    final String password,
    final bool isPhoneValid,
    final bool isSmsCodeValid,
    final bool isPasswordValid,
  }) = _$InitialImpl;

  String get phone;
  String get countryCode;
  String get smsCode;
  String get password;
  bool get isPhoneValid;
  bool get isSmsCodeValid;
  bool get isPasswordValid;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SmsCodeSentImplCopyWith<$Res> {
  factory _$$SmsCodeSentImplCopyWith(
    _$SmsCodeSentImpl value,
    $Res Function(_$SmsCodeSentImpl) then,
  ) = __$$SmsCodeSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String phone,
    String countryCode,
    String smsCode,
    bool isSmsCodeValid,
    bool isPhoneValid,
  });
}

/// @nodoc
class __$$SmsCodeSentImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SmsCodeSentImpl>
    implements _$$SmsCodeSentImplCopyWith<$Res> {
  __$$SmsCodeSentImplCopyWithImpl(
    _$SmsCodeSentImpl _value,
    $Res Function(_$SmsCodeSentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? countryCode = null,
    Object? smsCode = null,
    Object? isSmsCodeValid = null,
    Object? isPhoneValid = null,
  }) {
    return _then(
      _$SmsCodeSentImpl(
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
        isSmsCodeValid:
            null == isSmsCodeValid
                ? _value.isSmsCodeValid
                : isSmsCodeValid // ignore: cast_nullable_to_non_nullable
                    as bool,
        isPhoneValid:
            null == isPhoneValid
                ? _value.isPhoneValid
                : isPhoneValid // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$SmsCodeSentImpl implements _SmsCodeSent {
  const _$SmsCodeSentImpl({
    required this.phone,
    required this.countryCode,
    this.smsCode = '',
    this.isSmsCodeValid = false,
    this.isPhoneValid = true,
  });

  @override
  final String phone;
  @override
  final String countryCode;
  @override
  @JsonKey()
  final String smsCode;
  @override
  @JsonKey()
  final bool isSmsCodeValid;
  @override
  @JsonKey()
  final bool isPhoneValid;

  @override
  String toString() {
    return 'LoginState.smsCodeSent(phone: $phone, countryCode: $countryCode, smsCode: $smsCode, isSmsCodeValid: $isSmsCodeValid, isPhoneValid: $isPhoneValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmsCodeSentImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.isSmsCodeValid, isSmsCodeValid) ||
                other.isSmsCodeValid == isSmsCodeValid) &&
            (identical(other.isPhoneValid, isPhoneValid) ||
                other.isPhoneValid == isPhoneValid));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    phone,
    countryCode,
    smsCode,
    isSmsCodeValid,
    isPhoneValid,
  );

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SmsCodeSentImplCopyWith<_$SmsCodeSentImpl> get copyWith =>
      __$$SmsCodeSentImplCopyWithImpl<_$SmsCodeSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )
    initial,
    required TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )
    smsCodeSent,
    required TResult Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )
    submitting,
    required TResult Function() success,
    required TResult Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )
    failure,
  }) {
    return smsCodeSent(
      phone,
      countryCode,
      smsCode,
      isSmsCodeValid,
      isPhoneValid,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )?
    initial,
    TResult? Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )?
    smsCodeSent,
    TResult? Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    submitting,
    TResult? Function()? success,
    TResult? Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    failure,
  }) {
    return smsCodeSent?.call(
      phone,
      countryCode,
      smsCode,
      isSmsCodeValid,
      isPhoneValid,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )?
    initial,
    TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )?
    smsCodeSent,
    TResult Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    submitting,
    TResult Function()? success,
    TResult Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    failure,
    required TResult orElse(),
  }) {
    if (smsCodeSent != null) {
      return smsCodeSent(
        phone,
        countryCode,
        smsCode,
        isSmsCodeValid,
        isPhoneValid,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SmsCodeSent value) smsCodeSent,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return smsCodeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SmsCodeSent value)? smsCodeSent,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return smsCodeSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SmsCodeSent value)? smsCodeSent,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (smsCodeSent != null) {
      return smsCodeSent(this);
    }
    return orElse();
  }
}

abstract class _SmsCodeSent implements LoginState {
  const factory _SmsCodeSent({
    required final String phone,
    required final String countryCode,
    final String smsCode,
    final bool isSmsCodeValid,
    final bool isPhoneValid,
  }) = _$SmsCodeSentImpl;

  String get phone;
  String get countryCode;
  String get smsCode;
  bool get isSmsCodeValid;
  bool get isPhoneValid;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SmsCodeSentImplCopyWith<_$SmsCodeSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmittingImplCopyWith<$Res> {
  factory _$$SubmittingImplCopyWith(
    _$SubmittingImpl value,
    $Res Function(_$SubmittingImpl) then,
  ) = __$$SubmittingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String phone,
    String countryCode,
    String? smsCode,
    String? password,
    bool isPhoneValid,
    bool? isSmsCodeValid,
    bool? isPasswordValid,
  });
}

/// @nodoc
class __$$SubmittingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SubmittingImpl>
    implements _$$SubmittingImplCopyWith<$Res> {
  __$$SubmittingImplCopyWithImpl(
    _$SubmittingImpl _value,
    $Res Function(_$SubmittingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? countryCode = null,
    Object? smsCode = freezed,
    Object? password = freezed,
    Object? isPhoneValid = null,
    Object? isSmsCodeValid = freezed,
    Object? isPasswordValid = freezed,
  }) {
    return _then(
      _$SubmittingImpl(
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
            freezed == smsCode
                ? _value.smsCode
                : smsCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        password:
            freezed == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String?,
        isPhoneValid:
            null == isPhoneValid
                ? _value.isPhoneValid
                : isPhoneValid // ignore: cast_nullable_to_non_nullable
                    as bool,
        isSmsCodeValid:
            freezed == isSmsCodeValid
                ? _value.isSmsCodeValid
                : isSmsCodeValid // ignore: cast_nullable_to_non_nullable
                    as bool?,
        isPasswordValid:
            freezed == isPasswordValid
                ? _value.isPasswordValid
                : isPasswordValid // ignore: cast_nullable_to_non_nullable
                    as bool?,
      ),
    );
  }
}

/// @nodoc

class _$SubmittingImpl implements _Submitting {
  const _$SubmittingImpl({
    required this.phone,
    required this.countryCode,
    this.smsCode,
    this.password,
    this.isPhoneValid = true,
    this.isSmsCodeValid,
    this.isPasswordValid,
  });

  @override
  final String phone;
  @override
  final String countryCode;
  @override
  final String? smsCode;
  @override
  final String? password;
  @override
  @JsonKey()
  final bool isPhoneValid;
  @override
  final bool? isSmsCodeValid;
  @override
  final bool? isPasswordValid;

  @override
  String toString() {
    return 'LoginState.submitting(phone: $phone, countryCode: $countryCode, smsCode: $smsCode, password: $password, isPhoneValid: $isPhoneValid, isSmsCodeValid: $isSmsCodeValid, isPasswordValid: $isPasswordValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmittingImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isPhoneValid, isPhoneValid) ||
                other.isPhoneValid == isPhoneValid) &&
            (identical(other.isSmsCodeValid, isSmsCodeValid) ||
                other.isSmsCodeValid == isSmsCodeValid) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                other.isPasswordValid == isPasswordValid));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    phone,
    countryCode,
    smsCode,
    password,
    isPhoneValid,
    isSmsCodeValid,
    isPasswordValid,
  );

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmittingImplCopyWith<_$SubmittingImpl> get copyWith =>
      __$$SubmittingImplCopyWithImpl<_$SubmittingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )
    initial,
    required TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )
    smsCodeSent,
    required TResult Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )
    submitting,
    required TResult Function() success,
    required TResult Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )
    failure,
  }) {
    return submitting(
      phone,
      countryCode,
      smsCode,
      password,
      isPhoneValid,
      isSmsCodeValid,
      isPasswordValid,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )?
    initial,
    TResult? Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )?
    smsCodeSent,
    TResult? Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    submitting,
    TResult? Function()? success,
    TResult? Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    failure,
  }) {
    return submitting?.call(
      phone,
      countryCode,
      smsCode,
      password,
      isPhoneValid,
      isSmsCodeValid,
      isPasswordValid,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )?
    initial,
    TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )?
    smsCodeSent,
    TResult Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    submitting,
    TResult Function()? success,
    TResult Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    failure,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(
        phone,
        countryCode,
        smsCode,
        password,
        isPhoneValid,
        isSmsCodeValid,
        isPasswordValid,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SmsCodeSent value) smsCodeSent,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SmsCodeSent value)? smsCodeSent,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return submitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SmsCodeSent value)? smsCodeSent,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class _Submitting implements LoginState {
  const factory _Submitting({
    required final String phone,
    required final String countryCode,
    final String? smsCode,
    final String? password,
    final bool isPhoneValid,
    final bool? isSmsCodeValid,
    final bool? isPasswordValid,
  }) = _$SubmittingImpl;

  String get phone;
  String get countryCode;
  String? get smsCode;
  String? get password;
  bool get isPhoneValid;
  bool? get isSmsCodeValid;
  bool? get isPasswordValid;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmittingImplCopyWith<_$SubmittingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )
    initial,
    required TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )
    smsCodeSent,
    required TResult Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )
    submitting,
    required TResult Function() success,
    required TResult Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )
    failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )?
    initial,
    TResult? Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )?
    smsCodeSent,
    TResult? Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    submitting,
    TResult? Function()? success,
    TResult? Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )?
    initial,
    TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )?
    smsCodeSent,
    TResult Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    submitting,
    TResult Function()? success,
    TResult Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SmsCodeSent value) smsCodeSent,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SmsCodeSent value)? smsCodeSent,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SmsCodeSent value)? smsCodeSent,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoginState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
    _$FailureImpl value,
    $Res Function(_$FailureImpl) then,
  ) = __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String errorMessage,
    String? phone,
    String? countryCode,
    String? smsCode,
    String? password,
    bool? isPhoneValid,
    bool? isSmsCodeValid,
    bool? isPasswordValid,
  });
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
    _$FailureImpl _value,
    $Res Function(_$FailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? phone = freezed,
    Object? countryCode = freezed,
    Object? smsCode = freezed,
    Object? password = freezed,
    Object? isPhoneValid = freezed,
    Object? isSmsCodeValid = freezed,
    Object? isPasswordValid = freezed,
  }) {
    return _then(
      _$FailureImpl(
        errorMessage:
            null == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String,
        phone:
            freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String?,
        countryCode:
            freezed == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        smsCode:
            freezed == smsCode
                ? _value.smsCode
                : smsCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        password:
            freezed == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String?,
        isPhoneValid:
            freezed == isPhoneValid
                ? _value.isPhoneValid
                : isPhoneValid // ignore: cast_nullable_to_non_nullable
                    as bool?,
        isSmsCodeValid:
            freezed == isSmsCodeValid
                ? _value.isSmsCodeValid
                : isSmsCodeValid // ignore: cast_nullable_to_non_nullable
                    as bool?,
        isPasswordValid:
            freezed == isPasswordValid
                ? _value.isPasswordValid
                : isPasswordValid // ignore: cast_nullable_to_non_nullable
                    as bool?,
      ),
    );
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({
    required this.errorMessage,
    this.phone,
    this.countryCode,
    this.smsCode,
    this.password,
    this.isPhoneValid,
    this.isSmsCodeValid,
    this.isPasswordValid,
  });

  @override
  final String errorMessage;
  @override
  final String? phone;
  @override
  final String? countryCode;
  @override
  final String? smsCode;
  @override
  final String? password;
  @override
  final bool? isPhoneValid;
  @override
  final bool? isSmsCodeValid;
  @override
  final bool? isPasswordValid;

  @override
  String toString() {
    return 'LoginState.failure(errorMessage: $errorMessage, phone: $phone, countryCode: $countryCode, smsCode: $smsCode, password: $password, isPhoneValid: $isPhoneValid, isSmsCodeValid: $isSmsCodeValid, isPasswordValid: $isPasswordValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isPhoneValid, isPhoneValid) ||
                other.isPhoneValid == isPhoneValid) &&
            (identical(other.isSmsCodeValid, isSmsCodeValid) ||
                other.isSmsCodeValid == isSmsCodeValid) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                other.isPasswordValid == isPasswordValid));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    errorMessage,
    phone,
    countryCode,
    smsCode,
    password,
    isPhoneValid,
    isSmsCodeValid,
    isPasswordValid,
  );

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )
    initial,
    required TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )
    smsCodeSent,
    required TResult Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )
    submitting,
    required TResult Function() success,
    required TResult Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )
    failure,
  }) {
    return failure(
      errorMessage,
      phone,
      countryCode,
      smsCode,
      password,
      isPhoneValid,
      isSmsCodeValid,
      isPasswordValid,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )?
    initial,
    TResult? Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )?
    smsCodeSent,
    TResult? Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    submitting,
    TResult? Function()? success,
    TResult? Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    failure,
  }) {
    return failure?.call(
      errorMessage,
      phone,
      countryCode,
      smsCode,
      password,
      isPhoneValid,
      isSmsCodeValid,
      isPasswordValid,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      String password,
      bool isPhoneValid,
      bool isSmsCodeValid,
      bool isPasswordValid,
    )?
    initial,
    TResult Function(
      String phone,
      String countryCode,
      String smsCode,
      bool isSmsCodeValid,
      bool isPhoneValid,
    )?
    smsCodeSent,
    TResult Function(
      String phone,
      String countryCode,
      String? smsCode,
      String? password,
      bool isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    submitting,
    TResult Function()? success,
    TResult Function(
      String errorMessage,
      String? phone,
      String? countryCode,
      String? smsCode,
      String? password,
      bool? isPhoneValid,
      bool? isSmsCodeValid,
      bool? isPasswordValid,
    )?
    failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(
        errorMessage,
        phone,
        countryCode,
        smsCode,
        password,
        isPhoneValid,
        isSmsCodeValid,
        isPasswordValid,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SmsCodeSent value) smsCodeSent,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SmsCodeSent value)? smsCodeSent,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SmsCodeSent value)? smsCodeSent,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements LoginState {
  const factory _Failure({
    required final String errorMessage,
    final String? phone,
    final String? countryCode,
    final String? smsCode,
    final String? password,
    final bool? isPhoneValid,
    final bool? isSmsCodeValid,
    final bool? isPasswordValid,
  }) = _$FailureImpl;

  String get errorMessage;
  String? get phone;
  String? get countryCode;
  String? get smsCode;
  String? get password;
  bool? get isPhoneValid;
  bool? get isSmsCodeValid;
  bool? get isPasswordValid;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
