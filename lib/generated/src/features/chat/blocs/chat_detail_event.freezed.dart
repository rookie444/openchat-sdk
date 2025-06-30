// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/features/chat/blocs/chat_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiChatType chatType, int targetId) initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(String imagePath) sendImageMessage,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId, FfiMsgStatus status)
    messageStatusUpdated,
    required TResult Function(int messageId) retryMessage,
    required TResult Function(int messageId) deleteMessage,
    required TResult Function(List<ChatMessage> messages)
    multipleMessagesReceived,
    required TResult Function(FfiUser user) userInfoUpdated,
    required TResult Function(ChatMessage message) startReply,
    required TResult Function() cancelReply,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiChatType chatType, int targetId)? initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(String imagePath)? sendImageMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiChatType chatType, int targetId)? initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(String imagePath)? sendImageMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_MessageInputChanged value) messageInputChanged,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailEventCopyWith<$Res> {
  factory $ChatDetailEventCopyWith(
    ChatDetailEvent value,
    $Res Function(ChatDetailEvent) then,
  ) = _$ChatDetailEventCopyWithImpl<$Res, ChatDetailEvent>;
}

/// @nodoc
class _$ChatDetailEventCopyWithImpl<$Res, $Val extends ChatDetailEvent>
    implements $ChatDetailEventCopyWith<$Res> {
  _$ChatDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
    _$InitializedImpl value,
    $Res Function(_$InitializedImpl) then,
  ) = __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiChatType chatType, int targetId});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
    _$InitializedImpl _value,
    $Res Function(_$InitializedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chatType = null, Object? targetId = null}) {
    return _then(
      _$InitializedImpl(
        null == chatType
            ? _value.chatType
            : chatType // ignore: cast_nullable_to_non_nullable
                as FfiChatType,
        null == targetId
            ? _value.targetId
            : targetId // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.chatType, this.targetId);

  @override
  final FfiChatType chatType;
  @override
  final int targetId;

  @override
  String toString() {
    return 'ChatDetailEvent.initialized(chatType: $chatType, targetId: $targetId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.chatType, chatType) ||
                other.chatType == chatType) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatType, targetId);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiChatType chatType, int targetId) initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(String imagePath) sendImageMessage,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId, FfiMsgStatus status)
    messageStatusUpdated,
    required TResult Function(int messageId) retryMessage,
    required TResult Function(int messageId) deleteMessage,
    required TResult Function(List<ChatMessage> messages)
    multipleMessagesReceived,
    required TResult Function(FfiUser user) userInfoUpdated,
    required TResult Function(ChatMessage message) startReply,
    required TResult Function() cancelReply,
  }) {
    return initialized(chatType, targetId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiChatType chatType, int targetId)? initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(String imagePath)? sendImageMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
  }) {
    return initialized?.call(chatType, targetId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiChatType chatType, int targetId)? initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(String imagePath)? sendImageMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(chatType, targetId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_MessageInputChanged value) messageInputChanged,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ChatDetailEvent {
  const factory _Initialized(final FfiChatType chatType, final int targetId) =
      _$InitializedImpl;

  FfiChatType get chatType;
  int get targetId;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreMessagesImplCopyWith<$Res> {
  factory _$$LoadMoreMessagesImplCopyWith(
    _$LoadMoreMessagesImpl value,
    $Res Function(_$LoadMoreMessagesImpl) then,
  ) = __$$LoadMoreMessagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreMessagesImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$LoadMoreMessagesImpl>
    implements _$$LoadMoreMessagesImplCopyWith<$Res> {
  __$$LoadMoreMessagesImplCopyWithImpl(
    _$LoadMoreMessagesImpl _value,
    $Res Function(_$LoadMoreMessagesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreMessagesImpl implements _LoadMoreMessages {
  const _$LoadMoreMessagesImpl();

  @override
  String toString() {
    return 'ChatDetailEvent.loadMoreMessages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreMessagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiChatType chatType, int targetId) initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(String imagePath) sendImageMessage,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId, FfiMsgStatus status)
    messageStatusUpdated,
    required TResult Function(int messageId) retryMessage,
    required TResult Function(int messageId) deleteMessage,
    required TResult Function(List<ChatMessage> messages)
    multipleMessagesReceived,
    required TResult Function(FfiUser user) userInfoUpdated,
    required TResult Function(ChatMessage message) startReply,
    required TResult Function() cancelReply,
  }) {
    return loadMoreMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiChatType chatType, int targetId)? initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(String imagePath)? sendImageMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
  }) {
    return loadMoreMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiChatType chatType, int targetId)? initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(String imagePath)? sendImageMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    required TResult orElse(),
  }) {
    if (loadMoreMessages != null) {
      return loadMoreMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_MessageInputChanged value) messageInputChanged,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
  }) {
    return loadMoreMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
  }) {
    return loadMoreMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    required TResult orElse(),
  }) {
    if (loadMoreMessages != null) {
      return loadMoreMessages(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreMessages implements ChatDetailEvent {
  const factory _LoadMoreMessages() = _$LoadMoreMessagesImpl;
}

/// @nodoc
abstract class _$$MessageInputChangedImplCopyWith<$Res> {
  factory _$$MessageInputChangedImplCopyWith(
    _$MessageInputChangedImpl value,
    $Res Function(_$MessageInputChangedImpl) then,
  ) = __$$MessageInputChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$MessageInputChangedImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$MessageInputChangedImpl>
    implements _$$MessageInputChangedImplCopyWith<$Res> {
  __$$MessageInputChangedImplCopyWithImpl(
    _$MessageInputChangedImpl _value,
    $Res Function(_$MessageInputChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null}) {
    return _then(
      _$MessageInputChangedImpl(
        null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$MessageInputChangedImpl implements _MessageInputChanged {
  const _$MessageInputChangedImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ChatDetailEvent.messageInputChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageInputChangedImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageInputChangedImplCopyWith<_$MessageInputChangedImpl> get copyWith =>
      __$$MessageInputChangedImplCopyWithImpl<_$MessageInputChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiChatType chatType, int targetId) initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(String imagePath) sendImageMessage,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId, FfiMsgStatus status)
    messageStatusUpdated,
    required TResult Function(int messageId) retryMessage,
    required TResult Function(int messageId) deleteMessage,
    required TResult Function(List<ChatMessage> messages)
    multipleMessagesReceived,
    required TResult Function(FfiUser user) userInfoUpdated,
    required TResult Function(ChatMessage message) startReply,
    required TResult Function() cancelReply,
  }) {
    return messageInputChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiChatType chatType, int targetId)? initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(String imagePath)? sendImageMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
  }) {
    return messageInputChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiChatType chatType, int targetId)? initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(String imagePath)? sendImageMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    required TResult orElse(),
  }) {
    if (messageInputChanged != null) {
      return messageInputChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_MessageInputChanged value) messageInputChanged,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
  }) {
    return messageInputChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
  }) {
    return messageInputChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    required TResult orElse(),
  }) {
    if (messageInputChanged != null) {
      return messageInputChanged(this);
    }
    return orElse();
  }
}

abstract class _MessageInputChanged implements ChatDetailEvent {
  const factory _MessageInputChanged(final String text) =
      _$MessageInputChangedImpl;

  String get text;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageInputChangedImplCopyWith<_$MessageInputChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendTextMessageImplCopyWith<$Res> {
  factory _$$SendTextMessageImplCopyWith(
    _$SendTextMessageImpl value,
    $Res Function(_$SendTextMessageImpl) then,
  ) = __$$SendTextMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendTextMessageImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$SendTextMessageImpl>
    implements _$$SendTextMessageImplCopyWith<$Res> {
  __$$SendTextMessageImplCopyWithImpl(
    _$SendTextMessageImpl _value,
    $Res Function(_$SendTextMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendTextMessageImpl implements _SendTextMessage {
  const _$SendTextMessageImpl();

  @override
  String toString() {
    return 'ChatDetailEvent.sendTextMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendTextMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiChatType chatType, int targetId) initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(String imagePath) sendImageMessage,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId, FfiMsgStatus status)
    messageStatusUpdated,
    required TResult Function(int messageId) retryMessage,
    required TResult Function(int messageId) deleteMessage,
    required TResult Function(List<ChatMessage> messages)
    multipleMessagesReceived,
    required TResult Function(FfiUser user) userInfoUpdated,
    required TResult Function(ChatMessage message) startReply,
    required TResult Function() cancelReply,
  }) {
    return sendTextMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiChatType chatType, int targetId)? initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(String imagePath)? sendImageMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
  }) {
    return sendTextMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiChatType chatType, int targetId)? initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(String imagePath)? sendImageMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    required TResult orElse(),
  }) {
    if (sendTextMessage != null) {
      return sendTextMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_MessageInputChanged value) messageInputChanged,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
  }) {
    return sendTextMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
  }) {
    return sendTextMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    required TResult orElse(),
  }) {
    if (sendTextMessage != null) {
      return sendTextMessage(this);
    }
    return orElse();
  }
}

abstract class _SendTextMessage implements ChatDetailEvent {
  const factory _SendTextMessage() = _$SendTextMessageImpl;
}

/// @nodoc
abstract class _$$SendImageMessageImplCopyWith<$Res> {
  factory _$$SendImageMessageImplCopyWith(
    _$SendImageMessageImpl value,
    $Res Function(_$SendImageMessageImpl) then,
  ) = __$$SendImageMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$SendImageMessageImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$SendImageMessageImpl>
    implements _$$SendImageMessageImplCopyWith<$Res> {
  __$$SendImageMessageImplCopyWithImpl(
    _$SendImageMessageImpl _value,
    $Res Function(_$SendImageMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imagePath = null}) {
    return _then(
      _$SendImageMessageImpl(
        null == imagePath
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SendImageMessageImpl implements _SendImageMessage {
  const _$SendImageMessageImpl(this.imagePath);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'ChatDetailEvent.sendImageMessage(imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendImageMessageImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendImageMessageImplCopyWith<_$SendImageMessageImpl> get copyWith =>
      __$$SendImageMessageImplCopyWithImpl<_$SendImageMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiChatType chatType, int targetId) initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(String imagePath) sendImageMessage,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId, FfiMsgStatus status)
    messageStatusUpdated,
    required TResult Function(int messageId) retryMessage,
    required TResult Function(int messageId) deleteMessage,
    required TResult Function(List<ChatMessage> messages)
    multipleMessagesReceived,
    required TResult Function(FfiUser user) userInfoUpdated,
    required TResult Function(ChatMessage message) startReply,
    required TResult Function() cancelReply,
  }) {
    return sendImageMessage(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiChatType chatType, int targetId)? initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(String imagePath)? sendImageMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
  }) {
    return sendImageMessage?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiChatType chatType, int targetId)? initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(String imagePath)? sendImageMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_MessageInputChanged value) messageInputChanged,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
  }) {
    return sendImageMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
  }) {
    return sendImageMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(this);
    }
    return orElse();
  }
}

abstract class _SendImageMessage implements ChatDetailEvent {
  const factory _SendImageMessage(final String imagePath) =
      _$SendImageMessageImpl;

  String get imagePath;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendImageMessageImplCopyWith<_$SendImageMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageReceivedImplCopyWith<$Res> {
  factory _$$MessageReceivedImplCopyWith(
    _$MessageReceivedImpl value,
    $Res Function(_$MessageReceivedImpl) then,
  ) = __$$MessageReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$MessageReceivedImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$MessageReceivedImpl>
    implements _$$MessageReceivedImplCopyWith<$Res> {
  __$$MessageReceivedImplCopyWithImpl(
    _$MessageReceivedImpl _value,
    $Res Function(_$MessageReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$MessageReceivedImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as ChatMessage,
      ),
    );
  }

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageCopyWith<$Res> get message {
    return $ChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$MessageReceivedImpl implements _MessageReceived {
  const _$MessageReceivedImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatDetailEvent.messageReceived(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReceivedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      __$$MessageReceivedImplCopyWithImpl<_$MessageReceivedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiChatType chatType, int targetId) initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(String imagePath) sendImageMessage,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId, FfiMsgStatus status)
    messageStatusUpdated,
    required TResult Function(int messageId) retryMessage,
    required TResult Function(int messageId) deleteMessage,
    required TResult Function(List<ChatMessage> messages)
    multipleMessagesReceived,
    required TResult Function(FfiUser user) userInfoUpdated,
    required TResult Function(ChatMessage message) startReply,
    required TResult Function() cancelReply,
  }) {
    return messageReceived(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiChatType chatType, int targetId)? initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(String imagePath)? sendImageMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
  }) {
    return messageReceived?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiChatType chatType, int targetId)? initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(String imagePath)? sendImageMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_MessageInputChanged value) messageInputChanged,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
  }) {
    return messageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
  }) {
    return messageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(this);
    }
    return orElse();
  }
}

abstract class _MessageReceived implements ChatDetailEvent {
  const factory _MessageReceived(final ChatMessage message) =
      _$MessageReceivedImpl;

  ChatMessage get message;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageReceivedImplCopyWith<_$MessageReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageStatusUpdatedImplCopyWith<$Res> {
  factory _$$MessageStatusUpdatedImplCopyWith(
    _$MessageStatusUpdatedImpl value,
    $Res Function(_$MessageStatusUpdatedImpl) then,
  ) = __$$MessageStatusUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId, FfiMsgStatus status});
}

/// @nodoc
class __$$MessageStatusUpdatedImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$MessageStatusUpdatedImpl>
    implements _$$MessageStatusUpdatedImplCopyWith<$Res> {
  __$$MessageStatusUpdatedImplCopyWithImpl(
    _$MessageStatusUpdatedImpl _value,
    $Res Function(_$MessageStatusUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messageId = null, Object? status = null}) {
    return _then(
      _$MessageStatusUpdatedImpl(
        null == messageId
            ? _value.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                as String,
        null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                as FfiMsgStatus,
      ),
    );
  }
}

/// @nodoc

class _$MessageStatusUpdatedImpl implements _MessageStatusUpdated {
  const _$MessageStatusUpdatedImpl(this.messageId, this.status);

  @override
  final String messageId;
  @override
  final FfiMsgStatus status;

  @override
  String toString() {
    return 'ChatDetailEvent.messageStatusUpdated(messageId: $messageId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageStatusUpdatedImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId, status);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageStatusUpdatedImplCopyWith<_$MessageStatusUpdatedImpl>
  get copyWith =>
      __$$MessageStatusUpdatedImplCopyWithImpl<_$MessageStatusUpdatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiChatType chatType, int targetId) initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(String imagePath) sendImageMessage,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId, FfiMsgStatus status)
    messageStatusUpdated,
    required TResult Function(int messageId) retryMessage,
    required TResult Function(int messageId) deleteMessage,
    required TResult Function(List<ChatMessage> messages)
    multipleMessagesReceived,
    required TResult Function(FfiUser user) userInfoUpdated,
    required TResult Function(ChatMessage message) startReply,
    required TResult Function() cancelReply,
  }) {
    return messageStatusUpdated(messageId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiChatType chatType, int targetId)? initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(String imagePath)? sendImageMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
  }) {
    return messageStatusUpdated?.call(messageId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiChatType chatType, int targetId)? initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(String imagePath)? sendImageMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    required TResult orElse(),
  }) {
    if (messageStatusUpdated != null) {
      return messageStatusUpdated(messageId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_MessageInputChanged value) messageInputChanged,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
  }) {
    return messageStatusUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
  }) {
    return messageStatusUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    required TResult orElse(),
  }) {
    if (messageStatusUpdated != null) {
      return messageStatusUpdated(this);
    }
    return orElse();
  }
}

abstract class _MessageStatusUpdated implements ChatDetailEvent {
  const factory _MessageStatusUpdated(
    final String messageId,
    final FfiMsgStatus status,
  ) = _$MessageStatusUpdatedImpl;

  String get messageId;
  FfiMsgStatus get status;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageStatusUpdatedImplCopyWith<_$MessageStatusUpdatedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RetryMessageImplCopyWith<$Res> {
  factory _$$RetryMessageImplCopyWith(
    _$RetryMessageImpl value,
    $Res Function(_$RetryMessageImpl) then,
  ) = __$$RetryMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int messageId});
}

/// @nodoc
class __$$RetryMessageImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$RetryMessageImpl>
    implements _$$RetryMessageImplCopyWith<$Res> {
  __$$RetryMessageImplCopyWithImpl(
    _$RetryMessageImpl _value,
    $Res Function(_$RetryMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messageId = null}) {
    return _then(
      _$RetryMessageImpl(
        null == messageId
            ? _value.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$RetryMessageImpl implements _RetryMessage {
  const _$RetryMessageImpl(this.messageId);

  @override
  final int messageId;

  @override
  String toString() {
    return 'ChatDetailEvent.retryMessage(messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetryMessageImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetryMessageImplCopyWith<_$RetryMessageImpl> get copyWith =>
      __$$RetryMessageImplCopyWithImpl<_$RetryMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiChatType chatType, int targetId) initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(String imagePath) sendImageMessage,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId, FfiMsgStatus status)
    messageStatusUpdated,
    required TResult Function(int messageId) retryMessage,
    required TResult Function(int messageId) deleteMessage,
    required TResult Function(List<ChatMessage> messages)
    multipleMessagesReceived,
    required TResult Function(FfiUser user) userInfoUpdated,
    required TResult Function(ChatMessage message) startReply,
    required TResult Function() cancelReply,
  }) {
    return retryMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiChatType chatType, int targetId)? initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(String imagePath)? sendImageMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
  }) {
    return retryMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiChatType chatType, int targetId)? initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(String imagePath)? sendImageMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    required TResult orElse(),
  }) {
    if (retryMessage != null) {
      return retryMessage(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_MessageInputChanged value) messageInputChanged,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
  }) {
    return retryMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
  }) {
    return retryMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    required TResult orElse(),
  }) {
    if (retryMessage != null) {
      return retryMessage(this);
    }
    return orElse();
  }
}

abstract class _RetryMessage implements ChatDetailEvent {
  const factory _RetryMessage(final int messageId) = _$RetryMessageImpl;

  int get messageId;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetryMessageImplCopyWith<_$RetryMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteMessageImplCopyWith<$Res> {
  factory _$$DeleteMessageImplCopyWith(
    _$DeleteMessageImpl value,
    $Res Function(_$DeleteMessageImpl) then,
  ) = __$$DeleteMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int messageId});
}

/// @nodoc
class __$$DeleteMessageImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$DeleteMessageImpl>
    implements _$$DeleteMessageImplCopyWith<$Res> {
  __$$DeleteMessageImplCopyWithImpl(
    _$DeleteMessageImpl _value,
    $Res Function(_$DeleteMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messageId = null}) {
    return _then(
      _$DeleteMessageImpl(
        null == messageId
            ? _value.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$DeleteMessageImpl implements _DeleteMessage {
  const _$DeleteMessageImpl(this.messageId);

  @override
  final int messageId;

  @override
  String toString() {
    return 'ChatDetailEvent.deleteMessage(messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMessageImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      __$$DeleteMessageImplCopyWithImpl<_$DeleteMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiChatType chatType, int targetId) initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(String imagePath) sendImageMessage,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId, FfiMsgStatus status)
    messageStatusUpdated,
    required TResult Function(int messageId) retryMessage,
    required TResult Function(int messageId) deleteMessage,
    required TResult Function(List<ChatMessage> messages)
    multipleMessagesReceived,
    required TResult Function(FfiUser user) userInfoUpdated,
    required TResult Function(ChatMessage message) startReply,
    required TResult Function() cancelReply,
  }) {
    return deleteMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiChatType chatType, int targetId)? initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(String imagePath)? sendImageMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
  }) {
    return deleteMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiChatType chatType, int targetId)? initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(String imagePath)? sendImageMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_MessageInputChanged value) messageInputChanged,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
  }) {
    return deleteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class _DeleteMessage implements ChatDetailEvent {
  const factory _DeleteMessage(final int messageId) = _$DeleteMessageImpl;

  int get messageId;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultipleMessagesReceivedImplCopyWith<$Res> {
  factory _$$MultipleMessagesReceivedImplCopyWith(
    _$MultipleMessagesReceivedImpl value,
    $Res Function(_$MultipleMessagesReceivedImpl) then,
  ) = __$$MultipleMessagesReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatMessage> messages});
}

/// @nodoc
class __$$MultipleMessagesReceivedImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$MultipleMessagesReceivedImpl>
    implements _$$MultipleMessagesReceivedImplCopyWith<$Res> {
  __$$MultipleMessagesReceivedImplCopyWithImpl(
    _$MultipleMessagesReceivedImpl _value,
    $Res Function(_$MultipleMessagesReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _$MultipleMessagesReceivedImpl(
        null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                as List<ChatMessage>,
      ),
    );
  }
}

/// @nodoc

class _$MultipleMessagesReceivedImpl implements _MultipleMessagesReceived {
  const _$MultipleMessagesReceivedImpl(final List<ChatMessage> messages)
    : _messages = messages;

  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatDetailEvent.multipleMessagesReceived(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultipleMessagesReceivedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultipleMessagesReceivedImplCopyWith<_$MultipleMessagesReceivedImpl>
  get copyWith => __$$MultipleMessagesReceivedImplCopyWithImpl<
    _$MultipleMessagesReceivedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiChatType chatType, int targetId) initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(String imagePath) sendImageMessage,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId, FfiMsgStatus status)
    messageStatusUpdated,
    required TResult Function(int messageId) retryMessage,
    required TResult Function(int messageId) deleteMessage,
    required TResult Function(List<ChatMessage> messages)
    multipleMessagesReceived,
    required TResult Function(FfiUser user) userInfoUpdated,
    required TResult Function(ChatMessage message) startReply,
    required TResult Function() cancelReply,
  }) {
    return multipleMessagesReceived(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiChatType chatType, int targetId)? initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(String imagePath)? sendImageMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
  }) {
    return multipleMessagesReceived?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiChatType chatType, int targetId)? initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(String imagePath)? sendImageMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    required TResult orElse(),
  }) {
    if (multipleMessagesReceived != null) {
      return multipleMessagesReceived(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_MessageInputChanged value) messageInputChanged,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
  }) {
    return multipleMessagesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
  }) {
    return multipleMessagesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    required TResult orElse(),
  }) {
    if (multipleMessagesReceived != null) {
      return multipleMessagesReceived(this);
    }
    return orElse();
  }
}

abstract class _MultipleMessagesReceived implements ChatDetailEvent {
  const factory _MultipleMessagesReceived(final List<ChatMessage> messages) =
      _$MultipleMessagesReceivedImpl;

  List<ChatMessage> get messages;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultipleMessagesReceivedImplCopyWith<_$MultipleMessagesReceivedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserInfoUpdatedImplCopyWith<$Res> {
  factory _$$UserInfoUpdatedImplCopyWith(
    _$UserInfoUpdatedImpl value,
    $Res Function(_$UserInfoUpdatedImpl) then,
  ) = __$$UserInfoUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiUser user});

  $FfiUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserInfoUpdatedImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$UserInfoUpdatedImpl>
    implements _$$UserInfoUpdatedImplCopyWith<$Res> {
  __$$UserInfoUpdatedImplCopyWithImpl(
    _$UserInfoUpdatedImpl _value,
    $Res Function(_$UserInfoUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null}) {
    return _then(
      _$UserInfoUpdatedImpl(
        null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                as FfiUser,
      ),
    );
  }

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiUserCopyWith<$Res> get user {
    return $FfiUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserInfoUpdatedImpl implements _UserInfoUpdated {
  const _$UserInfoUpdatedImpl(this.user);

  @override
  final FfiUser user;

  @override
  String toString() {
    return 'ChatDetailEvent.userInfoUpdated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoUpdatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoUpdatedImplCopyWith<_$UserInfoUpdatedImpl> get copyWith =>
      __$$UserInfoUpdatedImplCopyWithImpl<_$UserInfoUpdatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiChatType chatType, int targetId) initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(String imagePath) sendImageMessage,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId, FfiMsgStatus status)
    messageStatusUpdated,
    required TResult Function(int messageId) retryMessage,
    required TResult Function(int messageId) deleteMessage,
    required TResult Function(List<ChatMessage> messages)
    multipleMessagesReceived,
    required TResult Function(FfiUser user) userInfoUpdated,
    required TResult Function(ChatMessage message) startReply,
    required TResult Function() cancelReply,
  }) {
    return userInfoUpdated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiChatType chatType, int targetId)? initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(String imagePath)? sendImageMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
  }) {
    return userInfoUpdated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiChatType chatType, int targetId)? initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(String imagePath)? sendImageMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    required TResult orElse(),
  }) {
    if (userInfoUpdated != null) {
      return userInfoUpdated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_MessageInputChanged value) messageInputChanged,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
  }) {
    return userInfoUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
  }) {
    return userInfoUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    required TResult orElse(),
  }) {
    if (userInfoUpdated != null) {
      return userInfoUpdated(this);
    }
    return orElse();
  }
}

abstract class _UserInfoUpdated implements ChatDetailEvent {
  const factory _UserInfoUpdated(final FfiUser user) = _$UserInfoUpdatedImpl;

  FfiUser get user;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoUpdatedImplCopyWith<_$UserInfoUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartReplyImplCopyWith<$Res> {
  factory _$$StartReplyImplCopyWith(
    _$StartReplyImpl value,
    $Res Function(_$StartReplyImpl) then,
  ) = __$$StartReplyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessage message});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$StartReplyImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$StartReplyImpl>
    implements _$$StartReplyImplCopyWith<$Res> {
  __$$StartReplyImplCopyWithImpl(
    _$StartReplyImpl _value,
    $Res Function(_$StartReplyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$StartReplyImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as ChatMessage,
      ),
    );
  }

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageCopyWith<$Res> get message {
    return $ChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$StartReplyImpl implements _StartReply {
  const _$StartReplyImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatDetailEvent.startReply(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartReplyImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartReplyImplCopyWith<_$StartReplyImpl> get copyWith =>
      __$$StartReplyImplCopyWithImpl<_$StartReplyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiChatType chatType, int targetId) initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(String imagePath) sendImageMessage,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId, FfiMsgStatus status)
    messageStatusUpdated,
    required TResult Function(int messageId) retryMessage,
    required TResult Function(int messageId) deleteMessage,
    required TResult Function(List<ChatMessage> messages)
    multipleMessagesReceived,
    required TResult Function(FfiUser user) userInfoUpdated,
    required TResult Function(ChatMessage message) startReply,
    required TResult Function() cancelReply,
  }) {
    return startReply(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiChatType chatType, int targetId)? initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(String imagePath)? sendImageMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
  }) {
    return startReply?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiChatType chatType, int targetId)? initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(String imagePath)? sendImageMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    required TResult orElse(),
  }) {
    if (startReply != null) {
      return startReply(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_MessageInputChanged value) messageInputChanged,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
  }) {
    return startReply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
  }) {
    return startReply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    required TResult orElse(),
  }) {
    if (startReply != null) {
      return startReply(this);
    }
    return orElse();
  }
}

abstract class _StartReply implements ChatDetailEvent {
  const factory _StartReply(final ChatMessage message) = _$StartReplyImpl;

  ChatMessage get message;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartReplyImplCopyWith<_$StartReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelReplyImplCopyWith<$Res> {
  factory _$$CancelReplyImplCopyWith(
    _$CancelReplyImpl value,
    $Res Function(_$CancelReplyImpl) then,
  ) = __$$CancelReplyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelReplyImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$CancelReplyImpl>
    implements _$$CancelReplyImplCopyWith<$Res> {
  __$$CancelReplyImplCopyWithImpl(
    _$CancelReplyImpl _value,
    $Res Function(_$CancelReplyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelReplyImpl implements _CancelReply {
  const _$CancelReplyImpl();

  @override
  String toString() {
    return 'ChatDetailEvent.cancelReply()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelReplyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiChatType chatType, int targetId) initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(String imagePath) sendImageMessage,
    required TResult Function(ChatMessage message) messageReceived,
    required TResult Function(String messageId, FfiMsgStatus status)
    messageStatusUpdated,
    required TResult Function(int messageId) retryMessage,
    required TResult Function(int messageId) deleteMessage,
    required TResult Function(List<ChatMessage> messages)
    multipleMessagesReceived,
    required TResult Function(FfiUser user) userInfoUpdated,
    required TResult Function(ChatMessage message) startReply,
    required TResult Function() cancelReply,
  }) {
    return cancelReply();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiChatType chatType, int targetId)? initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(String imagePath)? sendImageMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
  }) {
    return cancelReply?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiChatType chatType, int targetId)? initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(String imagePath)? sendImageMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    required TResult orElse(),
  }) {
    if (cancelReply != null) {
      return cancelReply();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_MessageInputChanged value) messageInputChanged,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
  }) {
    return cancelReply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
  }) {
    return cancelReply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    required TResult orElse(),
  }) {
    if (cancelReply != null) {
      return cancelReply(this);
    }
    return orElse();
  }
}

abstract class _CancelReply implements ChatDetailEvent {
  const factory _CancelReply() = _$CancelReplyImpl;
}
