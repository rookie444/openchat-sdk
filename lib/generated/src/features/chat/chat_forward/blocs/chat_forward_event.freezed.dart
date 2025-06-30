// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../../src/features/chat/chat_forward/blocs/chat_forward_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatForwardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )
    initialized,
    required TResult Function(String query) searchContacts,
    required TResult Function() loadRecentSessions,
    required TResult Function(String friendId) selectFriend,
    required TResult Function(String groupId) selectGroup,
    required TResult Function(String channelId) selectChannel,
    required TResult Function(String sessionId) selectRecentSession,
    required TResult Function(String targetId, FfiChatType targetChatType)
    forwardMessages,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult? Function(String query)? searchContacts,
    TResult? Function()? loadRecentSessions,
    TResult? Function(String friendId)? selectFriend,
    TResult? Function(String groupId)? selectGroup,
    TResult? Function(String channelId)? selectChannel,
    TResult? Function(String sessionId)? selectRecentSession,
    TResult? Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult Function(String query)? searchContacts,
    TResult Function()? loadRecentSessions,
    TResult Function(String friendId)? selectFriend,
    TResult Function(String groupId)? selectGroup,
    TResult Function(String channelId)? selectChannel,
    TResult Function(String sessionId)? selectRecentSession,
    TResult Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchContacts value) searchContacts,
    required TResult Function(_LoadRecentSessions value) loadRecentSessions,
    required TResult Function(_SelectFriend value) selectFriend,
    required TResult Function(_SelectGroup value) selectGroup,
    required TResult Function(_SelectChannel value) selectChannel,
    required TResult Function(_SelectRecentSession value) selectRecentSession,
    required TResult Function(_ForwardMessages value) forwardMessages,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchContacts value)? searchContacts,
    TResult? Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult? Function(_SelectFriend value)? selectFriend,
    TResult? Function(_SelectGroup value)? selectGroup,
    TResult? Function(_SelectChannel value)? selectChannel,
    TResult? Function(_SelectRecentSession value)? selectRecentSession,
    TResult? Function(_ForwardMessages value)? forwardMessages,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchContacts value)? searchContacts,
    TResult Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult Function(_SelectFriend value)? selectFriend,
    TResult Function(_SelectGroup value)? selectGroup,
    TResult Function(_SelectChannel value)? selectChannel,
    TResult Function(_SelectRecentSession value)? selectRecentSession,
    TResult Function(_ForwardMessages value)? forwardMessages,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatForwardEventCopyWith<$Res> {
  factory $ChatForwardEventCopyWith(
    ChatForwardEvent value,
    $Res Function(ChatForwardEvent) then,
  ) = _$ChatForwardEventCopyWithImpl<$Res, ChatForwardEvent>;
}

/// @nodoc
class _$ChatForwardEventCopyWithImpl<$Res, $Val extends ChatForwardEvent>
    implements $ChatForwardEventCopyWith<$Res> {
  _$ChatForwardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
    _$InitializedImpl value,
    $Res Function(_$InitializedImpl) then,
  ) = __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    List<ChatMessage> messagesToForward,
    FfiChatType? chatType,
    int? targetId,
  });
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$ChatForwardEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
    _$InitializedImpl _value,
    $Res Function(_$InitializedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messagesToForward = null,
    Object? chatType = freezed,
    Object? targetId = freezed,
  }) {
    return _then(
      _$InitializedImpl(
        messagesToForward:
            null == messagesToForward
                ? _value._messagesToForward
                : messagesToForward // ignore: cast_nullable_to_non_nullable
                    as List<ChatMessage>,
        chatType:
            freezed == chatType
                ? _value.chatType
                : chatType // ignore: cast_nullable_to_non_nullable
                    as FfiChatType?,
        targetId:
            freezed == targetId
                ? _value.targetId
                : targetId // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl({
    required final List<ChatMessage> messagesToForward,
    this.chatType,
    this.targetId,
  }) : _messagesToForward = messagesToForward;

  final List<ChatMessage> _messagesToForward;
  @override
  List<ChatMessage> get messagesToForward {
    if (_messagesToForward is EqualUnmodifiableListView)
      return _messagesToForward;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messagesToForward);
  }

  @override
  final FfiChatType? chatType;
  @override
  final int? targetId;

  @override
  String toString() {
    return 'ChatForwardEvent.initialized(messagesToForward: $messagesToForward, chatType: $chatType, targetId: $targetId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            const DeepCollectionEquality().equals(
              other._messagesToForward,
              _messagesToForward,
            ) &&
            (identical(other.chatType, chatType) ||
                other.chatType == chatType) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_messagesToForward),
    chatType,
    targetId,
  );

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )
    initialized,
    required TResult Function(String query) searchContacts,
    required TResult Function() loadRecentSessions,
    required TResult Function(String friendId) selectFriend,
    required TResult Function(String groupId) selectGroup,
    required TResult Function(String channelId) selectChannel,
    required TResult Function(String sessionId) selectRecentSession,
    required TResult Function(String targetId, FfiChatType targetChatType)
    forwardMessages,
  }) {
    return initialized(messagesToForward, chatType, targetId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult? Function(String query)? searchContacts,
    TResult? Function()? loadRecentSessions,
    TResult? Function(String friendId)? selectFriend,
    TResult? Function(String groupId)? selectGroup,
    TResult? Function(String channelId)? selectChannel,
    TResult? Function(String sessionId)? selectRecentSession,
    TResult? Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
  }) {
    return initialized?.call(messagesToForward, chatType, targetId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult Function(String query)? searchContacts,
    TResult Function()? loadRecentSessions,
    TResult Function(String friendId)? selectFriend,
    TResult Function(String groupId)? selectGroup,
    TResult Function(String channelId)? selectChannel,
    TResult Function(String sessionId)? selectRecentSession,
    TResult Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(messagesToForward, chatType, targetId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchContacts value) searchContacts,
    required TResult Function(_LoadRecentSessions value) loadRecentSessions,
    required TResult Function(_SelectFriend value) selectFriend,
    required TResult Function(_SelectGroup value) selectGroup,
    required TResult Function(_SelectChannel value) selectChannel,
    required TResult Function(_SelectRecentSession value) selectRecentSession,
    required TResult Function(_ForwardMessages value) forwardMessages,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchContacts value)? searchContacts,
    TResult? Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult? Function(_SelectFriend value)? selectFriend,
    TResult? Function(_SelectGroup value)? selectGroup,
    TResult? Function(_SelectChannel value)? selectChannel,
    TResult? Function(_SelectRecentSession value)? selectRecentSession,
    TResult? Function(_ForwardMessages value)? forwardMessages,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchContacts value)? searchContacts,
    TResult Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult Function(_SelectFriend value)? selectFriend,
    TResult Function(_SelectGroup value)? selectGroup,
    TResult Function(_SelectChannel value)? selectChannel,
    TResult Function(_SelectRecentSession value)? selectRecentSession,
    TResult Function(_ForwardMessages value)? forwardMessages,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ChatForwardEvent {
  const factory _Initialized({
    required final List<ChatMessage> messagesToForward,
    final FfiChatType? chatType,
    final int? targetId,
  }) = _$InitializedImpl;

  List<ChatMessage> get messagesToForward;
  FfiChatType? get chatType;
  int? get targetId;

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchContactsImplCopyWith<$Res> {
  factory _$$SearchContactsImplCopyWith(
    _$SearchContactsImpl value,
    $Res Function(_$SearchContactsImpl) then,
  ) = __$$SearchContactsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchContactsImplCopyWithImpl<$Res>
    extends _$ChatForwardEventCopyWithImpl<$Res, _$SearchContactsImpl>
    implements _$$SearchContactsImplCopyWith<$Res> {
  __$$SearchContactsImplCopyWithImpl(
    _$SearchContactsImpl _value,
    $Res Function(_$SearchContactsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$SearchContactsImpl(
        null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SearchContactsImpl implements _SearchContacts {
  const _$SearchContactsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ChatForwardEvent.searchContacts(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchContactsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchContactsImplCopyWith<_$SearchContactsImpl> get copyWith =>
      __$$SearchContactsImplCopyWithImpl<_$SearchContactsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )
    initialized,
    required TResult Function(String query) searchContacts,
    required TResult Function() loadRecentSessions,
    required TResult Function(String friendId) selectFriend,
    required TResult Function(String groupId) selectGroup,
    required TResult Function(String channelId) selectChannel,
    required TResult Function(String sessionId) selectRecentSession,
    required TResult Function(String targetId, FfiChatType targetChatType)
    forwardMessages,
  }) {
    return searchContacts(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult? Function(String query)? searchContacts,
    TResult? Function()? loadRecentSessions,
    TResult? Function(String friendId)? selectFriend,
    TResult? Function(String groupId)? selectGroup,
    TResult? Function(String channelId)? selectChannel,
    TResult? Function(String sessionId)? selectRecentSession,
    TResult? Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
  }) {
    return searchContacts?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult Function(String query)? searchContacts,
    TResult Function()? loadRecentSessions,
    TResult Function(String friendId)? selectFriend,
    TResult Function(String groupId)? selectGroup,
    TResult Function(String channelId)? selectChannel,
    TResult Function(String sessionId)? selectRecentSession,
    TResult Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
    required TResult orElse(),
  }) {
    if (searchContacts != null) {
      return searchContacts(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchContacts value) searchContacts,
    required TResult Function(_LoadRecentSessions value) loadRecentSessions,
    required TResult Function(_SelectFriend value) selectFriend,
    required TResult Function(_SelectGroup value) selectGroup,
    required TResult Function(_SelectChannel value) selectChannel,
    required TResult Function(_SelectRecentSession value) selectRecentSession,
    required TResult Function(_ForwardMessages value) forwardMessages,
  }) {
    return searchContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchContacts value)? searchContacts,
    TResult? Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult? Function(_SelectFriend value)? selectFriend,
    TResult? Function(_SelectGroup value)? selectGroup,
    TResult? Function(_SelectChannel value)? selectChannel,
    TResult? Function(_SelectRecentSession value)? selectRecentSession,
    TResult? Function(_ForwardMessages value)? forwardMessages,
  }) {
    return searchContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchContacts value)? searchContacts,
    TResult Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult Function(_SelectFriend value)? selectFriend,
    TResult Function(_SelectGroup value)? selectGroup,
    TResult Function(_SelectChannel value)? selectChannel,
    TResult Function(_SelectRecentSession value)? selectRecentSession,
    TResult Function(_ForwardMessages value)? forwardMessages,
    required TResult orElse(),
  }) {
    if (searchContacts != null) {
      return searchContacts(this);
    }
    return orElse();
  }
}

abstract class _SearchContacts implements ChatForwardEvent {
  const factory _SearchContacts(final String query) = _$SearchContactsImpl;

  String get query;

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchContactsImplCopyWith<_$SearchContactsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadRecentSessionsImplCopyWith<$Res> {
  factory _$$LoadRecentSessionsImplCopyWith(
    _$LoadRecentSessionsImpl value,
    $Res Function(_$LoadRecentSessionsImpl) then,
  ) = __$$LoadRecentSessionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadRecentSessionsImplCopyWithImpl<$Res>
    extends _$ChatForwardEventCopyWithImpl<$Res, _$LoadRecentSessionsImpl>
    implements _$$LoadRecentSessionsImplCopyWith<$Res> {
  __$$LoadRecentSessionsImplCopyWithImpl(
    _$LoadRecentSessionsImpl _value,
    $Res Function(_$LoadRecentSessionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadRecentSessionsImpl implements _LoadRecentSessions {
  const _$LoadRecentSessionsImpl();

  @override
  String toString() {
    return 'ChatForwardEvent.loadRecentSessions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadRecentSessionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )
    initialized,
    required TResult Function(String query) searchContacts,
    required TResult Function() loadRecentSessions,
    required TResult Function(String friendId) selectFriend,
    required TResult Function(String groupId) selectGroup,
    required TResult Function(String channelId) selectChannel,
    required TResult Function(String sessionId) selectRecentSession,
    required TResult Function(String targetId, FfiChatType targetChatType)
    forwardMessages,
  }) {
    return loadRecentSessions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult? Function(String query)? searchContacts,
    TResult? Function()? loadRecentSessions,
    TResult? Function(String friendId)? selectFriend,
    TResult? Function(String groupId)? selectGroup,
    TResult? Function(String channelId)? selectChannel,
    TResult? Function(String sessionId)? selectRecentSession,
    TResult? Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
  }) {
    return loadRecentSessions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult Function(String query)? searchContacts,
    TResult Function()? loadRecentSessions,
    TResult Function(String friendId)? selectFriend,
    TResult Function(String groupId)? selectGroup,
    TResult Function(String channelId)? selectChannel,
    TResult Function(String sessionId)? selectRecentSession,
    TResult Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
    required TResult orElse(),
  }) {
    if (loadRecentSessions != null) {
      return loadRecentSessions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchContacts value) searchContacts,
    required TResult Function(_LoadRecentSessions value) loadRecentSessions,
    required TResult Function(_SelectFriend value) selectFriend,
    required TResult Function(_SelectGroup value) selectGroup,
    required TResult Function(_SelectChannel value) selectChannel,
    required TResult Function(_SelectRecentSession value) selectRecentSession,
    required TResult Function(_ForwardMessages value) forwardMessages,
  }) {
    return loadRecentSessions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchContacts value)? searchContacts,
    TResult? Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult? Function(_SelectFriend value)? selectFriend,
    TResult? Function(_SelectGroup value)? selectGroup,
    TResult? Function(_SelectChannel value)? selectChannel,
    TResult? Function(_SelectRecentSession value)? selectRecentSession,
    TResult? Function(_ForwardMessages value)? forwardMessages,
  }) {
    return loadRecentSessions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchContacts value)? searchContacts,
    TResult Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult Function(_SelectFriend value)? selectFriend,
    TResult Function(_SelectGroup value)? selectGroup,
    TResult Function(_SelectChannel value)? selectChannel,
    TResult Function(_SelectRecentSession value)? selectRecentSession,
    TResult Function(_ForwardMessages value)? forwardMessages,
    required TResult orElse(),
  }) {
    if (loadRecentSessions != null) {
      return loadRecentSessions(this);
    }
    return orElse();
  }
}

abstract class _LoadRecentSessions implements ChatForwardEvent {
  const factory _LoadRecentSessions() = _$LoadRecentSessionsImpl;
}

/// @nodoc
abstract class _$$SelectFriendImplCopyWith<$Res> {
  factory _$$SelectFriendImplCopyWith(
    _$SelectFriendImpl value,
    $Res Function(_$SelectFriendImpl) then,
  ) = __$$SelectFriendImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String friendId});
}

/// @nodoc
class __$$SelectFriendImplCopyWithImpl<$Res>
    extends _$ChatForwardEventCopyWithImpl<$Res, _$SelectFriendImpl>
    implements _$$SelectFriendImplCopyWith<$Res> {
  __$$SelectFriendImplCopyWithImpl(
    _$SelectFriendImpl _value,
    $Res Function(_$SelectFriendImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? friendId = null}) {
    return _then(
      _$SelectFriendImpl(
        null == friendId
            ? _value.friendId
            : friendId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SelectFriendImpl implements _SelectFriend {
  const _$SelectFriendImpl(this.friendId);

  @override
  final String friendId;

  @override
  String toString() {
    return 'ChatForwardEvent.selectFriend(friendId: $friendId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectFriendImpl &&
            (identical(other.friendId, friendId) ||
                other.friendId == friendId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, friendId);

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectFriendImplCopyWith<_$SelectFriendImpl> get copyWith =>
      __$$SelectFriendImplCopyWithImpl<_$SelectFriendImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )
    initialized,
    required TResult Function(String query) searchContacts,
    required TResult Function() loadRecentSessions,
    required TResult Function(String friendId) selectFriend,
    required TResult Function(String groupId) selectGroup,
    required TResult Function(String channelId) selectChannel,
    required TResult Function(String sessionId) selectRecentSession,
    required TResult Function(String targetId, FfiChatType targetChatType)
    forwardMessages,
  }) {
    return selectFriend(friendId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult? Function(String query)? searchContacts,
    TResult? Function()? loadRecentSessions,
    TResult? Function(String friendId)? selectFriend,
    TResult? Function(String groupId)? selectGroup,
    TResult? Function(String channelId)? selectChannel,
    TResult? Function(String sessionId)? selectRecentSession,
    TResult? Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
  }) {
    return selectFriend?.call(friendId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult Function(String query)? searchContacts,
    TResult Function()? loadRecentSessions,
    TResult Function(String friendId)? selectFriend,
    TResult Function(String groupId)? selectGroup,
    TResult Function(String channelId)? selectChannel,
    TResult Function(String sessionId)? selectRecentSession,
    TResult Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
    required TResult orElse(),
  }) {
    if (selectFriend != null) {
      return selectFriend(friendId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchContacts value) searchContacts,
    required TResult Function(_LoadRecentSessions value) loadRecentSessions,
    required TResult Function(_SelectFriend value) selectFriend,
    required TResult Function(_SelectGroup value) selectGroup,
    required TResult Function(_SelectChannel value) selectChannel,
    required TResult Function(_SelectRecentSession value) selectRecentSession,
    required TResult Function(_ForwardMessages value) forwardMessages,
  }) {
    return selectFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchContacts value)? searchContacts,
    TResult? Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult? Function(_SelectFriend value)? selectFriend,
    TResult? Function(_SelectGroup value)? selectGroup,
    TResult? Function(_SelectChannel value)? selectChannel,
    TResult? Function(_SelectRecentSession value)? selectRecentSession,
    TResult? Function(_ForwardMessages value)? forwardMessages,
  }) {
    return selectFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchContacts value)? searchContacts,
    TResult Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult Function(_SelectFriend value)? selectFriend,
    TResult Function(_SelectGroup value)? selectGroup,
    TResult Function(_SelectChannel value)? selectChannel,
    TResult Function(_SelectRecentSession value)? selectRecentSession,
    TResult Function(_ForwardMessages value)? forwardMessages,
    required TResult orElse(),
  }) {
    if (selectFriend != null) {
      return selectFriend(this);
    }
    return orElse();
  }
}

abstract class _SelectFriend implements ChatForwardEvent {
  const factory _SelectFriend(final String friendId) = _$SelectFriendImpl;

  String get friendId;

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectFriendImplCopyWith<_$SelectFriendImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectGroupImplCopyWith<$Res> {
  factory _$$SelectGroupImplCopyWith(
    _$SelectGroupImpl value,
    $Res Function(_$SelectGroupImpl) then,
  ) = __$$SelectGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String groupId});
}

/// @nodoc
class __$$SelectGroupImplCopyWithImpl<$Res>
    extends _$ChatForwardEventCopyWithImpl<$Res, _$SelectGroupImpl>
    implements _$$SelectGroupImplCopyWith<$Res> {
  __$$SelectGroupImplCopyWithImpl(
    _$SelectGroupImpl _value,
    $Res Function(_$SelectGroupImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? groupId = null}) {
    return _then(
      _$SelectGroupImpl(
        null == groupId
            ? _value.groupId
            : groupId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SelectGroupImpl implements _SelectGroup {
  const _$SelectGroupImpl(this.groupId);

  @override
  final String groupId;

  @override
  String toString() {
    return 'ChatForwardEvent.selectGroup(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectGroupImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectGroupImplCopyWith<_$SelectGroupImpl> get copyWith =>
      __$$SelectGroupImplCopyWithImpl<_$SelectGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )
    initialized,
    required TResult Function(String query) searchContacts,
    required TResult Function() loadRecentSessions,
    required TResult Function(String friendId) selectFriend,
    required TResult Function(String groupId) selectGroup,
    required TResult Function(String channelId) selectChannel,
    required TResult Function(String sessionId) selectRecentSession,
    required TResult Function(String targetId, FfiChatType targetChatType)
    forwardMessages,
  }) {
    return selectGroup(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult? Function(String query)? searchContacts,
    TResult? Function()? loadRecentSessions,
    TResult? Function(String friendId)? selectFriend,
    TResult? Function(String groupId)? selectGroup,
    TResult? Function(String channelId)? selectChannel,
    TResult? Function(String sessionId)? selectRecentSession,
    TResult? Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
  }) {
    return selectGroup?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult Function(String query)? searchContacts,
    TResult Function()? loadRecentSessions,
    TResult Function(String friendId)? selectFriend,
    TResult Function(String groupId)? selectGroup,
    TResult Function(String channelId)? selectChannel,
    TResult Function(String sessionId)? selectRecentSession,
    TResult Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
    required TResult orElse(),
  }) {
    if (selectGroup != null) {
      return selectGroup(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchContacts value) searchContacts,
    required TResult Function(_LoadRecentSessions value) loadRecentSessions,
    required TResult Function(_SelectFriend value) selectFriend,
    required TResult Function(_SelectGroup value) selectGroup,
    required TResult Function(_SelectChannel value) selectChannel,
    required TResult Function(_SelectRecentSession value) selectRecentSession,
    required TResult Function(_ForwardMessages value) forwardMessages,
  }) {
    return selectGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchContacts value)? searchContacts,
    TResult? Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult? Function(_SelectFriend value)? selectFriend,
    TResult? Function(_SelectGroup value)? selectGroup,
    TResult? Function(_SelectChannel value)? selectChannel,
    TResult? Function(_SelectRecentSession value)? selectRecentSession,
    TResult? Function(_ForwardMessages value)? forwardMessages,
  }) {
    return selectGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchContacts value)? searchContacts,
    TResult Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult Function(_SelectFriend value)? selectFriend,
    TResult Function(_SelectGroup value)? selectGroup,
    TResult Function(_SelectChannel value)? selectChannel,
    TResult Function(_SelectRecentSession value)? selectRecentSession,
    TResult Function(_ForwardMessages value)? forwardMessages,
    required TResult orElse(),
  }) {
    if (selectGroup != null) {
      return selectGroup(this);
    }
    return orElse();
  }
}

abstract class _SelectGroup implements ChatForwardEvent {
  const factory _SelectGroup(final String groupId) = _$SelectGroupImpl;

  String get groupId;

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectGroupImplCopyWith<_$SelectGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectChannelImplCopyWith<$Res> {
  factory _$$SelectChannelImplCopyWith(
    _$SelectChannelImpl value,
    $Res Function(_$SelectChannelImpl) then,
  ) = __$$SelectChannelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String channelId});
}

/// @nodoc
class __$$SelectChannelImplCopyWithImpl<$Res>
    extends _$ChatForwardEventCopyWithImpl<$Res, _$SelectChannelImpl>
    implements _$$SelectChannelImplCopyWith<$Res> {
  __$$SelectChannelImplCopyWithImpl(
    _$SelectChannelImpl _value,
    $Res Function(_$SelectChannelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? channelId = null}) {
    return _then(
      _$SelectChannelImpl(
        null == channelId
            ? _value.channelId
            : channelId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SelectChannelImpl implements _SelectChannel {
  const _$SelectChannelImpl(this.channelId);

  @override
  final String channelId;

  @override
  String toString() {
    return 'ChatForwardEvent.selectChannel(channelId: $channelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectChannelImpl &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channelId);

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectChannelImplCopyWith<_$SelectChannelImpl> get copyWith =>
      __$$SelectChannelImplCopyWithImpl<_$SelectChannelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )
    initialized,
    required TResult Function(String query) searchContacts,
    required TResult Function() loadRecentSessions,
    required TResult Function(String friendId) selectFriend,
    required TResult Function(String groupId) selectGroup,
    required TResult Function(String channelId) selectChannel,
    required TResult Function(String sessionId) selectRecentSession,
    required TResult Function(String targetId, FfiChatType targetChatType)
    forwardMessages,
  }) {
    return selectChannel(channelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult? Function(String query)? searchContacts,
    TResult? Function()? loadRecentSessions,
    TResult? Function(String friendId)? selectFriend,
    TResult? Function(String groupId)? selectGroup,
    TResult? Function(String channelId)? selectChannel,
    TResult? Function(String sessionId)? selectRecentSession,
    TResult? Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
  }) {
    return selectChannel?.call(channelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult Function(String query)? searchContacts,
    TResult Function()? loadRecentSessions,
    TResult Function(String friendId)? selectFriend,
    TResult Function(String groupId)? selectGroup,
    TResult Function(String channelId)? selectChannel,
    TResult Function(String sessionId)? selectRecentSession,
    TResult Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
    required TResult orElse(),
  }) {
    if (selectChannel != null) {
      return selectChannel(channelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchContacts value) searchContacts,
    required TResult Function(_LoadRecentSessions value) loadRecentSessions,
    required TResult Function(_SelectFriend value) selectFriend,
    required TResult Function(_SelectGroup value) selectGroup,
    required TResult Function(_SelectChannel value) selectChannel,
    required TResult Function(_SelectRecentSession value) selectRecentSession,
    required TResult Function(_ForwardMessages value) forwardMessages,
  }) {
    return selectChannel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchContacts value)? searchContacts,
    TResult? Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult? Function(_SelectFriend value)? selectFriend,
    TResult? Function(_SelectGroup value)? selectGroup,
    TResult? Function(_SelectChannel value)? selectChannel,
    TResult? Function(_SelectRecentSession value)? selectRecentSession,
    TResult? Function(_ForwardMessages value)? forwardMessages,
  }) {
    return selectChannel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchContacts value)? searchContacts,
    TResult Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult Function(_SelectFriend value)? selectFriend,
    TResult Function(_SelectGroup value)? selectGroup,
    TResult Function(_SelectChannel value)? selectChannel,
    TResult Function(_SelectRecentSession value)? selectRecentSession,
    TResult Function(_ForwardMessages value)? forwardMessages,
    required TResult orElse(),
  }) {
    if (selectChannel != null) {
      return selectChannel(this);
    }
    return orElse();
  }
}

abstract class _SelectChannel implements ChatForwardEvent {
  const factory _SelectChannel(final String channelId) = _$SelectChannelImpl;

  String get channelId;

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectChannelImplCopyWith<_$SelectChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectRecentSessionImplCopyWith<$Res> {
  factory _$$SelectRecentSessionImplCopyWith(
    _$SelectRecentSessionImpl value,
    $Res Function(_$SelectRecentSessionImpl) then,
  ) = __$$SelectRecentSessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String sessionId});
}

/// @nodoc
class __$$SelectRecentSessionImplCopyWithImpl<$Res>
    extends _$ChatForwardEventCopyWithImpl<$Res, _$SelectRecentSessionImpl>
    implements _$$SelectRecentSessionImplCopyWith<$Res> {
  __$$SelectRecentSessionImplCopyWithImpl(
    _$SelectRecentSessionImpl _value,
    $Res Function(_$SelectRecentSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sessionId = null}) {
    return _then(
      _$SelectRecentSessionImpl(
        null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SelectRecentSessionImpl implements _SelectRecentSession {
  const _$SelectRecentSessionImpl(this.sessionId);

  @override
  final String sessionId;

  @override
  String toString() {
    return 'ChatForwardEvent.selectRecentSession(sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectRecentSessionImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionId);

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectRecentSessionImplCopyWith<_$SelectRecentSessionImpl> get copyWith =>
      __$$SelectRecentSessionImplCopyWithImpl<_$SelectRecentSessionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )
    initialized,
    required TResult Function(String query) searchContacts,
    required TResult Function() loadRecentSessions,
    required TResult Function(String friendId) selectFriend,
    required TResult Function(String groupId) selectGroup,
    required TResult Function(String channelId) selectChannel,
    required TResult Function(String sessionId) selectRecentSession,
    required TResult Function(String targetId, FfiChatType targetChatType)
    forwardMessages,
  }) {
    return selectRecentSession(sessionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult? Function(String query)? searchContacts,
    TResult? Function()? loadRecentSessions,
    TResult? Function(String friendId)? selectFriend,
    TResult? Function(String groupId)? selectGroup,
    TResult? Function(String channelId)? selectChannel,
    TResult? Function(String sessionId)? selectRecentSession,
    TResult? Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
  }) {
    return selectRecentSession?.call(sessionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult Function(String query)? searchContacts,
    TResult Function()? loadRecentSessions,
    TResult Function(String friendId)? selectFriend,
    TResult Function(String groupId)? selectGroup,
    TResult Function(String channelId)? selectChannel,
    TResult Function(String sessionId)? selectRecentSession,
    TResult Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
    required TResult orElse(),
  }) {
    if (selectRecentSession != null) {
      return selectRecentSession(sessionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchContacts value) searchContacts,
    required TResult Function(_LoadRecentSessions value) loadRecentSessions,
    required TResult Function(_SelectFriend value) selectFriend,
    required TResult Function(_SelectGroup value) selectGroup,
    required TResult Function(_SelectChannel value) selectChannel,
    required TResult Function(_SelectRecentSession value) selectRecentSession,
    required TResult Function(_ForwardMessages value) forwardMessages,
  }) {
    return selectRecentSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchContacts value)? searchContacts,
    TResult? Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult? Function(_SelectFriend value)? selectFriend,
    TResult? Function(_SelectGroup value)? selectGroup,
    TResult? Function(_SelectChannel value)? selectChannel,
    TResult? Function(_SelectRecentSession value)? selectRecentSession,
    TResult? Function(_ForwardMessages value)? forwardMessages,
  }) {
    return selectRecentSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchContacts value)? searchContacts,
    TResult Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult Function(_SelectFriend value)? selectFriend,
    TResult Function(_SelectGroup value)? selectGroup,
    TResult Function(_SelectChannel value)? selectChannel,
    TResult Function(_SelectRecentSession value)? selectRecentSession,
    TResult Function(_ForwardMessages value)? forwardMessages,
    required TResult orElse(),
  }) {
    if (selectRecentSession != null) {
      return selectRecentSession(this);
    }
    return orElse();
  }
}

abstract class _SelectRecentSession implements ChatForwardEvent {
  const factory _SelectRecentSession(final String sessionId) =
      _$SelectRecentSessionImpl;

  String get sessionId;

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectRecentSessionImplCopyWith<_$SelectRecentSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForwardMessagesImplCopyWith<$Res> {
  factory _$$ForwardMessagesImplCopyWith(
    _$ForwardMessagesImpl value,
    $Res Function(_$ForwardMessagesImpl) then,
  ) = __$$ForwardMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String targetId, FfiChatType targetChatType});
}

/// @nodoc
class __$$ForwardMessagesImplCopyWithImpl<$Res>
    extends _$ChatForwardEventCopyWithImpl<$Res, _$ForwardMessagesImpl>
    implements _$$ForwardMessagesImplCopyWith<$Res> {
  __$$ForwardMessagesImplCopyWithImpl(
    _$ForwardMessagesImpl _value,
    $Res Function(_$ForwardMessagesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? targetId = null, Object? targetChatType = null}) {
    return _then(
      _$ForwardMessagesImpl(
        targetId:
            null == targetId
                ? _value.targetId
                : targetId // ignore: cast_nullable_to_non_nullable
                    as String,
        targetChatType:
            null == targetChatType
                ? _value.targetChatType
                : targetChatType // ignore: cast_nullable_to_non_nullable
                    as FfiChatType,
      ),
    );
  }
}

/// @nodoc

class _$ForwardMessagesImpl implements _ForwardMessages {
  const _$ForwardMessagesImpl({
    required this.targetId,
    required this.targetChatType,
  });

  @override
  final String targetId;
  @override
  final FfiChatType targetChatType;

  @override
  String toString() {
    return 'ChatForwardEvent.forwardMessages(targetId: $targetId, targetChatType: $targetChatType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForwardMessagesImpl &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.targetChatType, targetChatType) ||
                other.targetChatType == targetChatType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, targetId, targetChatType);

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForwardMessagesImplCopyWith<_$ForwardMessagesImpl> get copyWith =>
      __$$ForwardMessagesImplCopyWithImpl<_$ForwardMessagesImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )
    initialized,
    required TResult Function(String query) searchContacts,
    required TResult Function() loadRecentSessions,
    required TResult Function(String friendId) selectFriend,
    required TResult Function(String groupId) selectGroup,
    required TResult Function(String channelId) selectChannel,
    required TResult Function(String sessionId) selectRecentSession,
    required TResult Function(String targetId, FfiChatType targetChatType)
    forwardMessages,
  }) {
    return forwardMessages(targetId, targetChatType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult? Function(String query)? searchContacts,
    TResult? Function()? loadRecentSessions,
    TResult? Function(String friendId)? selectFriend,
    TResult? Function(String groupId)? selectGroup,
    TResult? Function(String channelId)? selectChannel,
    TResult? Function(String sessionId)? selectRecentSession,
    TResult? Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
  }) {
    return forwardMessages?.call(targetId, targetChatType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<ChatMessage> messagesToForward,
      FfiChatType? chatType,
      int? targetId,
    )?
    initialized,
    TResult Function(String query)? searchContacts,
    TResult Function()? loadRecentSessions,
    TResult Function(String friendId)? selectFriend,
    TResult Function(String groupId)? selectGroup,
    TResult Function(String channelId)? selectChannel,
    TResult Function(String sessionId)? selectRecentSession,
    TResult Function(String targetId, FfiChatType targetChatType)?
    forwardMessages,
    required TResult orElse(),
  }) {
    if (forwardMessages != null) {
      return forwardMessages(targetId, targetChatType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchContacts value) searchContacts,
    required TResult Function(_LoadRecentSessions value) loadRecentSessions,
    required TResult Function(_SelectFriend value) selectFriend,
    required TResult Function(_SelectGroup value) selectGroup,
    required TResult Function(_SelectChannel value) selectChannel,
    required TResult Function(_SelectRecentSession value) selectRecentSession,
    required TResult Function(_ForwardMessages value) forwardMessages,
  }) {
    return forwardMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SearchContacts value)? searchContacts,
    TResult? Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult? Function(_SelectFriend value)? selectFriend,
    TResult? Function(_SelectGroup value)? selectGroup,
    TResult? Function(_SelectChannel value)? selectChannel,
    TResult? Function(_SelectRecentSession value)? selectRecentSession,
    TResult? Function(_ForwardMessages value)? forwardMessages,
  }) {
    return forwardMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchContacts value)? searchContacts,
    TResult Function(_LoadRecentSessions value)? loadRecentSessions,
    TResult Function(_SelectFriend value)? selectFriend,
    TResult Function(_SelectGroup value)? selectGroup,
    TResult Function(_SelectChannel value)? selectChannel,
    TResult Function(_SelectRecentSession value)? selectRecentSession,
    TResult Function(_ForwardMessages value)? forwardMessages,
    required TResult orElse(),
  }) {
    if (forwardMessages != null) {
      return forwardMessages(this);
    }
    return orElse();
  }
}

abstract class _ForwardMessages implements ChatForwardEvent {
  const factory _ForwardMessages({
    required final String targetId,
    required final FfiChatType targetChatType,
  }) = _$ForwardMessagesImpl;

  String get targetId;
  FfiChatType get targetChatType;

  /// Create a copy of ChatForwardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForwardMessagesImplCopyWith<_$ForwardMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
