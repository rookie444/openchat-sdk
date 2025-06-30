// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_common.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiCommonMessageModel _$FfiCommonMessageModelFromJson(
  Map<String, dynamic> json,
) {
  return _FfiCommonMessageModel.fromJson(json);
}

/// @nodoc
mixin _$FfiCommonMessageModel {
  int get flag => throw _privateConstructorUsedError;
  int get msgId => throw _privateConstructorUsedError;
  int get targetId => throw _privateConstructorUsedError;
  FfiChatType get chatType => throw _privateConstructorUsedError;
  String get conversationId => throw _privateConstructorUsedError;
  FfiMsgType get msgType => throw _privateConstructorUsedError;
  int get sendTime => throw _privateConstructorUsedError;
  int get serverReceiveTime => throw _privateConstructorUsedError;
  int get receiveTime => throw _privateConstructorUsedError;

  /// Serializes this FfiCommonMessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiCommonMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiCommonMessageModelCopyWith<FfiCommonMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiCommonMessageModelCopyWith<$Res> {
  factory $FfiCommonMessageModelCopyWith(
    FfiCommonMessageModel value,
    $Res Function(FfiCommonMessageModel) then,
  ) = _$FfiCommonMessageModelCopyWithImpl<$Res, FfiCommonMessageModel>;
  @useResult
  $Res call({
    int flag,
    int msgId,
    int targetId,
    FfiChatType chatType,
    String conversationId,
    FfiMsgType msgType,
    int sendTime,
    int serverReceiveTime,
    int receiveTime,
  });
}

/// @nodoc
class _$FfiCommonMessageModelCopyWithImpl<
  $Res,
  $Val extends FfiCommonMessageModel
>
    implements $FfiCommonMessageModelCopyWith<$Res> {
  _$FfiCommonMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiCommonMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
    Object? msgId = null,
    Object? targetId = null,
    Object? chatType = null,
    Object? conversationId = null,
    Object? msgType = null,
    Object? sendTime = null,
    Object? serverReceiveTime = null,
    Object? receiveTime = null,
  }) {
    return _then(
      _value.copyWith(
            flag:
                null == flag
                    ? _value.flag
                    : flag // ignore: cast_nullable_to_non_nullable
                        as int,
            msgId:
                null == msgId
                    ? _value.msgId
                    : msgId // ignore: cast_nullable_to_non_nullable
                        as int,
            targetId:
                null == targetId
                    ? _value.targetId
                    : targetId // ignore: cast_nullable_to_non_nullable
                        as int,
            chatType:
                null == chatType
                    ? _value.chatType
                    : chatType // ignore: cast_nullable_to_non_nullable
                        as FfiChatType,
            conversationId:
                null == conversationId
                    ? _value.conversationId
                    : conversationId // ignore: cast_nullable_to_non_nullable
                        as String,
            msgType:
                null == msgType
                    ? _value.msgType
                    : msgType // ignore: cast_nullable_to_non_nullable
                        as FfiMsgType,
            sendTime:
                null == sendTime
                    ? _value.sendTime
                    : sendTime // ignore: cast_nullable_to_non_nullable
                        as int,
            serverReceiveTime:
                null == serverReceiveTime
                    ? _value.serverReceiveTime
                    : serverReceiveTime // ignore: cast_nullable_to_non_nullable
                        as int,
            receiveTime:
                null == receiveTime
                    ? _value.receiveTime
                    : receiveTime // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiCommonMessageModelImplCopyWith<$Res>
    implements $FfiCommonMessageModelCopyWith<$Res> {
  factory _$$FfiCommonMessageModelImplCopyWith(
    _$FfiCommonMessageModelImpl value,
    $Res Function(_$FfiCommonMessageModelImpl) then,
  ) = __$$FfiCommonMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int flag,
    int msgId,
    int targetId,
    FfiChatType chatType,
    String conversationId,
    FfiMsgType msgType,
    int sendTime,
    int serverReceiveTime,
    int receiveTime,
  });
}

/// @nodoc
class __$$FfiCommonMessageModelImplCopyWithImpl<$Res>
    extends
        _$FfiCommonMessageModelCopyWithImpl<$Res, _$FfiCommonMessageModelImpl>
    implements _$$FfiCommonMessageModelImplCopyWith<$Res> {
  __$$FfiCommonMessageModelImplCopyWithImpl(
    _$FfiCommonMessageModelImpl _value,
    $Res Function(_$FfiCommonMessageModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiCommonMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
    Object? msgId = null,
    Object? targetId = null,
    Object? chatType = null,
    Object? conversationId = null,
    Object? msgType = null,
    Object? sendTime = null,
    Object? serverReceiveTime = null,
    Object? receiveTime = null,
  }) {
    return _then(
      _$FfiCommonMessageModelImpl(
        flag:
            null == flag
                ? _value.flag
                : flag // ignore: cast_nullable_to_non_nullable
                    as int,
        msgId:
            null == msgId
                ? _value.msgId
                : msgId // ignore: cast_nullable_to_non_nullable
                    as int,
        targetId:
            null == targetId
                ? _value.targetId
                : targetId // ignore: cast_nullable_to_non_nullable
                    as int,
        chatType:
            null == chatType
                ? _value.chatType
                : chatType // ignore: cast_nullable_to_non_nullable
                    as FfiChatType,
        conversationId:
            null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                    as String,
        msgType:
            null == msgType
                ? _value.msgType
                : msgType // ignore: cast_nullable_to_non_nullable
                    as FfiMsgType,
        sendTime:
            null == sendTime
                ? _value.sendTime
                : sendTime // ignore: cast_nullable_to_non_nullable
                    as int,
        serverReceiveTime:
            null == serverReceiveTime
                ? _value.serverReceiveTime
                : serverReceiveTime // ignore: cast_nullable_to_non_nullable
                    as int,
        receiveTime:
            null == receiveTime
                ? _value.receiveTime
                : receiveTime // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiCommonMessageModelImpl extends _FfiCommonMessageModel {
  const _$FfiCommonMessageModelImpl({
    required this.flag,
    required this.msgId,
    required this.targetId,
    required this.chatType,
    required this.conversationId,
    required this.msgType,
    required this.sendTime,
    required this.serverReceiveTime,
    required this.receiveTime,
  }) : super._();

  factory _$FfiCommonMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiCommonMessageModelImplFromJson(json);

  @override
  final int flag;
  @override
  final int msgId;
  @override
  final int targetId;
  @override
  final FfiChatType chatType;
  @override
  final String conversationId;
  @override
  final FfiMsgType msgType;
  @override
  final int sendTime;
  @override
  final int serverReceiveTime;
  @override
  final int receiveTime;

  @override
  String toString() {
    return 'FfiCommonMessageModel(flag: $flag, msgId: $msgId, targetId: $targetId, chatType: $chatType, conversationId: $conversationId, msgType: $msgType, sendTime: $sendTime, serverReceiveTime: $serverReceiveTime, receiveTime: $receiveTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiCommonMessageModelImpl &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.msgId, msgId) || other.msgId == msgId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.chatType, chatType) ||
                other.chatType == chatType) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.msgType, msgType) || other.msgType == msgType) &&
            (identical(other.sendTime, sendTime) ||
                other.sendTime == sendTime) &&
            (identical(other.serverReceiveTime, serverReceiveTime) ||
                other.serverReceiveTime == serverReceiveTime) &&
            (identical(other.receiveTime, receiveTime) ||
                other.receiveTime == receiveTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    flag,
    msgId,
    targetId,
    chatType,
    conversationId,
    msgType,
    sendTime,
    serverReceiveTime,
    receiveTime,
  );

  /// Create a copy of FfiCommonMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiCommonMessageModelImplCopyWith<_$FfiCommonMessageModelImpl>
  get copyWith =>
      __$$FfiCommonMessageModelImplCopyWithImpl<_$FfiCommonMessageModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiCommonMessageModelImplToJson(this);
  }
}

abstract class _FfiCommonMessageModel extends FfiCommonMessageModel {
  const factory _FfiCommonMessageModel({
    required final int flag,
    required final int msgId,
    required final int targetId,
    required final FfiChatType chatType,
    required final String conversationId,
    required final FfiMsgType msgType,
    required final int sendTime,
    required final int serverReceiveTime,
    required final int receiveTime,
  }) = _$FfiCommonMessageModelImpl;
  const _FfiCommonMessageModel._() : super._();

  factory _FfiCommonMessageModel.fromJson(Map<String, dynamic> json) =
      _$FfiCommonMessageModelImpl.fromJson;

  @override
  int get flag;
  @override
  int get msgId;
  @override
  int get targetId;
  @override
  FfiChatType get chatType;
  @override
  String get conversationId;
  @override
  FfiMsgType get msgType;
  @override
  int get sendTime;
  @override
  int get serverReceiveTime;
  @override
  int get receiveTime;

  /// Create a copy of FfiCommonMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiCommonMessageModelImplCopyWith<_$FfiCommonMessageModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

FfiReferenceObj _$FfiReferenceObjFromJson(Map<String, dynamic> json) {
  return _FfiReferenceObj.fromJson(json);
}

/// @nodoc
mixin _$FfiReferenceObj {
  int get msgId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  FfiMsgType get msgType => throw _privateConstructorUsedError;
  int get uid => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  /// Serializes this FfiReferenceObj to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiReferenceObj
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiReferenceObjCopyWith<FfiReferenceObj> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiReferenceObjCopyWith<$Res> {
  factory $FfiReferenceObjCopyWith(
    FfiReferenceObj value,
    $Res Function(FfiReferenceObj) then,
  ) = _$FfiReferenceObjCopyWithImpl<$Res, FfiReferenceObj>;
  @useResult
  $Res call({
    int msgId,
    String content,
    FfiMsgType msgType,
    int uid,
    String nickname,
  });
}

/// @nodoc
class _$FfiReferenceObjCopyWithImpl<$Res, $Val extends FfiReferenceObj>
    implements $FfiReferenceObjCopyWith<$Res> {
  _$FfiReferenceObjCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiReferenceObj
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgId = null,
    Object? content = null,
    Object? msgType = null,
    Object? uid = null,
    Object? nickname = null,
  }) {
    return _then(
      _value.copyWith(
            msgId:
                null == msgId
                    ? _value.msgId
                    : msgId // ignore: cast_nullable_to_non_nullable
                        as int,
            content:
                null == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String,
            msgType:
                null == msgType
                    ? _value.msgType
                    : msgType // ignore: cast_nullable_to_non_nullable
                        as FfiMsgType,
            uid:
                null == uid
                    ? _value.uid
                    : uid // ignore: cast_nullable_to_non_nullable
                        as int,
            nickname:
                null == nickname
                    ? _value.nickname
                    : nickname // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiReferenceObjImplCopyWith<$Res>
    implements $FfiReferenceObjCopyWith<$Res> {
  factory _$$FfiReferenceObjImplCopyWith(
    _$FfiReferenceObjImpl value,
    $Res Function(_$FfiReferenceObjImpl) then,
  ) = __$$FfiReferenceObjImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int msgId,
    String content,
    FfiMsgType msgType,
    int uid,
    String nickname,
  });
}

/// @nodoc
class __$$FfiReferenceObjImplCopyWithImpl<$Res>
    extends _$FfiReferenceObjCopyWithImpl<$Res, _$FfiReferenceObjImpl>
    implements _$$FfiReferenceObjImplCopyWith<$Res> {
  __$$FfiReferenceObjImplCopyWithImpl(
    _$FfiReferenceObjImpl _value,
    $Res Function(_$FfiReferenceObjImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiReferenceObj
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgId = null,
    Object? content = null,
    Object? msgType = null,
    Object? uid = null,
    Object? nickname = null,
  }) {
    return _then(
      _$FfiReferenceObjImpl(
        msgId:
            null == msgId
                ? _value.msgId
                : msgId // ignore: cast_nullable_to_non_nullable
                    as int,
        content:
            null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String,
        msgType:
            null == msgType
                ? _value.msgType
                : msgType // ignore: cast_nullable_to_non_nullable
                    as FfiMsgType,
        uid:
            null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                    as int,
        nickname:
            null == nickname
                ? _value.nickname
                : nickname // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiReferenceObjImpl extends _FfiReferenceObj {
  const _$FfiReferenceObjImpl({
    required this.msgId,
    required this.content,
    required this.msgType,
    required this.uid,
    required this.nickname,
  }) : super._();

  factory _$FfiReferenceObjImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiReferenceObjImplFromJson(json);

  @override
  final int msgId;
  @override
  final String content;
  @override
  final FfiMsgType msgType;
  @override
  final int uid;
  @override
  final String nickname;

  @override
  String toString() {
    return 'FfiReferenceObj(msgId: $msgId, content: $content, msgType: $msgType, uid: $uid, nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiReferenceObjImpl &&
            (identical(other.msgId, msgId) || other.msgId == msgId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.msgType, msgType) || other.msgType == msgType) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, msgId, content, msgType, uid, nickname);

  /// Create a copy of FfiReferenceObj
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiReferenceObjImplCopyWith<_$FfiReferenceObjImpl> get copyWith =>
      __$$FfiReferenceObjImplCopyWithImpl<_$FfiReferenceObjImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiReferenceObjImplToJson(this);
  }
}

abstract class _FfiReferenceObj extends FfiReferenceObj {
  const factory _FfiReferenceObj({
    required final int msgId,
    required final String content,
    required final FfiMsgType msgType,
    required final int uid,
    required final String nickname,
  }) = _$FfiReferenceObjImpl;
  const _FfiReferenceObj._() : super._();

  factory _FfiReferenceObj.fromJson(Map<String, dynamic> json) =
      _$FfiReferenceObjImpl.fromJson;

  @override
  int get msgId;
  @override
  String get content;
  @override
  FfiMsgType get msgType;
  @override
  int get uid;
  @override
  String get nickname;

  /// Create a copy of FfiReferenceObj
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiReferenceObjImplCopyWith<_$FfiReferenceObjImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
