// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/conversation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiConversation _$FfiConversationFromJson(Map<String, dynamic> json) {
  return _FfiConversation.fromJson(json);
}

/// @nodoc
mixin _$FfiConversation {
  String get conversationId => throw _privateConstructorUsedError;
  FfiChatType get chatType => throw _privateConstructorUsedError;
  int get targetId => throw _privateConstructorUsedError;
  String get lastMessage => throw _privateConstructorUsedError;
  int get lastMessageTime => throw _privateConstructorUsedError;
  FfiMsgType get lastMessageType => throw _privateConstructorUsedError;
  int get senderUid => throw _privateConstructorUsedError;
  String get senderName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  bool get isTopPinned => throw _privateConstructorUsedError;
  bool get isMuted => throw _privateConstructorUsedError;
  int? get topPinnedAt => throw _privateConstructorUsedError;
  bool get isArchive => throw _privateConstructorUsedError;

  /// Serializes this FfiConversation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiConversation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiConversationCopyWith<FfiConversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiConversationCopyWith<$Res> {
  factory $FfiConversationCopyWith(
    FfiConversation value,
    $Res Function(FfiConversation) then,
  ) = _$FfiConversationCopyWithImpl<$Res, FfiConversation>;
  @useResult
  $Res call({
    String conversationId,
    FfiChatType chatType,
    int targetId,
    String lastMessage,
    int lastMessageTime,
    FfiMsgType lastMessageType,
    int senderUid,
    String senderName,
    String name,
    String? avatar,
    int unreadCount,
    bool isTopPinned,
    bool isMuted,
    int? topPinnedAt,
    bool isArchive,
  });
}

/// @nodoc
class _$FfiConversationCopyWithImpl<$Res, $Val extends FfiConversation>
    implements $FfiConversationCopyWith<$Res> {
  _$FfiConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiConversation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? chatType = null,
    Object? targetId = null,
    Object? lastMessage = null,
    Object? lastMessageTime = null,
    Object? lastMessageType = null,
    Object? senderUid = null,
    Object? senderName = null,
    Object? name = null,
    Object? avatar = freezed,
    Object? unreadCount = null,
    Object? isTopPinned = null,
    Object? isMuted = null,
    Object? topPinnedAt = freezed,
    Object? isArchive = null,
  }) {
    return _then(
      _value.copyWith(
            conversationId:
                null == conversationId
                    ? _value.conversationId
                    : conversationId // ignore: cast_nullable_to_non_nullable
                        as String,
            chatType:
                null == chatType
                    ? _value.chatType
                    : chatType // ignore: cast_nullable_to_non_nullable
                        as FfiChatType,
            targetId:
                null == targetId
                    ? _value.targetId
                    : targetId // ignore: cast_nullable_to_non_nullable
                        as int,
            lastMessage:
                null == lastMessage
                    ? _value.lastMessage
                    : lastMessage // ignore: cast_nullable_to_non_nullable
                        as String,
            lastMessageTime:
                null == lastMessageTime
                    ? _value.lastMessageTime
                    : lastMessageTime // ignore: cast_nullable_to_non_nullable
                        as int,
            lastMessageType:
                null == lastMessageType
                    ? _value.lastMessageType
                    : lastMessageType // ignore: cast_nullable_to_non_nullable
                        as FfiMsgType,
            senderUid:
                null == senderUid
                    ? _value.senderUid
                    : senderUid // ignore: cast_nullable_to_non_nullable
                        as int,
            senderName:
                null == senderName
                    ? _value.senderName
                    : senderName // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            avatar:
                freezed == avatar
                    ? _value.avatar
                    : avatar // ignore: cast_nullable_to_non_nullable
                        as String?,
            unreadCount:
                null == unreadCount
                    ? _value.unreadCount
                    : unreadCount // ignore: cast_nullable_to_non_nullable
                        as int,
            isTopPinned:
                null == isTopPinned
                    ? _value.isTopPinned
                    : isTopPinned // ignore: cast_nullable_to_non_nullable
                        as bool,
            isMuted:
                null == isMuted
                    ? _value.isMuted
                    : isMuted // ignore: cast_nullable_to_non_nullable
                        as bool,
            topPinnedAt:
                freezed == topPinnedAt
                    ? _value.topPinnedAt
                    : topPinnedAt // ignore: cast_nullable_to_non_nullable
                        as int?,
            isArchive:
                null == isArchive
                    ? _value.isArchive
                    : isArchive // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiConversationImplCopyWith<$Res>
    implements $FfiConversationCopyWith<$Res> {
  factory _$$FfiConversationImplCopyWith(
    _$FfiConversationImpl value,
    $Res Function(_$FfiConversationImpl) then,
  ) = __$$FfiConversationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String conversationId,
    FfiChatType chatType,
    int targetId,
    String lastMessage,
    int lastMessageTime,
    FfiMsgType lastMessageType,
    int senderUid,
    String senderName,
    String name,
    String? avatar,
    int unreadCount,
    bool isTopPinned,
    bool isMuted,
    int? topPinnedAt,
    bool isArchive,
  });
}

/// @nodoc
class __$$FfiConversationImplCopyWithImpl<$Res>
    extends _$FfiConversationCopyWithImpl<$Res, _$FfiConversationImpl>
    implements _$$FfiConversationImplCopyWith<$Res> {
  __$$FfiConversationImplCopyWithImpl(
    _$FfiConversationImpl _value,
    $Res Function(_$FfiConversationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiConversation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? chatType = null,
    Object? targetId = null,
    Object? lastMessage = null,
    Object? lastMessageTime = null,
    Object? lastMessageType = null,
    Object? senderUid = null,
    Object? senderName = null,
    Object? name = null,
    Object? avatar = freezed,
    Object? unreadCount = null,
    Object? isTopPinned = null,
    Object? isMuted = null,
    Object? topPinnedAt = freezed,
    Object? isArchive = null,
  }) {
    return _then(
      _$FfiConversationImpl(
        conversationId:
            null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                    as String,
        chatType:
            null == chatType
                ? _value.chatType
                : chatType // ignore: cast_nullable_to_non_nullable
                    as FfiChatType,
        targetId:
            null == targetId
                ? _value.targetId
                : targetId // ignore: cast_nullable_to_non_nullable
                    as int,
        lastMessage:
            null == lastMessage
                ? _value.lastMessage
                : lastMessage // ignore: cast_nullable_to_non_nullable
                    as String,
        lastMessageTime:
            null == lastMessageTime
                ? _value.lastMessageTime
                : lastMessageTime // ignore: cast_nullable_to_non_nullable
                    as int,
        lastMessageType:
            null == lastMessageType
                ? _value.lastMessageType
                : lastMessageType // ignore: cast_nullable_to_non_nullable
                    as FfiMsgType,
        senderUid:
            null == senderUid
                ? _value.senderUid
                : senderUid // ignore: cast_nullable_to_non_nullable
                    as int,
        senderName:
            null == senderName
                ? _value.senderName
                : senderName // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        avatar:
            freezed == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                    as String?,
        unreadCount:
            null == unreadCount
                ? _value.unreadCount
                : unreadCount // ignore: cast_nullable_to_non_nullable
                    as int,
        isTopPinned:
            null == isTopPinned
                ? _value.isTopPinned
                : isTopPinned // ignore: cast_nullable_to_non_nullable
                    as bool,
        isMuted:
            null == isMuted
                ? _value.isMuted
                : isMuted // ignore: cast_nullable_to_non_nullable
                    as bool,
        topPinnedAt:
            freezed == topPinnedAt
                ? _value.topPinnedAt
                : topPinnedAt // ignore: cast_nullable_to_non_nullable
                    as int?,
        isArchive:
            null == isArchive
                ? _value.isArchive
                : isArchive // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiConversationImpl implements _FfiConversation {
  const _$FfiConversationImpl({
    required this.conversationId,
    required this.chatType,
    required this.targetId,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.lastMessageType,
    required this.senderUid,
    required this.senderName,
    required this.name,
    this.avatar,
    required this.unreadCount,
    required this.isTopPinned,
    required this.isMuted,
    this.topPinnedAt,
    required this.isArchive,
  });

  factory _$FfiConversationImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiConversationImplFromJson(json);

  @override
  final String conversationId;
  @override
  final FfiChatType chatType;
  @override
  final int targetId;
  @override
  final String lastMessage;
  @override
  final int lastMessageTime;
  @override
  final FfiMsgType lastMessageType;
  @override
  final int senderUid;
  @override
  final String senderName;
  @override
  final String name;
  @override
  final String? avatar;
  @override
  final int unreadCount;
  @override
  final bool isTopPinned;
  @override
  final bool isMuted;
  @override
  final int? topPinnedAt;
  @override
  final bool isArchive;

  @override
  String toString() {
    return 'FfiConversation(conversationId: $conversationId, chatType: $chatType, targetId: $targetId, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime, lastMessageType: $lastMessageType, senderUid: $senderUid, senderName: $senderName, name: $name, avatar: $avatar, unreadCount: $unreadCount, isTopPinned: $isTopPinned, isMuted: $isMuted, topPinnedAt: $topPinnedAt, isArchive: $isArchive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiConversationImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.chatType, chatType) ||
                other.chatType == chatType) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastMessageTime, lastMessageTime) ||
                other.lastMessageTime == lastMessageTime) &&
            (identical(other.lastMessageType, lastMessageType) ||
                other.lastMessageType == lastMessageType) &&
            (identical(other.senderUid, senderUid) ||
                other.senderUid == senderUid) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.isTopPinned, isTopPinned) ||
                other.isTopPinned == isTopPinned) &&
            (identical(other.isMuted, isMuted) || other.isMuted == isMuted) &&
            (identical(other.topPinnedAt, topPinnedAt) ||
                other.topPinnedAt == topPinnedAt) &&
            (identical(other.isArchive, isArchive) ||
                other.isArchive == isArchive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    conversationId,
    chatType,
    targetId,
    lastMessage,
    lastMessageTime,
    lastMessageType,
    senderUid,
    senderName,
    name,
    avatar,
    unreadCount,
    isTopPinned,
    isMuted,
    topPinnedAt,
    isArchive,
  );

  /// Create a copy of FfiConversation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiConversationImplCopyWith<_$FfiConversationImpl> get copyWith =>
      __$$FfiConversationImplCopyWithImpl<_$FfiConversationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiConversationImplToJson(this);
  }
}

abstract class _FfiConversation implements FfiConversation {
  const factory _FfiConversation({
    required final String conversationId,
    required final FfiChatType chatType,
    required final int targetId,
    required final String lastMessage,
    required final int lastMessageTime,
    required final FfiMsgType lastMessageType,
    required final int senderUid,
    required final String senderName,
    required final String name,
    final String? avatar,
    required final int unreadCount,
    required final bool isTopPinned,
    required final bool isMuted,
    final int? topPinnedAt,
    required final bool isArchive,
  }) = _$FfiConversationImpl;

  factory _FfiConversation.fromJson(Map<String, dynamic> json) =
      _$FfiConversationImpl.fromJson;

  @override
  String get conversationId;
  @override
  FfiChatType get chatType;
  @override
  int get targetId;
  @override
  String get lastMessage;
  @override
  int get lastMessageTime;
  @override
  FfiMsgType get lastMessageType;
  @override
  int get senderUid;
  @override
  String get senderName;
  @override
  String get name;
  @override
  String? get avatar;
  @override
  int get unreadCount;
  @override
  bool get isTopPinned;
  @override
  bool get isMuted;
  @override
  int? get topPinnedAt;
  @override
  bool get isArchive;

  /// Create a copy of FfiConversation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiConversationImplCopyWith<_$FfiConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
