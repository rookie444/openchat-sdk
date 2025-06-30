// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../../src/features/chat/chat_forward/blocs/chat_forward_state.dart';

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
      List<ChatMessage> messagesToForward,
      List<FfiConversation> recentSessions,
      String searchQuery,
      bool isSearching,
      FfiChatType? chatType,
      int? targetId,
    )
    success,
    required TResult Function(
      List<ChatMessage> messagesToForward,
      String errorMessage,
      FfiChatType? chatType,
      int? targetId,
    )
    failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<ChatMessage> messagesToForward,
      List<FfiConversation> recentSessions,
      String searchQuery,
      bool isSearching,
      FfiChatType? chatType,
      int? targetId,
    )?
    success,
    TResult? Function(
      List<ChatMessage> messagesToForward,
      String errorMessage,
      FfiChatType? chatType,
      int? targetId,
    )?
    failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<ChatMessage> messagesToForward,
      List<FfiConversation> recentSessions,
      String searchQuery,
      bool isSearching,
      FfiChatType? chatType,
      int? targetId,
    )?
    success,
    TResult Function(
      List<ChatMessage> messagesToForward,
      String errorMessage,
      FfiChatType? chatType,
      int? targetId,
    )?
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
      List<ChatMessage> messagesToForward,
      List<FfiConversation> recentSessions,
      String searchQuery,
      bool isSearching,
      FfiChatType? chatType,
      int? targetId,
    )
    success,
    required TResult Function(
      List<ChatMessage> messagesToForward,
      String errorMessage,
      FfiChatType? chatType,
      int? targetId,
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
      List<ChatMessage> messagesToForward,
      List<FfiConversation> recentSessions,
      String searchQuery,
      bool isSearching,
      FfiChatType? chatType,
      int? targetId,
    )?
    success,
    TResult? Function(
      List<ChatMessage> messagesToForward,
      String errorMessage,
      FfiChatType? chatType,
      int? targetId,
    )?
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
      List<ChatMessage> messagesToForward,
      List<FfiConversation> recentSessions,
      String searchQuery,
      bool isSearching,
      FfiChatType? chatType,
      int? targetId,
    )?
    success,
    TResult Function(
      List<ChatMessage> messagesToForward,
      String errorMessage,
      FfiChatType? chatType,
      int? targetId,
    )?
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
      List<ChatMessage> messagesToForward,
      List<FfiConversation> recentSessions,
      String searchQuery,
      bool isSearching,
      FfiChatType? chatType,
      int? targetId,
    )
    success,
    required TResult Function(
      List<ChatMessage> messagesToForward,
      String errorMessage,
      FfiChatType? chatType,
      int? targetId,
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
      List<ChatMessage> messagesToForward,
      List<FfiConversation> recentSessions,
      String searchQuery,
      bool isSearching,
      FfiChatType? chatType,
      int? targetId,
    )?
    success,
    TResult? Function(
      List<ChatMessage> messagesToForward,
      String errorMessage,
      FfiChatType? chatType,
      int? targetId,
    )?
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
      List<ChatMessage> messagesToForward,
      List<FfiConversation> recentSessions,
      String searchQuery,
      bool isSearching,
      FfiChatType? chatType,
      int? targetId,
    )?
    success,
    TResult Function(
      List<ChatMessage> messagesToForward,
      String errorMessage,
      FfiChatType? chatType,
      int? targetId,
    )?
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
    List<ChatMessage> messagesToForward,
    List<FfiConversation> recentSessions,
    String searchQuery,
    bool isSearching,
    FfiChatType? chatType,
    int? targetId,
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
    Object? messagesToForward = null,
    Object? recentSessions = null,
    Object? searchQuery = null,
    Object? isSearching = null,
    Object? chatType = freezed,
    Object? targetId = freezed,
  }) {
    return _then(
      _$SuccessImpl(
        messagesToForward:
            null == messagesToForward
                ? _value._messagesToForward
                : messagesToForward // ignore: cast_nullable_to_non_nullable
                    as List<ChatMessage>,
        recentSessions:
            null == recentSessions
                ? _value._recentSessions
                : recentSessions // ignore: cast_nullable_to_non_nullable
                    as List<FfiConversation>,
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

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({
    required final List<ChatMessage> messagesToForward,
    required final List<FfiConversation> recentSessions,
    required this.searchQuery,
    required this.isSearching,
    this.chatType,
    this.targetId,
  }) : _messagesToForward = messagesToForward,
       _recentSessions = recentSessions;

  final List<ChatMessage> _messagesToForward;
  @override
  List<ChatMessage> get messagesToForward {
    if (_messagesToForward is EqualUnmodifiableListView)
      return _messagesToForward;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messagesToForward);
  }

  final List<FfiConversation> _recentSessions;
  @override
  List<FfiConversation> get recentSessions {
    if (_recentSessions is EqualUnmodifiableListView) return _recentSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentSessions);
  }

  @override
  final String searchQuery;
  @override
  final bool isSearching;
  @override
  final FfiChatType? chatType;
  @override
  final int? targetId;

  @override
  String toString() {
    return 'ChatForwardState.success(messagesToForward: $messagesToForward, recentSessions: $recentSessions, searchQuery: $searchQuery, isSearching: $isSearching, chatType: $chatType, targetId: $targetId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(
              other._messagesToForward,
              _messagesToForward,
            ) &&
            const DeepCollectionEquality().equals(
              other._recentSessions,
              _recentSessions,
            ) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.chatType, chatType) ||
                other.chatType == chatType) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_messagesToForward),
    const DeepCollectionEquality().hash(_recentSessions),
    searchQuery,
    isSearching,
    chatType,
    targetId,
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
      List<ChatMessage> messagesToForward,
      List<FfiConversation> recentSessions,
      String searchQuery,
      bool isSearching,
      FfiChatType? chatType,
      int? targetId,
    )
    success,
    required TResult Function(
      List<ChatMessage> messagesToForward,
      String errorMessage,
      FfiChatType? chatType,
      int? targetId,
    )
    failure,
  }) {
    return success(
      messagesToForward,
      recentSessions,
      searchQuery,
      isSearching,
      chatType,
      targetId,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<ChatMessage> messagesToForward,
      List<FfiConversation> recentSessions,
      String searchQuery,
      bool isSearching,
      FfiChatType? chatType,
      int? targetId,
    )?
    success,
    TResult? Function(
      List<ChatMessage> messagesToForward,
      String errorMessage,
      FfiChatType? chatType,
      int? targetId,
    )?
    failure,
  }) {
    return success?.call(
      messagesToForward,
      recentSessions,
      searchQuery,
      isSearching,
      chatType,
      targetId,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<ChatMessage> messagesToForward,
      List<FfiConversation> recentSessions,
      String searchQuery,
      bool isSearching,
      FfiChatType? chatType,
      int? targetId,
    )?
    success,
    TResult Function(
      List<ChatMessage> messagesToForward,
      String errorMessage,
      FfiChatType? chatType,
      int? targetId,
    )?
    failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(
        messagesToForward,
        recentSessions,
        searchQuery,
        isSearching,
        chatType,
        targetId,
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
    required final List<ChatMessage> messagesToForward,
    required final List<FfiConversation> recentSessions,
    required final String searchQuery,
    required final bool isSearching,
    final FfiChatType? chatType,
    final int? targetId,
  }) = _$SuccessImpl;

  List<ChatMessage> get messagesToForward;
  List<FfiConversation> get recentSessions;
  String get searchQuery;
  bool get isSearching;
  FfiChatType? get chatType;
  int? get targetId;

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
  $Res call({
    List<ChatMessage> messagesToForward,
    String errorMessage,
    FfiChatType? chatType,
    int? targetId,
  });
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
  $Res call({
    Object? messagesToForward = null,
    Object? errorMessage = null,
    Object? chatType = freezed,
    Object? targetId = freezed,
  }) {
    return _then(
      _$FailureImpl(
        messagesToForward:
            null == messagesToForward
                ? _value._messagesToForward
                : messagesToForward // ignore: cast_nullable_to_non_nullable
                    as List<ChatMessage>,
        errorMessage:
            null == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String,
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

class _$FailureImpl implements _Failure {
  const _$FailureImpl({
    required final List<ChatMessage> messagesToForward,
    required this.errorMessage,
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
  final String errorMessage;
  @override
  final FfiChatType? chatType;
  @override
  final int? targetId;

  @override
  String toString() {
    return 'ChatForwardState.failure(messagesToForward: $messagesToForward, errorMessage: $errorMessage, chatType: $chatType, targetId: $targetId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            const DeepCollectionEquality().equals(
              other._messagesToForward,
              _messagesToForward,
            ) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.chatType, chatType) ||
                other.chatType == chatType) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_messagesToForward),
    errorMessage,
    chatType,
    targetId,
  );

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
      List<ChatMessage> messagesToForward,
      List<FfiConversation> recentSessions,
      String searchQuery,
      bool isSearching,
      FfiChatType? chatType,
      int? targetId,
    )
    success,
    required TResult Function(
      List<ChatMessage> messagesToForward,
      String errorMessage,
      FfiChatType? chatType,
      int? targetId,
    )
    failure,
  }) {
    return failure(messagesToForward, errorMessage, chatType, targetId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<ChatMessage> messagesToForward,
      List<FfiConversation> recentSessions,
      String searchQuery,
      bool isSearching,
      FfiChatType? chatType,
      int? targetId,
    )?
    success,
    TResult? Function(
      List<ChatMessage> messagesToForward,
      String errorMessage,
      FfiChatType? chatType,
      int? targetId,
    )?
    failure,
  }) {
    return failure?.call(messagesToForward, errorMessage, chatType, targetId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<ChatMessage> messagesToForward,
      List<FfiConversation> recentSessions,
      String searchQuery,
      bool isSearching,
      FfiChatType? chatType,
      int? targetId,
    )?
    success,
    TResult Function(
      List<ChatMessage> messagesToForward,
      String errorMessage,
      FfiChatType? chatType,
      int? targetId,
    )?
    failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(messagesToForward, errorMessage, chatType, targetId);
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
    required final List<ChatMessage> messagesToForward,
    required final String errorMessage,
    final FfiChatType? chatType,
    final int? targetId,
  }) = _$FailureImpl;

  List<ChatMessage> get messagesToForward;
  String get errorMessage;
  FfiChatType? get chatType;
  int? get targetId;

  /// Create a copy of ChatForwardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
