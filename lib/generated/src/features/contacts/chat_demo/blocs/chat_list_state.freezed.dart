// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../../src/features/contacts/chat_demo/blocs/chat_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    success,
    required TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    input,
    required TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    sending,
    required TResult Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
    )
    failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    success,
    TResult? Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    input,
    TResult? Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    sending,
    TResult? Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
    )?
    failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    success,
    TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    input,
    TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    sending,
    TResult Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
    )?
    failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Input value) input,
    required TResult Function(_Sending value) sending,
    required TResult Function(_Failure value) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Input value)? input,
    TResult? Function(_Sending value)? sending,
    TResult? Function(_Failure value)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Input value)? input,
    TResult Function(_Sending value)? sending,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatListStateCopyWith<$Res> {
  factory $ChatListStateCopyWith(
    ChatListState value,
    $Res Function(ChatListState) then,
  ) = _$ChatListStateCopyWithImpl<$Res, ChatListState>;
}

/// @nodoc
class _$ChatListStateCopyWithImpl<$Res, $Val extends ChatListState>
    implements $ChatListStateCopyWith<$Res> {
  _$ChatListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatListState
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
    extends _$ChatListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatListState.initial()';
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
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    success,
    required TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    input,
    required TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    sending,
    required TResult Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
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
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    success,
    TResult? Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    input,
    TResult? Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    sending,
    TResult? Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
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
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    success,
    TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    input,
    TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    sending,
    TResult Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
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
    required TResult Function(_Input value) input,
    required TResult Function(_Sending value) sending,
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
    TResult? Function(_Input value)? input,
    TResult? Function(_Sending value)? sending,
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
    TResult Function(_Input value)? input,
    TResult Function(_Sending value)? sending,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatListState {
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
    extends _$ChatListStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ChatListState.loading()';
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
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    success,
    required TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    input,
    required TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    sending,
    required TResult Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
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
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    success,
    TResult? Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    input,
    TResult? Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    sending,
    TResult? Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
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
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    success,
    TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    input,
    TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    sending,
    TResult Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
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
    required TResult Function(_Input value) input,
    required TResult Function(_Sending value) sending,
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
    TResult? Function(_Input value)? input,
    TResult? Function(_Sending value)? sending,
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
    TResult Function(_Input value)? input,
    TResult Function(_Sending value)? sending,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatListState {
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
    String conversationId,
    String conversationName,
    int conversationMemberCount,
    int totalUnreadCount,
    String? conversationAvatar,
    List<ChatMessage> messages,
    bool isLoadingMore,
    bool hasReachedEnd,
    ChatMessage? replyToMessage,
  });
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ChatListStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? conversationName = null,
    Object? conversationMemberCount = null,
    Object? totalUnreadCount = null,
    Object? conversationAvatar = freezed,
    Object? messages = null,
    Object? isLoadingMore = null,
    Object? hasReachedEnd = null,
    Object? replyToMessage = freezed,
  }) {
    return _then(
      _$SuccessImpl(
        conversationId:
            null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                    as String,
        conversationName:
            null == conversationName
                ? _value.conversationName
                : conversationName // ignore: cast_nullable_to_non_nullable
                    as String,
        conversationMemberCount:
            null == conversationMemberCount
                ? _value.conversationMemberCount
                : conversationMemberCount // ignore: cast_nullable_to_non_nullable
                    as int,
        totalUnreadCount:
            null == totalUnreadCount
                ? _value.totalUnreadCount
                : totalUnreadCount // ignore: cast_nullable_to_non_nullable
                    as int,
        conversationAvatar:
            freezed == conversationAvatar
                ? _value.conversationAvatar
                : conversationAvatar // ignore: cast_nullable_to_non_nullable
                    as String?,
        messages:
            null == messages
                ? _value._messages
                : messages // ignore: cast_nullable_to_non_nullable
                    as List<ChatMessage>,
        isLoadingMore:
            null == isLoadingMore
                ? _value.isLoadingMore
                : isLoadingMore // ignore: cast_nullable_to_non_nullable
                    as bool,
        hasReachedEnd:
            null == hasReachedEnd
                ? _value.hasReachedEnd
                : hasReachedEnd // ignore: cast_nullable_to_non_nullable
                    as bool,
        replyToMessage:
            freezed == replyToMessage
                ? _value.replyToMessage
                : replyToMessage // ignore: cast_nullable_to_non_nullable
                    as ChatMessage?,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({
    required this.conversationId,
    required this.conversationName,
    this.conversationMemberCount = 0,
    this.totalUnreadCount = 0,
    this.conversationAvatar,
    required final List<ChatMessage> messages,
    this.isLoadingMore = false,
    this.hasReachedEnd = false,
    this.replyToMessage,
  }) : _messages = messages;

  @override
  final String conversationId;
  @override
  final String conversationName;
  @override
  @JsonKey()
  final int conversationMemberCount;
  @override
  @JsonKey()
  final int totalUnreadCount;
  @override
  final String? conversationAvatar;
  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool hasReachedEnd;
  @override
  final ChatMessage? replyToMessage;

  @override
  String toString() {
    return 'ChatListState.success(conversationId: $conversationId, conversationName: $conversationName, conversationMemberCount: $conversationMemberCount, totalUnreadCount: $totalUnreadCount, conversationAvatar: $conversationAvatar, messages: $messages, isLoadingMore: $isLoadingMore, hasReachedEnd: $hasReachedEnd, replyToMessage: $replyToMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.conversationName, conversationName) ||
                other.conversationName == conversationName) &&
            (identical(
                  other.conversationMemberCount,
                  conversationMemberCount,
                ) ||
                other.conversationMemberCount == conversationMemberCount) &&
            (identical(other.totalUnreadCount, totalUnreadCount) ||
                other.totalUnreadCount == totalUnreadCount) &&
            (identical(other.conversationAvatar, conversationAvatar) ||
                other.conversationAvatar == conversationAvatar) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd) &&
            (identical(other.replyToMessage, replyToMessage) ||
                other.replyToMessage == replyToMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    conversationId,
    conversationName,
    conversationMemberCount,
    totalUnreadCount,
    conversationAvatar,
    const DeepCollectionEquality().hash(_messages),
    isLoadingMore,
    hasReachedEnd,
    replyToMessage,
  );

  /// Create a copy of ChatListState
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
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    success,
    required TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    input,
    required TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    sending,
    required TResult Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
    )
    failure,
  }) {
    return success(
      conversationId,
      conversationName,
      conversationMemberCount,
      totalUnreadCount,
      conversationAvatar,
      messages,
      isLoadingMore,
      hasReachedEnd,
      replyToMessage,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    success,
    TResult? Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    input,
    TResult? Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    sending,
    TResult? Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
    )?
    failure,
  }) {
    return success?.call(
      conversationId,
      conversationName,
      conversationMemberCount,
      totalUnreadCount,
      conversationAvatar,
      messages,
      isLoadingMore,
      hasReachedEnd,
      replyToMessage,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    success,
    TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    input,
    TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    sending,
    TResult Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
    )?
    failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(
        conversationId,
        conversationName,
        conversationMemberCount,
        totalUnreadCount,
        conversationAvatar,
        messages,
        isLoadingMore,
        hasReachedEnd,
        replyToMessage,
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
    required TResult Function(_Input value) input,
    required TResult Function(_Sending value) sending,
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
    TResult? Function(_Input value)? input,
    TResult? Function(_Sending value)? sending,
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
    TResult Function(_Input value)? input,
    TResult Function(_Sending value)? sending,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ChatListState {
  const factory _Success({
    required final String conversationId,
    required final String conversationName,
    final int conversationMemberCount,
    final int totalUnreadCount,
    final String? conversationAvatar,
    required final List<ChatMessage> messages,
    final bool isLoadingMore,
    final bool hasReachedEnd,
    final ChatMessage? replyToMessage,
  }) = _$SuccessImpl;

  String get conversationId;
  String get conversationName;
  int get conversationMemberCount;
  int get totalUnreadCount;
  String? get conversationAvatar;
  List<ChatMessage> get messages;
  bool get isLoadingMore;
  bool get hasReachedEnd;
  ChatMessage? get replyToMessage;

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputImplCopyWith<$Res> {
  factory _$$InputImplCopyWith(
    _$InputImpl value,
    $Res Function(_$InputImpl) then,
  ) = __$$InputImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String conversationId,
    String conversationName,
    String? conversationAvatar,
    int conversationMemberCount,
    int totalUnreadCount,
    List<ChatMessage> messages,
    String inputText,
    bool isInputValid,
    bool isLoadingMore,
    bool hasReachedEnd,
    ChatMessage? replyToMessage,
  });
}

/// @nodoc
class __$$InputImplCopyWithImpl<$Res>
    extends _$ChatListStateCopyWithImpl<$Res, _$InputImpl>
    implements _$$InputImplCopyWith<$Res> {
  __$$InputImplCopyWithImpl(
    _$InputImpl _value,
    $Res Function(_$InputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? conversationName = null,
    Object? conversationAvatar = freezed,
    Object? conversationMemberCount = null,
    Object? totalUnreadCount = null,
    Object? messages = null,
    Object? inputText = null,
    Object? isInputValid = null,
    Object? isLoadingMore = null,
    Object? hasReachedEnd = null,
    Object? replyToMessage = freezed,
  }) {
    return _then(
      _$InputImpl(
        conversationId:
            null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                    as String,
        conversationName:
            null == conversationName
                ? _value.conversationName
                : conversationName // ignore: cast_nullable_to_non_nullable
                    as String,
        conversationAvatar:
            freezed == conversationAvatar
                ? _value.conversationAvatar
                : conversationAvatar // ignore: cast_nullable_to_non_nullable
                    as String?,
        conversationMemberCount:
            null == conversationMemberCount
                ? _value.conversationMemberCount
                : conversationMemberCount // ignore: cast_nullable_to_non_nullable
                    as int,
        totalUnreadCount:
            null == totalUnreadCount
                ? _value.totalUnreadCount
                : totalUnreadCount // ignore: cast_nullable_to_non_nullable
                    as int,
        messages:
            null == messages
                ? _value._messages
                : messages // ignore: cast_nullable_to_non_nullable
                    as List<ChatMessage>,
        inputText:
            null == inputText
                ? _value.inputText
                : inputText // ignore: cast_nullable_to_non_nullable
                    as String,
        isInputValid:
            null == isInputValid
                ? _value.isInputValid
                : isInputValid // ignore: cast_nullable_to_non_nullable
                    as bool,
        isLoadingMore:
            null == isLoadingMore
                ? _value.isLoadingMore
                : isLoadingMore // ignore: cast_nullable_to_non_nullable
                    as bool,
        hasReachedEnd:
            null == hasReachedEnd
                ? _value.hasReachedEnd
                : hasReachedEnd // ignore: cast_nullable_to_non_nullable
                    as bool,
        replyToMessage:
            freezed == replyToMessage
                ? _value.replyToMessage
                : replyToMessage // ignore: cast_nullable_to_non_nullable
                    as ChatMessage?,
      ),
    );
  }
}

/// @nodoc

class _$InputImpl implements _Input {
  const _$InputImpl({
    required this.conversationId,
    required this.conversationName,
    this.conversationAvatar,
    this.conversationMemberCount = 0,
    this.totalUnreadCount = 0,
    required final List<ChatMessage> messages,
    this.inputText = '',
    this.isInputValid = false,
    this.isLoadingMore = false,
    this.hasReachedEnd = false,
    this.replyToMessage,
  }) : _messages = messages;

  @override
  final String conversationId;
  @override
  final String conversationName;
  @override
  final String? conversationAvatar;
  @override
  @JsonKey()
  final int conversationMemberCount;
  @override
  @JsonKey()
  final int totalUnreadCount;
  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final String inputText;
  @override
  @JsonKey()
  final bool isInputValid;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool hasReachedEnd;
  @override
  final ChatMessage? replyToMessage;

  @override
  String toString() {
    return 'ChatListState.input(conversationId: $conversationId, conversationName: $conversationName, conversationAvatar: $conversationAvatar, conversationMemberCount: $conversationMemberCount, totalUnreadCount: $totalUnreadCount, messages: $messages, inputText: $inputText, isInputValid: $isInputValid, isLoadingMore: $isLoadingMore, hasReachedEnd: $hasReachedEnd, replyToMessage: $replyToMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.conversationName, conversationName) ||
                other.conversationName == conversationName) &&
            (identical(other.conversationAvatar, conversationAvatar) ||
                other.conversationAvatar == conversationAvatar) &&
            (identical(
                  other.conversationMemberCount,
                  conversationMemberCount,
                ) ||
                other.conversationMemberCount == conversationMemberCount) &&
            (identical(other.totalUnreadCount, totalUnreadCount) ||
                other.totalUnreadCount == totalUnreadCount) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.inputText, inputText) ||
                other.inputText == inputText) &&
            (identical(other.isInputValid, isInputValid) ||
                other.isInputValid == isInputValid) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd) &&
            (identical(other.replyToMessage, replyToMessage) ||
                other.replyToMessage == replyToMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    conversationId,
    conversationName,
    conversationAvatar,
    conversationMemberCount,
    totalUnreadCount,
    const DeepCollectionEquality().hash(_messages),
    inputText,
    isInputValid,
    isLoadingMore,
    hasReachedEnd,
    replyToMessage,
  );

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputImplCopyWith<_$InputImpl> get copyWith =>
      __$$InputImplCopyWithImpl<_$InputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    success,
    required TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    input,
    required TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    sending,
    required TResult Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
    )
    failure,
  }) {
    return input(
      conversationId,
      conversationName,
      conversationAvatar,
      conversationMemberCount,
      totalUnreadCount,
      messages,
      inputText,
      isInputValid,
      isLoadingMore,
      hasReachedEnd,
      replyToMessage,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    success,
    TResult? Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    input,
    TResult? Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    sending,
    TResult? Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
    )?
    failure,
  }) {
    return input?.call(
      conversationId,
      conversationName,
      conversationAvatar,
      conversationMemberCount,
      totalUnreadCount,
      messages,
      inputText,
      isInputValid,
      isLoadingMore,
      hasReachedEnd,
      replyToMessage,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    success,
    TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    input,
    TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    sending,
    TResult Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
    )?
    failure,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(
        conversationId,
        conversationName,
        conversationAvatar,
        conversationMemberCount,
        totalUnreadCount,
        messages,
        inputText,
        isInputValid,
        isLoadingMore,
        hasReachedEnd,
        replyToMessage,
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
    required TResult Function(_Input value) input,
    required TResult Function(_Sending value) sending,
    required TResult Function(_Failure value) failure,
  }) {
    return input(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Input value)? input,
    TResult? Function(_Sending value)? sending,
    TResult? Function(_Failure value)? failure,
  }) {
    return input?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Input value)? input,
    TResult Function(_Sending value)? sending,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(this);
    }
    return orElse();
  }
}

abstract class _Input implements ChatListState {
  const factory _Input({
    required final String conversationId,
    required final String conversationName,
    final String? conversationAvatar,
    final int conversationMemberCount,
    final int totalUnreadCount,
    required final List<ChatMessage> messages,
    final String inputText,
    final bool isInputValid,
    final bool isLoadingMore,
    final bool hasReachedEnd,
    final ChatMessage? replyToMessage,
  }) = _$InputImpl;

  String get conversationId;
  String get conversationName;
  String? get conversationAvatar;
  int get conversationMemberCount;
  int get totalUnreadCount;
  List<ChatMessage> get messages;
  String get inputText;
  bool get isInputValid;
  bool get isLoadingMore;
  bool get hasReachedEnd;
  ChatMessage? get replyToMessage;

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputImplCopyWith<_$InputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendingImplCopyWith<$Res> {
  factory _$$SendingImplCopyWith(
    _$SendingImpl value,
    $Res Function(_$SendingImpl) then,
  ) = __$$SendingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String conversationId,
    String conversationName,
    String? conversationAvatar,
    int conversationMemberCount,
    int totalUnreadCount,
    List<ChatMessage> messages,
    String inputText,
    ChatMessage pendingMessage,
    bool isLoadingMore,
    bool hasReachedEnd,
    ChatMessage? replyToMessage,
  });
}

/// @nodoc
class __$$SendingImplCopyWithImpl<$Res>
    extends _$ChatListStateCopyWithImpl<$Res, _$SendingImpl>
    implements _$$SendingImplCopyWith<$Res> {
  __$$SendingImplCopyWithImpl(
    _$SendingImpl _value,
    $Res Function(_$SendingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? conversationName = null,
    Object? conversationAvatar = freezed,
    Object? conversationMemberCount = null,
    Object? totalUnreadCount = null,
    Object? messages = null,
    Object? inputText = null,
    Object? pendingMessage = null,
    Object? isLoadingMore = null,
    Object? hasReachedEnd = null,
    Object? replyToMessage = freezed,
  }) {
    return _then(
      _$SendingImpl(
        conversationId:
            null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                    as String,
        conversationName:
            null == conversationName
                ? _value.conversationName
                : conversationName // ignore: cast_nullable_to_non_nullable
                    as String,
        conversationAvatar:
            freezed == conversationAvatar
                ? _value.conversationAvatar
                : conversationAvatar // ignore: cast_nullable_to_non_nullable
                    as String?,
        conversationMemberCount:
            null == conversationMemberCount
                ? _value.conversationMemberCount
                : conversationMemberCount // ignore: cast_nullable_to_non_nullable
                    as int,
        totalUnreadCount:
            null == totalUnreadCount
                ? _value.totalUnreadCount
                : totalUnreadCount // ignore: cast_nullable_to_non_nullable
                    as int,
        messages:
            null == messages
                ? _value._messages
                : messages // ignore: cast_nullable_to_non_nullable
                    as List<ChatMessage>,
        inputText:
            null == inputText
                ? _value.inputText
                : inputText // ignore: cast_nullable_to_non_nullable
                    as String,
        pendingMessage:
            null == pendingMessage
                ? _value.pendingMessage
                : pendingMessage // ignore: cast_nullable_to_non_nullable
                    as ChatMessage,
        isLoadingMore:
            null == isLoadingMore
                ? _value.isLoadingMore
                : isLoadingMore // ignore: cast_nullable_to_non_nullable
                    as bool,
        hasReachedEnd:
            null == hasReachedEnd
                ? _value.hasReachedEnd
                : hasReachedEnd // ignore: cast_nullable_to_non_nullable
                    as bool,
        replyToMessage:
            freezed == replyToMessage
                ? _value.replyToMessage
                : replyToMessage // ignore: cast_nullable_to_non_nullable
                    as ChatMessage?,
      ),
    );
  }
}

/// @nodoc

class _$SendingImpl implements _Sending {
  const _$SendingImpl({
    required this.conversationId,
    required this.conversationName,
    this.conversationAvatar,
    this.conversationMemberCount = 0,
    this.totalUnreadCount = 0,
    required final List<ChatMessage> messages,
    this.inputText = '',
    required this.pendingMessage,
    this.isLoadingMore = false,
    this.hasReachedEnd = false,
    this.replyToMessage,
  }) : _messages = messages;

  @override
  final String conversationId;
  @override
  final String conversationName;
  @override
  final String? conversationAvatar;
  @override
  @JsonKey()
  final int conversationMemberCount;
  @override
  @JsonKey()
  final int totalUnreadCount;
  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final String inputText;
  @override
  final ChatMessage pendingMessage;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool hasReachedEnd;
  @override
  final ChatMessage? replyToMessage;

  @override
  String toString() {
    return 'ChatListState.sending(conversationId: $conversationId, conversationName: $conversationName, conversationAvatar: $conversationAvatar, conversationMemberCount: $conversationMemberCount, totalUnreadCount: $totalUnreadCount, messages: $messages, inputText: $inputText, pendingMessage: $pendingMessage, isLoadingMore: $isLoadingMore, hasReachedEnd: $hasReachedEnd, replyToMessage: $replyToMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendingImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.conversationName, conversationName) ||
                other.conversationName == conversationName) &&
            (identical(other.conversationAvatar, conversationAvatar) ||
                other.conversationAvatar == conversationAvatar) &&
            (identical(
                  other.conversationMemberCount,
                  conversationMemberCount,
                ) ||
                other.conversationMemberCount == conversationMemberCount) &&
            (identical(other.totalUnreadCount, totalUnreadCount) ||
                other.totalUnreadCount == totalUnreadCount) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.inputText, inputText) ||
                other.inputText == inputText) &&
            (identical(other.pendingMessage, pendingMessage) ||
                other.pendingMessage == pendingMessage) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd) &&
            (identical(other.replyToMessage, replyToMessage) ||
                other.replyToMessage == replyToMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    conversationId,
    conversationName,
    conversationAvatar,
    conversationMemberCount,
    totalUnreadCount,
    const DeepCollectionEquality().hash(_messages),
    inputText,
    pendingMessage,
    isLoadingMore,
    hasReachedEnd,
    replyToMessage,
  );

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendingImplCopyWith<_$SendingImpl> get copyWith =>
      __$$SendingImplCopyWithImpl<_$SendingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    success,
    required TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    input,
    required TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    sending,
    required TResult Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
    )
    failure,
  }) {
    return sending(
      conversationId,
      conversationName,
      conversationAvatar,
      conversationMemberCount,
      totalUnreadCount,
      messages,
      inputText,
      pendingMessage,
      isLoadingMore,
      hasReachedEnd,
      replyToMessage,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    success,
    TResult? Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    input,
    TResult? Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    sending,
    TResult? Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
    )?
    failure,
  }) {
    return sending?.call(
      conversationId,
      conversationName,
      conversationAvatar,
      conversationMemberCount,
      totalUnreadCount,
      messages,
      inputText,
      pendingMessage,
      isLoadingMore,
      hasReachedEnd,
      replyToMessage,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    success,
    TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    input,
    TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    sending,
    TResult Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
    )?
    failure,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(
        conversationId,
        conversationName,
        conversationAvatar,
        conversationMemberCount,
        totalUnreadCount,
        messages,
        inputText,
        pendingMessage,
        isLoadingMore,
        hasReachedEnd,
        replyToMessage,
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
    required TResult Function(_Input value) input,
    required TResult Function(_Sending value) sending,
    required TResult Function(_Failure value) failure,
  }) {
    return sending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Input value)? input,
    TResult? Function(_Sending value)? sending,
    TResult? Function(_Failure value)? failure,
  }) {
    return sending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Input value)? input,
    TResult Function(_Sending value)? sending,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(this);
    }
    return orElse();
  }
}

abstract class _Sending implements ChatListState {
  const factory _Sending({
    required final String conversationId,
    required final String conversationName,
    final String? conversationAvatar,
    final int conversationMemberCount,
    final int totalUnreadCount,
    required final List<ChatMessage> messages,
    final String inputText,
    required final ChatMessage pendingMessage,
    final bool isLoadingMore,
    final bool hasReachedEnd,
    final ChatMessage? replyToMessage,
  }) = _$SendingImpl;

  String get conversationId;
  String get conversationName;
  String? get conversationAvatar;
  int get conversationMemberCount;
  int get totalUnreadCount;
  List<ChatMessage> get messages;
  String get inputText;
  ChatMessage get pendingMessage;
  bool get isLoadingMore;
  bool get hasReachedEnd;
  ChatMessage? get replyToMessage;

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendingImplCopyWith<_$SendingImpl> get copyWith =>
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
    String? conversationId,
    String? conversationName,
    String? conversationAvatar,
    List<ChatMessage> messages,
    String errorMessage,
  });
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$ChatListStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
    _$FailureImpl _value,
    $Res Function(_$FailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = freezed,
    Object? conversationName = freezed,
    Object? conversationAvatar = freezed,
    Object? messages = null,
    Object? errorMessage = null,
  }) {
    return _then(
      _$FailureImpl(
        conversationId:
            freezed == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                    as String?,
        conversationName:
            freezed == conversationName
                ? _value.conversationName
                : conversationName // ignore: cast_nullable_to_non_nullable
                    as String?,
        conversationAvatar:
            freezed == conversationAvatar
                ? _value.conversationAvatar
                : conversationAvatar // ignore: cast_nullable_to_non_nullable
                    as String?,
        messages:
            null == messages
                ? _value._messages
                : messages // ignore: cast_nullable_to_non_nullable
                    as List<ChatMessage>,
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
  const _$FailureImpl({
    this.conversationId,
    this.conversationName,
    this.conversationAvatar,
    final List<ChatMessage> messages = const [],
    required this.errorMessage,
  }) : _messages = messages;

  @override
  final String? conversationId;
  @override
  final String? conversationName;
  @override
  final String? conversationAvatar;
  final List<ChatMessage> _messages;
  @override
  @JsonKey()
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ChatListState.failure(conversationId: $conversationId, conversationName: $conversationName, conversationAvatar: $conversationAvatar, messages: $messages, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.conversationName, conversationName) ||
                other.conversationName == conversationName) &&
            (identical(other.conversationAvatar, conversationAvatar) ||
                other.conversationAvatar == conversationAvatar) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    conversationId,
    conversationName,
    conversationAvatar,
    const DeepCollectionEquality().hash(_messages),
    errorMessage,
  );

  /// Create a copy of ChatListState
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
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    success,
    required TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    input,
    required TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )
    sending,
    required TResult Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
    )
    failure,
  }) {
    return failure(
      conversationId,
      conversationName,
      conversationAvatar,
      messages,
      errorMessage,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    success,
    TResult? Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    input,
    TResult? Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    sending,
    TResult? Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
    )?
    failure,
  }) {
    return failure?.call(
      conversationId,
      conversationName,
      conversationAvatar,
      messages,
      errorMessage,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      String conversationId,
      String conversationName,
      int conversationMemberCount,
      int totalUnreadCount,
      String? conversationAvatar,
      List<ChatMessage> messages,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    success,
    TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      bool isInputValid,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    input,
    TResult Function(
      String conversationId,
      String conversationName,
      String? conversationAvatar,
      int conversationMemberCount,
      int totalUnreadCount,
      List<ChatMessage> messages,
      String inputText,
      ChatMessage pendingMessage,
      bool isLoadingMore,
      bool hasReachedEnd,
      ChatMessage? replyToMessage,
    )?
    sending,
    TResult Function(
      String? conversationId,
      String? conversationName,
      String? conversationAvatar,
      List<ChatMessage> messages,
      String errorMessage,
    )?
    failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(
        conversationId,
        conversationName,
        conversationAvatar,
        messages,
        errorMessage,
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
    required TResult Function(_Input value) input,
    required TResult Function(_Sending value) sending,
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
    TResult? Function(_Input value)? input,
    TResult? Function(_Sending value)? sending,
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
    TResult Function(_Input value)? input,
    TResult Function(_Sending value)? sending,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ChatListState {
  const factory _Failure({
    final String? conversationId,
    final String? conversationName,
    final String? conversationAvatar,
    final List<ChatMessage> messages,
    required final String errorMessage,
  }) = _$FailureImpl;

  String? get conversationId;
  String? get conversationName;
  String? get conversationAvatar;
  List<ChatMessage> get messages;
  String get errorMessage;

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
