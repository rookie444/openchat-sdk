// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FfiLoginResponse {
  FfiUserBase? get user => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  FfiUrlInfo? get urls => throw _privateConstructorUsedError;
  int get serverTime => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get inviteCode => throw _privateConstructorUsedError;

  /// Create a copy of FfiLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiLoginResponseCopyWith<FfiLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiLoginResponseCopyWith<$Res> {
  factory $FfiLoginResponseCopyWith(
    FfiLoginResponse value,
    $Res Function(FfiLoginResponse) then,
  ) = _$FfiLoginResponseCopyWithImpl<$Res, FfiLoginResponse>;
  @useResult
  $Res call({
    FfiUserBase? user,
    String sessionId,
    FfiUrlInfo? urls,
    int serverTime,
    String token,
    String inviteCode,
  });

  $FfiUserBaseCopyWith<$Res>? get user;
  $FfiUrlInfoCopyWith<$Res>? get urls;
}

/// @nodoc
class _$FfiLoginResponseCopyWithImpl<$Res, $Val extends FfiLoginResponse>
    implements $FfiLoginResponseCopyWith<$Res> {
  _$FfiLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? sessionId = null,
    Object? urls = freezed,
    Object? serverTime = null,
    Object? token = null,
    Object? inviteCode = null,
  }) {
    return _then(
      _value.copyWith(
            user:
                freezed == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as FfiUserBase?,
            sessionId:
                null == sessionId
                    ? _value.sessionId
                    : sessionId // ignore: cast_nullable_to_non_nullable
                        as String,
            urls:
                freezed == urls
                    ? _value.urls
                    : urls // ignore: cast_nullable_to_non_nullable
                        as FfiUrlInfo?,
            serverTime:
                null == serverTime
                    ? _value.serverTime
                    : serverTime // ignore: cast_nullable_to_non_nullable
                        as int,
            token:
                null == token
                    ? _value.token
                    : token // ignore: cast_nullable_to_non_nullable
                        as String,
            inviteCode:
                null == inviteCode
                    ? _value.inviteCode
                    : inviteCode // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of FfiLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiUserBaseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $FfiUserBaseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of FfiLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiUrlInfoCopyWith<$Res>? get urls {
    if (_value.urls == null) {
      return null;
    }

    return $FfiUrlInfoCopyWith<$Res>(_value.urls!, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FfiLoginResponseImplCopyWith<$Res>
    implements $FfiLoginResponseCopyWith<$Res> {
  factory _$$FfiLoginResponseImplCopyWith(
    _$FfiLoginResponseImpl value,
    $Res Function(_$FfiLoginResponseImpl) then,
  ) = __$$FfiLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    FfiUserBase? user,
    String sessionId,
    FfiUrlInfo? urls,
    int serverTime,
    String token,
    String inviteCode,
  });

  @override
  $FfiUserBaseCopyWith<$Res>? get user;
  @override
  $FfiUrlInfoCopyWith<$Res>? get urls;
}

/// @nodoc
class __$$FfiLoginResponseImplCopyWithImpl<$Res>
    extends _$FfiLoginResponseCopyWithImpl<$Res, _$FfiLoginResponseImpl>
    implements _$$FfiLoginResponseImplCopyWith<$Res> {
  __$$FfiLoginResponseImplCopyWithImpl(
    _$FfiLoginResponseImpl _value,
    $Res Function(_$FfiLoginResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? sessionId = null,
    Object? urls = freezed,
    Object? serverTime = null,
    Object? token = null,
    Object? inviteCode = null,
  }) {
    return _then(
      _$FfiLoginResponseImpl(
        user:
            freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as FfiUserBase?,
        sessionId:
            null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                    as String,
        urls:
            freezed == urls
                ? _value.urls
                : urls // ignore: cast_nullable_to_non_nullable
                    as FfiUrlInfo?,
        serverTime:
            null == serverTime
                ? _value.serverTime
                : serverTime // ignore: cast_nullable_to_non_nullable
                    as int,
        token:
            null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                    as String,
        inviteCode:
            null == inviteCode
                ? _value.inviteCode
                : inviteCode // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$FfiLoginResponseImpl implements _FfiLoginResponse {
  const _$FfiLoginResponseImpl({
    this.user,
    required this.sessionId,
    this.urls,
    required this.serverTime,
    required this.token,
    required this.inviteCode,
  });

  @override
  final FfiUserBase? user;
  @override
  final String sessionId;
  @override
  final FfiUrlInfo? urls;
  @override
  final int serverTime;
  @override
  final String token;
  @override
  final String inviteCode;

  @override
  String toString() {
    return 'FfiLoginResponse(user: $user, sessionId: $sessionId, urls: $urls, serverTime: $serverTime, token: $token, inviteCode: $inviteCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiLoginResponseImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.serverTime, serverTime) ||
                other.serverTime == serverTime) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.inviteCode, inviteCode) ||
                other.inviteCode == inviteCode));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    user,
    sessionId,
    urls,
    serverTime,
    token,
    inviteCode,
  );

  /// Create a copy of FfiLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiLoginResponseImplCopyWith<_$FfiLoginResponseImpl> get copyWith =>
      __$$FfiLoginResponseImplCopyWithImpl<_$FfiLoginResponseImpl>(
        this,
        _$identity,
      );
}

abstract class _FfiLoginResponse implements FfiLoginResponse {
  const factory _FfiLoginResponse({
    final FfiUserBase? user,
    required final String sessionId,
    final FfiUrlInfo? urls,
    required final int serverTime,
    required final String token,
    required final String inviteCode,
  }) = _$FfiLoginResponseImpl;

  @override
  FfiUserBase? get user;
  @override
  String get sessionId;
  @override
  FfiUrlInfo? get urls;
  @override
  int get serverTime;
  @override
  String get token;
  @override
  String get inviteCode;

  /// Create a copy of FfiLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiLoginResponseImplCopyWith<_$FfiLoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FfiRegResponse {
  FfiUserBase? get user => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  FfiUrlInfo? get urls => throw _privateConstructorUsedError;
  int get serverTime => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get inviteCode => throw _privateConstructorUsedError;
  int get keyVersion => throw _privateConstructorUsedError;

  /// Create a copy of FfiRegResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiRegResponseCopyWith<FfiRegResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiRegResponseCopyWith<$Res> {
  factory $FfiRegResponseCopyWith(
    FfiRegResponse value,
    $Res Function(FfiRegResponse) then,
  ) = _$FfiRegResponseCopyWithImpl<$Res, FfiRegResponse>;
  @useResult
  $Res call({
    FfiUserBase? user,
    String sessionId,
    FfiUrlInfo? urls,
    int serverTime,
    String token,
    String inviteCode,
    int keyVersion,
  });

  $FfiUserBaseCopyWith<$Res>? get user;
  $FfiUrlInfoCopyWith<$Res>? get urls;
}

/// @nodoc
class _$FfiRegResponseCopyWithImpl<$Res, $Val extends FfiRegResponse>
    implements $FfiRegResponseCopyWith<$Res> {
  _$FfiRegResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiRegResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? sessionId = null,
    Object? urls = freezed,
    Object? serverTime = null,
    Object? token = null,
    Object? inviteCode = null,
    Object? keyVersion = null,
  }) {
    return _then(
      _value.copyWith(
            user:
                freezed == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as FfiUserBase?,
            sessionId:
                null == sessionId
                    ? _value.sessionId
                    : sessionId // ignore: cast_nullable_to_non_nullable
                        as String,
            urls:
                freezed == urls
                    ? _value.urls
                    : urls // ignore: cast_nullable_to_non_nullable
                        as FfiUrlInfo?,
            serverTime:
                null == serverTime
                    ? _value.serverTime
                    : serverTime // ignore: cast_nullable_to_non_nullable
                        as int,
            token:
                null == token
                    ? _value.token
                    : token // ignore: cast_nullable_to_non_nullable
                        as String,
            inviteCode:
                null == inviteCode
                    ? _value.inviteCode
                    : inviteCode // ignore: cast_nullable_to_non_nullable
                        as String,
            keyVersion:
                null == keyVersion
                    ? _value.keyVersion
                    : keyVersion // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of FfiRegResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiUserBaseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $FfiUserBaseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of FfiRegResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiUrlInfoCopyWith<$Res>? get urls {
    if (_value.urls == null) {
      return null;
    }

    return $FfiUrlInfoCopyWith<$Res>(_value.urls!, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FfiRegResponseImplCopyWith<$Res>
    implements $FfiRegResponseCopyWith<$Res> {
  factory _$$FfiRegResponseImplCopyWith(
    _$FfiRegResponseImpl value,
    $Res Function(_$FfiRegResponseImpl) then,
  ) = __$$FfiRegResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    FfiUserBase? user,
    String sessionId,
    FfiUrlInfo? urls,
    int serverTime,
    String token,
    String inviteCode,
    int keyVersion,
  });

  @override
  $FfiUserBaseCopyWith<$Res>? get user;
  @override
  $FfiUrlInfoCopyWith<$Res>? get urls;
}

/// @nodoc
class __$$FfiRegResponseImplCopyWithImpl<$Res>
    extends _$FfiRegResponseCopyWithImpl<$Res, _$FfiRegResponseImpl>
    implements _$$FfiRegResponseImplCopyWith<$Res> {
  __$$FfiRegResponseImplCopyWithImpl(
    _$FfiRegResponseImpl _value,
    $Res Function(_$FfiRegResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiRegResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? sessionId = null,
    Object? urls = freezed,
    Object? serverTime = null,
    Object? token = null,
    Object? inviteCode = null,
    Object? keyVersion = null,
  }) {
    return _then(
      _$FfiRegResponseImpl(
        user:
            freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as FfiUserBase?,
        sessionId:
            null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                    as String,
        urls:
            freezed == urls
                ? _value.urls
                : urls // ignore: cast_nullable_to_non_nullable
                    as FfiUrlInfo?,
        serverTime:
            null == serverTime
                ? _value.serverTime
                : serverTime // ignore: cast_nullable_to_non_nullable
                    as int,
        token:
            null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                    as String,
        inviteCode:
            null == inviteCode
                ? _value.inviteCode
                : inviteCode // ignore: cast_nullable_to_non_nullable
                    as String,
        keyVersion:
            null == keyVersion
                ? _value.keyVersion
                : keyVersion // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$FfiRegResponseImpl implements _FfiRegResponse {
  const _$FfiRegResponseImpl({
    this.user,
    required this.sessionId,
    this.urls,
    required this.serverTime,
    required this.token,
    required this.inviteCode,
    required this.keyVersion,
  });

  @override
  final FfiUserBase? user;
  @override
  final String sessionId;
  @override
  final FfiUrlInfo? urls;
  @override
  final int serverTime;
  @override
  final String token;
  @override
  final String inviteCode;
  @override
  final int keyVersion;

  @override
  String toString() {
    return 'FfiRegResponse(user: $user, sessionId: $sessionId, urls: $urls, serverTime: $serverTime, token: $token, inviteCode: $inviteCode, keyVersion: $keyVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiRegResponseImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.serverTime, serverTime) ||
                other.serverTime == serverTime) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.inviteCode, inviteCode) ||
                other.inviteCode == inviteCode) &&
            (identical(other.keyVersion, keyVersion) ||
                other.keyVersion == keyVersion));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    user,
    sessionId,
    urls,
    serverTime,
    token,
    inviteCode,
    keyVersion,
  );

  /// Create a copy of FfiRegResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiRegResponseImplCopyWith<_$FfiRegResponseImpl> get copyWith =>
      __$$FfiRegResponseImplCopyWithImpl<_$FfiRegResponseImpl>(
        this,
        _$identity,
      );
}

abstract class _FfiRegResponse implements FfiRegResponse {
  const factory _FfiRegResponse({
    final FfiUserBase? user,
    required final String sessionId,
    final FfiUrlInfo? urls,
    required final int serverTime,
    required final String token,
    required final String inviteCode,
    required final int keyVersion,
  }) = _$FfiRegResponseImpl;

  @override
  FfiUserBase? get user;
  @override
  String get sessionId;
  @override
  FfiUrlInfo? get urls;
  @override
  int get serverTime;
  @override
  String get token;
  @override
  String get inviteCode;
  @override
  int get keyVersion;

  /// Create a copy of FfiRegResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiRegResponseImplCopyWith<_$FfiRegResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FfiUrlInfo {
  String get biz => throw _privateConstructorUsedError;
  String get session => throw _privateConstructorUsedError;
  String get friend => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;
  String get staticMap => throw _privateConstructorUsedError;
  String get download => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get config => throw _privateConstructorUsedError;
  String get wss => throw _privateConstructorUsedError;
  int get socketProtocol => throw _privateConstructorUsedError;
  int get uploadServer => throw _privateConstructorUsedError;
  String get uploadUrl => throw _privateConstructorUsedError;
  String get walletUrl => throw _privateConstructorUsedError;
  String get newsUrl => throw _privateConstructorUsedError;
  String get otcUrl => throw _privateConstructorUsedError;
  String get redPacketUrl => throw _privateConstructorUsedError;
  String get paymentUrl => throw _privateConstructorUsedError;

  /// Create a copy of FfiUrlInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiUrlInfoCopyWith<FfiUrlInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiUrlInfoCopyWith<$Res> {
  factory $FfiUrlInfoCopyWith(
    FfiUrlInfo value,
    $Res Function(FfiUrlInfo) then,
  ) = _$FfiUrlInfoCopyWithImpl<$Res, FfiUrlInfo>;
  @useResult
  $Res call({
    String biz,
    String session,
    String friend,
    String group,
    String staticMap,
    String download,
    String login,
    String config,
    String wss,
    int socketProtocol,
    int uploadServer,
    String uploadUrl,
    String walletUrl,
    String newsUrl,
    String otcUrl,
    String redPacketUrl,
    String paymentUrl,
  });
}

/// @nodoc
class _$FfiUrlInfoCopyWithImpl<$Res, $Val extends FfiUrlInfo>
    implements $FfiUrlInfoCopyWith<$Res> {
  _$FfiUrlInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiUrlInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? biz = null,
    Object? session = null,
    Object? friend = null,
    Object? group = null,
    Object? staticMap = null,
    Object? download = null,
    Object? login = null,
    Object? config = null,
    Object? wss = null,
    Object? socketProtocol = null,
    Object? uploadServer = null,
    Object? uploadUrl = null,
    Object? walletUrl = null,
    Object? newsUrl = null,
    Object? otcUrl = null,
    Object? redPacketUrl = null,
    Object? paymentUrl = null,
  }) {
    return _then(
      _value.copyWith(
            biz:
                null == biz
                    ? _value.biz
                    : biz // ignore: cast_nullable_to_non_nullable
                        as String,
            session:
                null == session
                    ? _value.session
                    : session // ignore: cast_nullable_to_non_nullable
                        as String,
            friend:
                null == friend
                    ? _value.friend
                    : friend // ignore: cast_nullable_to_non_nullable
                        as String,
            group:
                null == group
                    ? _value.group
                    : group // ignore: cast_nullable_to_non_nullable
                        as String,
            staticMap:
                null == staticMap
                    ? _value.staticMap
                    : staticMap // ignore: cast_nullable_to_non_nullable
                        as String,
            download:
                null == download
                    ? _value.download
                    : download // ignore: cast_nullable_to_non_nullable
                        as String,
            login:
                null == login
                    ? _value.login
                    : login // ignore: cast_nullable_to_non_nullable
                        as String,
            config:
                null == config
                    ? _value.config
                    : config // ignore: cast_nullable_to_non_nullable
                        as String,
            wss:
                null == wss
                    ? _value.wss
                    : wss // ignore: cast_nullable_to_non_nullable
                        as String,
            socketProtocol:
                null == socketProtocol
                    ? _value.socketProtocol
                    : socketProtocol // ignore: cast_nullable_to_non_nullable
                        as int,
            uploadServer:
                null == uploadServer
                    ? _value.uploadServer
                    : uploadServer // ignore: cast_nullable_to_non_nullable
                        as int,
            uploadUrl:
                null == uploadUrl
                    ? _value.uploadUrl
                    : uploadUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            walletUrl:
                null == walletUrl
                    ? _value.walletUrl
                    : walletUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            newsUrl:
                null == newsUrl
                    ? _value.newsUrl
                    : newsUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            otcUrl:
                null == otcUrl
                    ? _value.otcUrl
                    : otcUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            redPacketUrl:
                null == redPacketUrl
                    ? _value.redPacketUrl
                    : redPacketUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            paymentUrl:
                null == paymentUrl
                    ? _value.paymentUrl
                    : paymentUrl // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiUrlInfoImplCopyWith<$Res>
    implements $FfiUrlInfoCopyWith<$Res> {
  factory _$$FfiUrlInfoImplCopyWith(
    _$FfiUrlInfoImpl value,
    $Res Function(_$FfiUrlInfoImpl) then,
  ) = __$$FfiUrlInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String biz,
    String session,
    String friend,
    String group,
    String staticMap,
    String download,
    String login,
    String config,
    String wss,
    int socketProtocol,
    int uploadServer,
    String uploadUrl,
    String walletUrl,
    String newsUrl,
    String otcUrl,
    String redPacketUrl,
    String paymentUrl,
  });
}

/// @nodoc
class __$$FfiUrlInfoImplCopyWithImpl<$Res>
    extends _$FfiUrlInfoCopyWithImpl<$Res, _$FfiUrlInfoImpl>
    implements _$$FfiUrlInfoImplCopyWith<$Res> {
  __$$FfiUrlInfoImplCopyWithImpl(
    _$FfiUrlInfoImpl _value,
    $Res Function(_$FfiUrlInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiUrlInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? biz = null,
    Object? session = null,
    Object? friend = null,
    Object? group = null,
    Object? staticMap = null,
    Object? download = null,
    Object? login = null,
    Object? config = null,
    Object? wss = null,
    Object? socketProtocol = null,
    Object? uploadServer = null,
    Object? uploadUrl = null,
    Object? walletUrl = null,
    Object? newsUrl = null,
    Object? otcUrl = null,
    Object? redPacketUrl = null,
    Object? paymentUrl = null,
  }) {
    return _then(
      _$FfiUrlInfoImpl(
        biz:
            null == biz
                ? _value.biz
                : biz // ignore: cast_nullable_to_non_nullable
                    as String,
        session:
            null == session
                ? _value.session
                : session // ignore: cast_nullable_to_non_nullable
                    as String,
        friend:
            null == friend
                ? _value.friend
                : friend // ignore: cast_nullable_to_non_nullable
                    as String,
        group:
            null == group
                ? _value.group
                : group // ignore: cast_nullable_to_non_nullable
                    as String,
        staticMap:
            null == staticMap
                ? _value.staticMap
                : staticMap // ignore: cast_nullable_to_non_nullable
                    as String,
        download:
            null == download
                ? _value.download
                : download // ignore: cast_nullable_to_non_nullable
                    as String,
        login:
            null == login
                ? _value.login
                : login // ignore: cast_nullable_to_non_nullable
                    as String,
        config:
            null == config
                ? _value.config
                : config // ignore: cast_nullable_to_non_nullable
                    as String,
        wss:
            null == wss
                ? _value.wss
                : wss // ignore: cast_nullable_to_non_nullable
                    as String,
        socketProtocol:
            null == socketProtocol
                ? _value.socketProtocol
                : socketProtocol // ignore: cast_nullable_to_non_nullable
                    as int,
        uploadServer:
            null == uploadServer
                ? _value.uploadServer
                : uploadServer // ignore: cast_nullable_to_non_nullable
                    as int,
        uploadUrl:
            null == uploadUrl
                ? _value.uploadUrl
                : uploadUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        walletUrl:
            null == walletUrl
                ? _value.walletUrl
                : walletUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        newsUrl:
            null == newsUrl
                ? _value.newsUrl
                : newsUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        otcUrl:
            null == otcUrl
                ? _value.otcUrl
                : otcUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        redPacketUrl:
            null == redPacketUrl
                ? _value.redPacketUrl
                : redPacketUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        paymentUrl:
            null == paymentUrl
                ? _value.paymentUrl
                : paymentUrl // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$FfiUrlInfoImpl implements _FfiUrlInfo {
  const _$FfiUrlInfoImpl({
    required this.biz,
    required this.session,
    required this.friend,
    required this.group,
    required this.staticMap,
    required this.download,
    required this.login,
    required this.config,
    required this.wss,
    required this.socketProtocol,
    required this.uploadServer,
    required this.uploadUrl,
    required this.walletUrl,
    required this.newsUrl,
    required this.otcUrl,
    required this.redPacketUrl,
    required this.paymentUrl,
  });

  @override
  final String biz;
  @override
  final String session;
  @override
  final String friend;
  @override
  final String group;
  @override
  final String staticMap;
  @override
  final String download;
  @override
  final String login;
  @override
  final String config;
  @override
  final String wss;
  @override
  final int socketProtocol;
  @override
  final int uploadServer;
  @override
  final String uploadUrl;
  @override
  final String walletUrl;
  @override
  final String newsUrl;
  @override
  final String otcUrl;
  @override
  final String redPacketUrl;
  @override
  final String paymentUrl;

  @override
  String toString() {
    return 'FfiUrlInfo(biz: $biz, session: $session, friend: $friend, group: $group, staticMap: $staticMap, download: $download, login: $login, config: $config, wss: $wss, socketProtocol: $socketProtocol, uploadServer: $uploadServer, uploadUrl: $uploadUrl, walletUrl: $walletUrl, newsUrl: $newsUrl, otcUrl: $otcUrl, redPacketUrl: $redPacketUrl, paymentUrl: $paymentUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiUrlInfoImpl &&
            (identical(other.biz, biz) || other.biz == biz) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.friend, friend) || other.friend == friend) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.staticMap, staticMap) ||
                other.staticMap == staticMap) &&
            (identical(other.download, download) ||
                other.download == download) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.config, config) || other.config == config) &&
            (identical(other.wss, wss) || other.wss == wss) &&
            (identical(other.socketProtocol, socketProtocol) ||
                other.socketProtocol == socketProtocol) &&
            (identical(other.uploadServer, uploadServer) ||
                other.uploadServer == uploadServer) &&
            (identical(other.uploadUrl, uploadUrl) ||
                other.uploadUrl == uploadUrl) &&
            (identical(other.walletUrl, walletUrl) ||
                other.walletUrl == walletUrl) &&
            (identical(other.newsUrl, newsUrl) || other.newsUrl == newsUrl) &&
            (identical(other.otcUrl, otcUrl) || other.otcUrl == otcUrl) &&
            (identical(other.redPacketUrl, redPacketUrl) ||
                other.redPacketUrl == redPacketUrl) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    biz,
    session,
    friend,
    group,
    staticMap,
    download,
    login,
    config,
    wss,
    socketProtocol,
    uploadServer,
    uploadUrl,
    walletUrl,
    newsUrl,
    otcUrl,
    redPacketUrl,
    paymentUrl,
  );

  /// Create a copy of FfiUrlInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiUrlInfoImplCopyWith<_$FfiUrlInfoImpl> get copyWith =>
      __$$FfiUrlInfoImplCopyWithImpl<_$FfiUrlInfoImpl>(this, _$identity);
}

abstract class _FfiUrlInfo implements FfiUrlInfo {
  const factory _FfiUrlInfo({
    required final String biz,
    required final String session,
    required final String friend,
    required final String group,
    required final String staticMap,
    required final String download,
    required final String login,
    required final String config,
    required final String wss,
    required final int socketProtocol,
    required final int uploadServer,
    required final String uploadUrl,
    required final String walletUrl,
    required final String newsUrl,
    required final String otcUrl,
    required final String redPacketUrl,
    required final String paymentUrl,
  }) = _$FfiUrlInfoImpl;

  @override
  String get biz;
  @override
  String get session;
  @override
  String get friend;
  @override
  String get group;
  @override
  String get staticMap;
  @override
  String get download;
  @override
  String get login;
  @override
  String get config;
  @override
  String get wss;
  @override
  int get socketProtocol;
  @override
  int get uploadServer;
  @override
  String get uploadUrl;
  @override
  String get walletUrl;
  @override
  String get newsUrl;
  @override
  String get otcUrl;
  @override
  String get redPacketUrl;
  @override
  String get paymentUrl;

  /// Create a copy of FfiUrlInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiUrlInfoImplCopyWith<_$FfiUrlInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
