// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/features/connection/blocs/connection_status_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ConnectionStatusEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() startAuthentication,
    required TResult Function() connectionComplete,
    required TResult Function(String message) connectionFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? startAuthentication,
    TResult? Function()? connectionComplete,
    TResult? Function(String message)? connectionFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? startAuthentication,
    TResult Function()? connectionComplete,
    TResult Function(String message)? connectionFailed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_StartAuthentication value) startAuthentication,
    required TResult Function(_ConnectionComplete value) connectionComplete,
    required TResult Function(_ConnectionFailed value) connectionFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_StartAuthentication value)? startAuthentication,
    TResult? Function(_ConnectionComplete value)? connectionComplete,
    TResult? Function(_ConnectionFailed value)? connectionFailed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_StartAuthentication value)? startAuthentication,
    TResult Function(_ConnectionComplete value)? connectionComplete,
    TResult Function(_ConnectionFailed value)? connectionFailed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionStatusEventCopyWith<$Res> {
  factory $ConnectionStatusEventCopyWith(
    ConnectionStatusEvent value,
    $Res Function(ConnectionStatusEvent) then,
  ) = _$ConnectionStatusEventCopyWithImpl<$Res, ConnectionStatusEvent>;
}

/// @nodoc
class _$ConnectionStatusEventCopyWithImpl<
  $Res,
  $Val extends ConnectionStatusEvent
>
    implements $ConnectionStatusEventCopyWith<$Res> {
  _$ConnectionStatusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConnectionStatusEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ConnectImplCopyWith<$Res> {
  factory _$$ConnectImplCopyWith(
    _$ConnectImpl value,
    $Res Function(_$ConnectImpl) then,
  ) = __$$ConnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectImplCopyWithImpl<$Res>
    extends _$ConnectionStatusEventCopyWithImpl<$Res, _$ConnectImpl>
    implements _$$ConnectImplCopyWith<$Res> {
  __$$ConnectImplCopyWithImpl(
    _$ConnectImpl _value,
    $Res Function(_$ConnectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConnectionStatusEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectImpl implements _Connect {
  const _$ConnectImpl();

  @override
  String toString() {
    return 'ConnectionStatusEvent.connect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() startAuthentication,
    required TResult Function() connectionComplete,
    required TResult Function(String message) connectionFailed,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? startAuthentication,
    TResult? Function()? connectionComplete,
    TResult? Function(String message)? connectionFailed,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? startAuthentication,
    TResult Function()? connectionComplete,
    TResult Function(String message)? connectionFailed,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_StartAuthentication value) startAuthentication,
    required TResult Function(_ConnectionComplete value) connectionComplete,
    required TResult Function(_ConnectionFailed value) connectionFailed,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_StartAuthentication value)? startAuthentication,
    TResult? Function(_ConnectionComplete value)? connectionComplete,
    TResult? Function(_ConnectionFailed value)? connectionFailed,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_StartAuthentication value)? startAuthentication,
    TResult Function(_ConnectionComplete value)? connectionComplete,
    TResult Function(_ConnectionFailed value)? connectionFailed,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class _Connect implements ConnectionStatusEvent {
  const factory _Connect() = _$ConnectImpl;
}

/// @nodoc
abstract class _$$StartAuthenticationImplCopyWith<$Res> {
  factory _$$StartAuthenticationImplCopyWith(
    _$StartAuthenticationImpl value,
    $Res Function(_$StartAuthenticationImpl) then,
  ) = __$$StartAuthenticationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartAuthenticationImplCopyWithImpl<$Res>
    extends _$ConnectionStatusEventCopyWithImpl<$Res, _$StartAuthenticationImpl>
    implements _$$StartAuthenticationImplCopyWith<$Res> {
  __$$StartAuthenticationImplCopyWithImpl(
    _$StartAuthenticationImpl _value,
    $Res Function(_$StartAuthenticationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConnectionStatusEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartAuthenticationImpl implements _StartAuthentication {
  const _$StartAuthenticationImpl();

  @override
  String toString() {
    return 'ConnectionStatusEvent.startAuthentication()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartAuthenticationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() startAuthentication,
    required TResult Function() connectionComplete,
    required TResult Function(String message) connectionFailed,
  }) {
    return startAuthentication();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? startAuthentication,
    TResult? Function()? connectionComplete,
    TResult? Function(String message)? connectionFailed,
  }) {
    return startAuthentication?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? startAuthentication,
    TResult Function()? connectionComplete,
    TResult Function(String message)? connectionFailed,
    required TResult orElse(),
  }) {
    if (startAuthentication != null) {
      return startAuthentication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_StartAuthentication value) startAuthentication,
    required TResult Function(_ConnectionComplete value) connectionComplete,
    required TResult Function(_ConnectionFailed value) connectionFailed,
  }) {
    return startAuthentication(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_StartAuthentication value)? startAuthentication,
    TResult? Function(_ConnectionComplete value)? connectionComplete,
    TResult? Function(_ConnectionFailed value)? connectionFailed,
  }) {
    return startAuthentication?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_StartAuthentication value)? startAuthentication,
    TResult Function(_ConnectionComplete value)? connectionComplete,
    TResult Function(_ConnectionFailed value)? connectionFailed,
    required TResult orElse(),
  }) {
    if (startAuthentication != null) {
      return startAuthentication(this);
    }
    return orElse();
  }
}

abstract class _StartAuthentication implements ConnectionStatusEvent {
  const factory _StartAuthentication() = _$StartAuthenticationImpl;
}

/// @nodoc
abstract class _$$ConnectionCompleteImplCopyWith<$Res> {
  factory _$$ConnectionCompleteImplCopyWith(
    _$ConnectionCompleteImpl value,
    $Res Function(_$ConnectionCompleteImpl) then,
  ) = __$$ConnectionCompleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionCompleteImplCopyWithImpl<$Res>
    extends _$ConnectionStatusEventCopyWithImpl<$Res, _$ConnectionCompleteImpl>
    implements _$$ConnectionCompleteImplCopyWith<$Res> {
  __$$ConnectionCompleteImplCopyWithImpl(
    _$ConnectionCompleteImpl _value,
    $Res Function(_$ConnectionCompleteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConnectionStatusEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectionCompleteImpl implements _ConnectionComplete {
  const _$ConnectionCompleteImpl();

  @override
  String toString() {
    return 'ConnectionStatusEvent.connectionComplete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectionCompleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() startAuthentication,
    required TResult Function() connectionComplete,
    required TResult Function(String message) connectionFailed,
  }) {
    return connectionComplete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? startAuthentication,
    TResult? Function()? connectionComplete,
    TResult? Function(String message)? connectionFailed,
  }) {
    return connectionComplete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? startAuthentication,
    TResult Function()? connectionComplete,
    TResult Function(String message)? connectionFailed,
    required TResult orElse(),
  }) {
    if (connectionComplete != null) {
      return connectionComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_StartAuthentication value) startAuthentication,
    required TResult Function(_ConnectionComplete value) connectionComplete,
    required TResult Function(_ConnectionFailed value) connectionFailed,
  }) {
    return connectionComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_StartAuthentication value)? startAuthentication,
    TResult? Function(_ConnectionComplete value)? connectionComplete,
    TResult? Function(_ConnectionFailed value)? connectionFailed,
  }) {
    return connectionComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_StartAuthentication value)? startAuthentication,
    TResult Function(_ConnectionComplete value)? connectionComplete,
    TResult Function(_ConnectionFailed value)? connectionFailed,
    required TResult orElse(),
  }) {
    if (connectionComplete != null) {
      return connectionComplete(this);
    }
    return orElse();
  }
}

abstract class _ConnectionComplete implements ConnectionStatusEvent {
  const factory _ConnectionComplete() = _$ConnectionCompleteImpl;
}

/// @nodoc
abstract class _$$ConnectionFailedImplCopyWith<$Res> {
  factory _$$ConnectionFailedImplCopyWith(
    _$ConnectionFailedImpl value,
    $Res Function(_$ConnectionFailedImpl) then,
  ) = __$$ConnectionFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConnectionFailedImplCopyWithImpl<$Res>
    extends _$ConnectionStatusEventCopyWithImpl<$Res, _$ConnectionFailedImpl>
    implements _$$ConnectionFailedImplCopyWith<$Res> {
  __$$ConnectionFailedImplCopyWithImpl(
    _$ConnectionFailedImpl _value,
    $Res Function(_$ConnectionFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConnectionStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ConnectionFailedImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ConnectionFailedImpl implements _ConnectionFailed {
  const _$ConnectionFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ConnectionStatusEvent.connectionFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ConnectionStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionFailedImplCopyWith<_$ConnectionFailedImpl> get copyWith =>
      __$$ConnectionFailedImplCopyWithImpl<_$ConnectionFailedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() startAuthentication,
    required TResult Function() connectionComplete,
    required TResult Function(String message) connectionFailed,
  }) {
    return connectionFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? startAuthentication,
    TResult? Function()? connectionComplete,
    TResult? Function(String message)? connectionFailed,
  }) {
    return connectionFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? startAuthentication,
    TResult Function()? connectionComplete,
    TResult Function(String message)? connectionFailed,
    required TResult orElse(),
  }) {
    if (connectionFailed != null) {
      return connectionFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_StartAuthentication value) startAuthentication,
    required TResult Function(_ConnectionComplete value) connectionComplete,
    required TResult Function(_ConnectionFailed value) connectionFailed,
  }) {
    return connectionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_StartAuthentication value)? startAuthentication,
    TResult? Function(_ConnectionComplete value)? connectionComplete,
    TResult? Function(_ConnectionFailed value)? connectionFailed,
  }) {
    return connectionFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_StartAuthentication value)? startAuthentication,
    TResult Function(_ConnectionComplete value)? connectionComplete,
    TResult Function(_ConnectionFailed value)? connectionFailed,
    required TResult orElse(),
  }) {
    if (connectionFailed != null) {
      return connectionFailed(this);
    }
    return orElse();
  }
}

abstract class _ConnectionFailed implements ConnectionStatusEvent {
  const factory _ConnectionFailed(final String message) =
      _$ConnectionFailedImpl;

  String get message;

  /// Create a copy of ConnectionStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionFailedImplCopyWith<_$ConnectionFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
