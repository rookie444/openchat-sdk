// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/features/chat/blocs/chat_forward_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatForwardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      ChatMessage messageToForward,
      List<Contact> friends,
      List<Group> groups,
      List<Channel> channels,
      List<RecentSession> recentSessions,
      String searchQuery,
      bool isSearching,
    )
    success,
    required TResult Function(
      ChatMessage? messageToForward,
      String errorMessage,
    )
    failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      ChatMessage messageToForward,
      List<Contact> friends,
      List<Group> groups,
      List<Channel> channels,
      List<RecentSession> recentSessions,
      String searchQuery,
      bool isSearching,
    )?
    success,
    TResult? Function(ChatMessage? messageToForward, String errorMessage)?
    failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      ChatMessage messageToForward,
      List<Contact> friends,
      List<Group> groups,
      List<Channel> channels,
      List<RecentSession> recentSessions,
      String searchQuery,
      bool isSearching,
    )?
    success,
    TResult Function(ChatMessage? messageToForward, String errorMessage)?
    failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatForwardStateCopyWith<$Res> {
  factory $ChatForwardStateCopyWith(
    ChatForwardState value,
    $Res Function(ChatForwardState) then,
  ) = _$ChatForwardStateCopyWithImpl<$Res, ChatForwardState>;
}

/// @nodoc
class _$ChatForwardStateCopyWithImpl<$Res, $Val extends ChatForwardState>
    implements $ChatForwardStateCopyWith<$Res> {
  _$ChatForwardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatForwardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChatForwardStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatForwardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatForwardState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      ChatMessage messageToForward,
      List<Contact> friends,
      List<Group> groups,
      List<Channel> channels,
      List<RecentSession> recentSessions,
      String searchQuery,
      bool isSearching,
    )
    success,
    required TResult Function(
      ChatMessage? messageToForward,
      String errorMessage,
    )
    failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      ChatMessage messageToForward,
      List<Contact> friends,
      List<Group> groups,
      List<Channel> channels,
      List<RecentSession> recentSessions,
      String searchQuery,
      bool isSearching,
    )?
    success,
    TResult? Function(ChatMessage? messageToForward, String errorMessage)?
    failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      ChatMessage messageToForward,
      List<Contact> friends,
      List<Group> groups,
      List<Channel> channels,
      List<RecentSession> recentSessions,
      String searchQuery,
      bool isSearching,
    )?
    success,
    TResult Function(ChatMessage? messageToForward, String errorMessage)?
    failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Initial implements ChatForwardState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ChatForwardStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatForwardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ChatForwardState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      ChatMessage messageToForward,
      List<Contact> friends,
      List<Group> groups,
      List<Channel> channels,
      List<RecentSession> recentSessions,
      String searchQuery,
      bool isSearching,
    )
    success,
    required TResult Function(
      ChatMessage? messageToForward,
      String errorMessage,
    )
    failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      ChatMessage messageToForward,
      List<Contact> friends,
      List<Group> groups,
      List<Channel> channels,
      List<RecentSession> recentSessions,
      String searchQuery,
      bool isSearching,
    )?
    success,
    TResult? Function(ChatMessage? messageToForward, String errorMessage)?
    failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      ChatMessage messageToForward,
      List<Contact> friends,
      List<Group> groups,
      List<Channel> channels,
      List<RecentSession> recentSessions,
      String searchQuery,
      bool isSearching,
    )?
    success,
    TResult Function(ChatMessage? messageToForward, String errorMessage)?
    failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatForwardState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    ChatMessage messageToForward,
    List<Contact> friends,
    List<Group> groups,
    List<Channel> channels,
    List<RecentSession> recentSessions,
    String searchQuery,
    bool isSearching,
  });
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ChatForwardStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatForwardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageToForward = null,
    Object? friends = null,
    Object? groups = null,
    Object? channels = null,
    Object? recentSessions = null,
    Object? searchQuery = null,
    Object? isSearching = null,
  }) {
    return _then(
      _$SuccessImpl(
        messageToForward:
            null == messageToForward
                ? _value.messageToForward
                : messageToForward // ignore: cast_nullable_to_non_nullable
                    as ChatMessage,
        friends:
            null == friends
                ? _value._friends
                : friends // ignore: cast_nullable_to_non_nullable
                    as List<Contact>,
        groups:
            null == groups
                ? _value._groups
                : groups // ignore: cast_nullable_to_non_nullable
                    as List<Group>,
        channels:
            null == channels
                ? _value._channels
                : channels // ignore: cast_nullable_to_non_nullable
                    as List<Channel>,
        recentSessions:
            null == recentSessions
                ? _value._recentSessions
                : recentSessions // ignore: cast_nullable_to_non_nullable
                    as List<RecentSession>,
        searchQuery:
            null == searchQuery
                ? _value.searchQuery
                : searchQuery // ignore: cast_nullable_to_non_nullable
                    as String,
        isSearching:
            null == isSearching
                ? _value.isSearching
                : isSearching // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({
    required this.messageToForward,
    final List<Contact> friends = const [],
    final List<Group> groups = const [],
    final List<Channel> channels = const [],
    final List<RecentSession> recentSessions = const [],
    this.searchQuery = '',
    this.isSearching = false,
  }) : _friends = friends,
       _groups = groups,
       _channels = channels,
       _recentSessions = recentSessions;

  @override
  final ChatMessage messageToForward;
  final List<Contact> _friends;
  @override
  @JsonKey()
  List<Contact> get friends {
    if (_friends is EqualUnmodifiableListView) return _friends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friends);
  }

  final List<Group> _groups;
  @override
  @JsonKey()
  List<Group> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  final List<Channel> _channels;
  @override
  @JsonKey()
  List<Channel> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  final List<RecentSession> _recentSessions;
  @override
  @JsonKey()
  List<RecentSession> get recentSessions {
    if (_recentSessions is EqualUnmodifiableListView) return _recentSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentSessions);
  }

  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final bool isSearching;

  @override
  String toString() {
    return 'ChatForwardState.success(messageToForward: $messageToForward, friends: $friends, groups: $groups, channels: $channels, recentSessions: $recentSessions, searchQuery: $searchQuery, isSearching: $isSearching)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.messageToForward, messageToForward) ||
                other.messageToForward == messageToForward) &&
            const DeepCollectionEquality().equals(other._friends, _friends) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            const DeepCollectionEquality().equals(
              other._recentSessions,
              _recentSessions,
            ) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    messageToForward,
    const DeepCollectionEquality().hash(_friends),
    const DeepCollectionEquality().hash(_groups),
    const DeepCollectionEquality().hash(_channels),
    const DeepCollectionEquality().hash(_recentSessions),
    searchQuery,
    isSearching,
  );

  /// Create a copy of ChatForwardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      ChatMessage messageToForward,
      List<Contact> friends,
      List<Group> groups,
      List<Channel> channels,
      List<RecentSession> recentSessions,
      String searchQuery,
      bool isSearching,
    )
    success,
    required TResult Function(
      ChatMessage? messageToForward,
      String errorMessage,
    )
    failure,
  }) {
    return success(
      messageToForward,
      friends,
      groups,
      channels,
      recentSessions,
      searchQuery,
      isSearching,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      ChatMessage messageToForward,
      List<Contact> friends,
      List<Group> groups,
      List<Channel> channels,
      List<RecentSession> recentSessions,
      String searchQuery,
      bool isSearching,
    )?
    success,
    TResult? Function(ChatMessage? messageToForward, String errorMessage)?
    failure,
  }) {
    return success?.call(
      messageToForward,
      friends,
      groups,
      channels,
      recentSessions,
      searchQuery,
      isSearching,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      ChatMessage messageToForward,
      List<Contact> friends,
      List<Group> groups,
      List<Channel> channels,
      List<RecentSession> recentSessions,
      String searchQuery,
      bool isSearching,
    )?
    success,
    TResult Function(ChatMessage? messageToForward, String errorMessage)?
    failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(
        messageToForward,
        friends,
        groups,
        channels,
        recentSessions,
        searchQuery,
        isSearching,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Success implements ChatForwardState {
  const factory _Success({
    required final ChatMessage messageToForward,
    final List<Contact> friends,
    final List<Group> groups,
    final List<Channel> channels,
    final List<RecentSession> recentSessions,
    final String searchQuery,
    final bool isSearching,
  }) = _$SuccessImpl;

  ChatMessage get messageToForward;
  List<Contact> get friends;
  List<Group> get groups;
  List<Channel> get channels;
  List<RecentSession> get recentSessions;
  String get searchQuery;
  bool get isSearching;

  /// Create a copy of ChatForwardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
    _$FailureImpl value,
    $Res Function(_$FailureImpl) then,
  ) = __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage? messageToForward, String errorMessage});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$ChatForwardStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
    _$FailureImpl _value,
    $Res Function(_$FailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatForwardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messageToForward = freezed, Object? errorMessage = null}) {
    return _then(
      _$FailureImpl(
        messageToForward:
            freezed == messageToForward
                ? _value.messageToForward
                : messageToForward // ignore: cast_nullable_to_non_nullable
                    as ChatMessage?,
        errorMessage:
            null == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({this.messageToForward, required this.errorMessage});

  @override
  final ChatMessage? messageToForward;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ChatForwardState.failure(messageToForward: $messageToForward, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.messageToForward, messageToForward) ||
                other.messageToForward == messageToForward) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageToForward, errorMessage);

  /// Create a copy of ChatForwardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      ChatMessage messageToForward,
      List<Contact> friends,
      List<Group> groups,
      List<Channel> channels,
      List<RecentSession> recentSessions,
      String searchQuery,
      bool isSearching,
    )
    success,
    required TResult Function(
      ChatMessage? messageToForward,
      String errorMessage,
    )
    failure,
  }) {
    return failure(messageToForward, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      ChatMessage messageToForward,
      List<Contact> friends,
      List<Group> groups,
      List<Channel> channels,
      List<RecentSession> recentSessions,
      String searchQuery,
      bool isSearching,
    )?
    success,
    TResult? Function(ChatMessage? messageToForward, String errorMessage)?
    failure,
  }) {
    return failure?.call(messageToForward, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      ChatMessage messageToForward,
      List<Contact> friends,
      List<Group> groups,
      List<Channel> channels,
      List<RecentSession> recentSessions,
      String searchQuery,
      bool isSearching,
    )?
    success,
    TResult Function(ChatMessage? messageToForward, String errorMessage)?
    failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(messageToForward, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Failure implements ChatForwardState {
  const factory _Failure({
    final ChatMessage? messageToForward,
    required final String errorMessage,
  }) = _$FailureImpl;

  ChatMessage? get messageToForward;
  String get errorMessage;

  /// Create a copy of ChatForwardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
