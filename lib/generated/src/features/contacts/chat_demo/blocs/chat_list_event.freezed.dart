// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../../src/features/contacts/chat_demo/blocs/chat_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_MessageInputChanged value) messageInputChanged,
    required TResult Function(_SendTextMessage value) sendTextMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatListEventCopyWith<$Res> {
  factory $ChatListEventCopyWith(
    ChatListEvent value,
    $Res Function(ChatListEvent) then,
  ) = _$ChatListEventCopyWithImpl<$Res, ChatListEvent>;
}

/// @nodoc
class _$ChatListEventCopyWithImpl<$Res, $Val extends ChatListEvent>
    implements $ChatListEventCopyWith<$Res> {
  _$ChatListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatListEvent
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
    FfiChatType chatType,
    int targetId,
    List<ChatMessage>? messagesToForward,
  });
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
    _$InitializedImpl _value,
    $Res Function(_$InitializedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatType = null,
    Object? targetId = null,
    Object? messagesToForward = freezed,
  }) {
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
        freezed == messagesToForward
            ? _value._messagesToForward
            : messagesToForward // ignore: cast_nullable_to_non_nullable
                as List<ChatMessage>?,
      ),
    );
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(
    this.chatType,
    this.targetId,
    final List<ChatMessage>? messagesToForward,
  ) : _messagesToForward = messagesToForward;

  @override
  final FfiChatType chatType;
  @override
  final int targetId;
  final List<ChatMessage>? _messagesToForward;
  @override
  List<ChatMessage>? get messagesToForward {
    final value = _messagesToForward;
    if (value == null) return null;
    if (_messagesToForward is EqualUnmodifiableListView)
      return _messagesToForward;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatListEvent.initialized(chatType: $chatType, targetId: $targetId, messagesToForward: $messagesToForward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.chatType, chatType) ||
                other.chatType == chatType) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            const DeepCollectionEquality().equals(
              other._messagesToForward,
              _messagesToForward,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    chatType,
    targetId,
    const DeepCollectionEquality().hash(_messagesToForward),
  );

  /// Create a copy of ChatListEvent
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
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return initialized(chatType, targetId, messagesToForward);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return initialized?.call(chatType, targetId, messagesToForward);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(chatType, targetId, messagesToForward);
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
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
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
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
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ChatListEvent {
  const factory _Initialized(
    final FfiChatType chatType,
    final int targetId,
    final List<ChatMessage>? messagesToForward,
  ) = _$InitializedImpl;

  FfiChatType get chatType;
  int get targetId;
  List<ChatMessage>? get messagesToForward;

  /// Create a copy of ChatListEvent
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
    extends _$ChatListEventCopyWithImpl<$Res, _$LoadMoreMessagesImpl>
    implements _$$LoadMoreMessagesImplCopyWith<$Res> {
  __$$LoadMoreMessagesImplCopyWithImpl(
    _$LoadMoreMessagesImpl _value,
    $Res Function(_$LoadMoreMessagesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreMessagesImpl implements _LoadMoreMessages {
  const _$LoadMoreMessagesImpl();

  @override
  String toString() {
    return 'ChatListEvent.loadMoreMessages()';
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
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return loadMoreMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return loadMoreMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
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
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
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
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (loadMoreMessages != null) {
      return loadMoreMessages(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreMessages implements ChatListEvent {
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
    extends _$ChatListEventCopyWithImpl<$Res, _$MessageInputChangedImpl>
    implements _$$MessageInputChangedImplCopyWith<$Res> {
  __$$MessageInputChangedImplCopyWithImpl(
    _$MessageInputChangedImpl _value,
    $Res Function(_$MessageInputChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
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
    return 'ChatListEvent.messageInputChanged(text: $text)';
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

  /// Create a copy of ChatListEvent
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
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return messageInputChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return messageInputChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
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
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
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
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (messageInputChanged != null) {
      return messageInputChanged(this);
    }
    return orElse();
  }
}

abstract class _MessageInputChanged implements ChatListEvent {
  const factory _MessageInputChanged(final String text) =
      _$MessageInputChangedImpl;

  String get text;

  /// Create a copy of ChatListEvent
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
    extends _$ChatListEventCopyWithImpl<$Res, _$SendTextMessageImpl>
    implements _$$SendTextMessageImplCopyWith<$Res> {
  __$$SendTextMessageImplCopyWithImpl(
    _$SendTextMessageImpl _value,
    $Res Function(_$SendTextMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendTextMessageImpl implements _SendTextMessage {
  const _$SendTextMessageImpl();

  @override
  String toString() {
    return 'ChatListEvent.sendTextMessage()';
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
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return sendTextMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return sendTextMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
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
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
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
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendTextMessage != null) {
      return sendTextMessage(this);
    }
    return orElse();
  }
}

abstract class _SendTextMessage implements ChatListEvent {
  const factory _SendTextMessage() = _$SendTextMessageImpl;
}

/// @nodoc
abstract class _$$SendImageMessageImplCopyWith<$Res> {
  factory _$$SendImageMessageImplCopyWith(
    _$SendImageMessageImpl value,
    $Res Function(_$SendImageMessageImpl) then,
  ) = __$$SendImageMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiImageMessageContent imageMessageContent});

  $FfiImageMessageContentCopyWith<$Res> get imageMessageContent;
}

/// @nodoc
class __$$SendImageMessageImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$SendImageMessageImpl>
    implements _$$SendImageMessageImplCopyWith<$Res> {
  __$$SendImageMessageImplCopyWithImpl(
    _$SendImageMessageImpl _value,
    $Res Function(_$SendImageMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imageMessageContent = null}) {
    return _then(
      _$SendImageMessageImpl(
        null == imageMessageContent
            ? _value.imageMessageContent
            : imageMessageContent // ignore: cast_nullable_to_non_nullable
                as FfiImageMessageContent,
      ),
    );
  }

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiImageMessageContentCopyWith<$Res> get imageMessageContent {
    return $FfiImageMessageContentCopyWith<$Res>(_value.imageMessageContent, (
      value,
    ) {
      return _then(_value.copyWith(imageMessageContent: value));
    });
  }
}

/// @nodoc

class _$SendImageMessageImpl implements _SendImageMessage {
  const _$SendImageMessageImpl(this.imageMessageContent);

  @override
  final FfiImageMessageContent imageMessageContent;

  @override
  String toString() {
    return 'ChatListEvent.sendImageMessage(imageMessageContent: $imageMessageContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendImageMessageImpl &&
            (identical(other.imageMessageContent, imageMessageContent) ||
                other.imageMessageContent == imageMessageContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageMessageContent);

  /// Create a copy of ChatListEvent
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
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return sendImageMessage(imageMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return sendImageMessage?.call(imageMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(imageMessageContent);
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
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
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
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
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(this);
    }
    return orElse();
  }
}

abstract class _SendImageMessage implements ChatListEvent {
  const factory _SendImageMessage(
    final FfiImageMessageContent imageMessageContent,
  ) = _$SendImageMessageImpl;

  FfiImageMessageContent get imageMessageContent;

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendImageMessageImplCopyWith<_$SendImageMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendNameCardMessageImplCopyWith<$Res> {
  factory _$$SendNameCardMessageImplCopyWith(
    _$SendNameCardMessageImpl value,
    $Res Function(_$SendNameCardMessageImpl) then,
  ) = __$$SendNameCardMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiNameCardMessageContent nameCardMessageContent});

  $FfiNameCardMessageContentCopyWith<$Res> get nameCardMessageContent;
}

/// @nodoc
class __$$SendNameCardMessageImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$SendNameCardMessageImpl>
    implements _$$SendNameCardMessageImplCopyWith<$Res> {
  __$$SendNameCardMessageImplCopyWithImpl(
    _$SendNameCardMessageImpl _value,
    $Res Function(_$SendNameCardMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? nameCardMessageContent = null}) {
    return _then(
      _$SendNameCardMessageImpl(
        null == nameCardMessageContent
            ? _value.nameCardMessageContent
            : nameCardMessageContent // ignore: cast_nullable_to_non_nullable
                as FfiNameCardMessageContent,
      ),
    );
  }

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiNameCardMessageContentCopyWith<$Res> get nameCardMessageContent {
    return $FfiNameCardMessageContentCopyWith<$Res>(
      _value.nameCardMessageContent,
      (value) {
        return _then(_value.copyWith(nameCardMessageContent: value));
      },
    );
  }
}

/// @nodoc

class _$SendNameCardMessageImpl implements _SendNameCardMessage {
  const _$SendNameCardMessageImpl(this.nameCardMessageContent);

  @override
  final FfiNameCardMessageContent nameCardMessageContent;

  @override
  String toString() {
    return 'ChatListEvent.sendNameCardMessage(nameCardMessageContent: $nameCardMessageContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendNameCardMessageImpl &&
            (identical(other.nameCardMessageContent, nameCardMessageContent) ||
                other.nameCardMessageContent == nameCardMessageContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameCardMessageContent);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendNameCardMessageImplCopyWith<_$SendNameCardMessageImpl> get copyWith =>
      __$$SendNameCardMessageImplCopyWithImpl<_$SendNameCardMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return sendNameCardMessage(nameCardMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return sendNameCardMessage?.call(nameCardMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendNameCardMessage != null) {
      return sendNameCardMessage(nameCardMessageContent);
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
  }) {
    return sendNameCardMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
  }) {
    return sendNameCardMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendNameCardMessage != null) {
      return sendNameCardMessage(this);
    }
    return orElse();
  }
}

abstract class _SendNameCardMessage implements ChatListEvent {
  const factory _SendNameCardMessage(
    final FfiNameCardMessageContent nameCardMessageContent,
  ) = _$SendNameCardMessageImpl;

  FfiNameCardMessageContent get nameCardMessageContent;

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendNameCardMessageImplCopyWith<_$SendNameCardMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendRedPacketMessageImplCopyWith<$Res> {
  factory _$$SendRedPacketMessageImplCopyWith(
    _$SendRedPacketMessageImpl value,
    $Res Function(_$SendRedPacketMessageImpl) then,
  ) = __$$SendRedPacketMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiRedPacketMessageContent redPacketMessageContent});

  $FfiRedPacketMessageContentCopyWith<$Res> get redPacketMessageContent;
}

/// @nodoc
class __$$SendRedPacketMessageImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$SendRedPacketMessageImpl>
    implements _$$SendRedPacketMessageImplCopyWith<$Res> {
  __$$SendRedPacketMessageImplCopyWithImpl(
    _$SendRedPacketMessageImpl _value,
    $Res Function(_$SendRedPacketMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? redPacketMessageContent = null}) {
    return _then(
      _$SendRedPacketMessageImpl(
        null == redPacketMessageContent
            ? _value.redPacketMessageContent
            : redPacketMessageContent // ignore: cast_nullable_to_non_nullable
                as FfiRedPacketMessageContent,
      ),
    );
  }

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiRedPacketMessageContentCopyWith<$Res> get redPacketMessageContent {
    return $FfiRedPacketMessageContentCopyWith<$Res>(
      _value.redPacketMessageContent,
      (value) {
        return _then(_value.copyWith(redPacketMessageContent: value));
      },
    );
  }
}

/// @nodoc

class _$SendRedPacketMessageImpl implements _SendRedPacketMessage {
  const _$SendRedPacketMessageImpl(this.redPacketMessageContent);

  @override
  final FfiRedPacketMessageContent redPacketMessageContent;

  @override
  String toString() {
    return 'ChatListEvent.sendRedPacketMessage(redPacketMessageContent: $redPacketMessageContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendRedPacketMessageImpl &&
            (identical(
                  other.redPacketMessageContent,
                  redPacketMessageContent,
                ) ||
                other.redPacketMessageContent == redPacketMessageContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, redPacketMessageContent);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendRedPacketMessageImplCopyWith<_$SendRedPacketMessageImpl>
  get copyWith =>
      __$$SendRedPacketMessageImplCopyWithImpl<_$SendRedPacketMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return sendRedPacketMessage(redPacketMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return sendRedPacketMessage?.call(redPacketMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendRedPacketMessage != null) {
      return sendRedPacketMessage(redPacketMessageContent);
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
  }) {
    return sendRedPacketMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
  }) {
    return sendRedPacketMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendRedPacketMessage != null) {
      return sendRedPacketMessage(this);
    }
    return orElse();
  }
}

abstract class _SendRedPacketMessage implements ChatListEvent {
  const factory _SendRedPacketMessage(
    final FfiRedPacketMessageContent redPacketMessageContent,
  ) = _$SendRedPacketMessageImpl;

  FfiRedPacketMessageContent get redPacketMessageContent;

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendRedPacketMessageImplCopyWith<_$SendRedPacketMessageImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendVideoMessageImplCopyWith<$Res> {
  factory _$$SendVideoMessageImplCopyWith(
    _$SendVideoMessageImpl value,
    $Res Function(_$SendVideoMessageImpl) then,
  ) = __$$SendVideoMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiVideoMessageContent videoMessageContent});

  $FfiVideoMessageContentCopyWith<$Res> get videoMessageContent;
}

/// @nodoc
class __$$SendVideoMessageImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$SendVideoMessageImpl>
    implements _$$SendVideoMessageImplCopyWith<$Res> {
  __$$SendVideoMessageImplCopyWithImpl(
    _$SendVideoMessageImpl _value,
    $Res Function(_$SendVideoMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? videoMessageContent = null}) {
    return _then(
      _$SendVideoMessageImpl(
        null == videoMessageContent
            ? _value.videoMessageContent
            : videoMessageContent // ignore: cast_nullable_to_non_nullable
                as FfiVideoMessageContent,
      ),
    );
  }

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiVideoMessageContentCopyWith<$Res> get videoMessageContent {
    return $FfiVideoMessageContentCopyWith<$Res>(_value.videoMessageContent, (
      value,
    ) {
      return _then(_value.copyWith(videoMessageContent: value));
    });
  }
}

/// @nodoc

class _$SendVideoMessageImpl implements _SendVideoMessage {
  const _$SendVideoMessageImpl(this.videoMessageContent);

  @override
  final FfiVideoMessageContent videoMessageContent;

  @override
  String toString() {
    return 'ChatListEvent.sendVideoMessage(videoMessageContent: $videoMessageContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendVideoMessageImpl &&
            (identical(other.videoMessageContent, videoMessageContent) ||
                other.videoMessageContent == videoMessageContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoMessageContent);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendVideoMessageImplCopyWith<_$SendVideoMessageImpl> get copyWith =>
      __$$SendVideoMessageImplCopyWithImpl<_$SendVideoMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return sendVideoMessage(videoMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return sendVideoMessage?.call(videoMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendVideoMessage != null) {
      return sendVideoMessage(videoMessageContent);
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
  }) {
    return sendVideoMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
  }) {
    return sendVideoMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendVideoMessage != null) {
      return sendVideoMessage(this);
    }
    return orElse();
  }
}

abstract class _SendVideoMessage implements ChatListEvent {
  const factory _SendVideoMessage(
    final FfiVideoMessageContent videoMessageContent,
  ) = _$SendVideoMessageImpl;

  FfiVideoMessageContent get videoMessageContent;

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendVideoMessageImplCopyWith<_$SendVideoMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendFileMessageImplCopyWith<$Res> {
  factory _$$SendFileMessageImplCopyWith(
    _$SendFileMessageImpl value,
    $Res Function(_$SendFileMessageImpl) then,
  ) = __$$SendFileMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiFileMessageContent fileMessageContent});

  $FfiFileMessageContentCopyWith<$Res> get fileMessageContent;
}

/// @nodoc
class __$$SendFileMessageImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$SendFileMessageImpl>
    implements _$$SendFileMessageImplCopyWith<$Res> {
  __$$SendFileMessageImplCopyWithImpl(
    _$SendFileMessageImpl _value,
    $Res Function(_$SendFileMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fileMessageContent = null}) {
    return _then(
      _$SendFileMessageImpl(
        null == fileMessageContent
            ? _value.fileMessageContent
            : fileMessageContent // ignore: cast_nullable_to_non_nullable
                as FfiFileMessageContent,
      ),
    );
  }

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiFileMessageContentCopyWith<$Res> get fileMessageContent {
    return $FfiFileMessageContentCopyWith<$Res>(_value.fileMessageContent, (
      value,
    ) {
      return _then(_value.copyWith(fileMessageContent: value));
    });
  }
}

/// @nodoc

class _$SendFileMessageImpl implements _SendFileMessage {
  const _$SendFileMessageImpl(this.fileMessageContent);

  @override
  final FfiFileMessageContent fileMessageContent;

  @override
  String toString() {
    return 'ChatListEvent.sendFileMessage(fileMessageContent: $fileMessageContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendFileMessageImpl &&
            (identical(other.fileMessageContent, fileMessageContent) ||
                other.fileMessageContent == fileMessageContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileMessageContent);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendFileMessageImplCopyWith<_$SendFileMessageImpl> get copyWith =>
      __$$SendFileMessageImplCopyWithImpl<_$SendFileMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return sendFileMessage(fileMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return sendFileMessage?.call(fileMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendFileMessage != null) {
      return sendFileMessage(fileMessageContent);
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
  }) {
    return sendFileMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
  }) {
    return sendFileMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendFileMessage != null) {
      return sendFileMessage(this);
    }
    return orElse();
  }
}

abstract class _SendFileMessage implements ChatListEvent {
  const factory _SendFileMessage(
    final FfiFileMessageContent fileMessageContent,
  ) = _$SendFileMessageImpl;

  FfiFileMessageContent get fileMessageContent;

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendFileMessageImplCopyWith<_$SendFileMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendDynamicImageMessageImplCopyWith<$Res> {
  factory _$$SendDynamicImageMessageImplCopyWith(
    _$SendDynamicImageMessageImpl value,
    $Res Function(_$SendDynamicImageMessageImpl) then,
  ) = __$$SendDynamicImageMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiDynamicImageMessageContent dynamicImageMessageContent});

  $FfiDynamicImageMessageContentCopyWith<$Res> get dynamicImageMessageContent;
}

/// @nodoc
class __$$SendDynamicImageMessageImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$SendDynamicImageMessageImpl>
    implements _$$SendDynamicImageMessageImplCopyWith<$Res> {
  __$$SendDynamicImageMessageImplCopyWithImpl(
    _$SendDynamicImageMessageImpl _value,
    $Res Function(_$SendDynamicImageMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? dynamicImageMessageContent = null}) {
    return _then(
      _$SendDynamicImageMessageImpl(
        null == dynamicImageMessageContent
            ? _value.dynamicImageMessageContent
            : dynamicImageMessageContent // ignore: cast_nullable_to_non_nullable
                as FfiDynamicImageMessageContent,
      ),
    );
  }

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiDynamicImageMessageContentCopyWith<$Res> get dynamicImageMessageContent {
    return $FfiDynamicImageMessageContentCopyWith<$Res>(
      _value.dynamicImageMessageContent,
      (value) {
        return _then(_value.copyWith(dynamicImageMessageContent: value));
      },
    );
  }
}

/// @nodoc

class _$SendDynamicImageMessageImpl implements _SendDynamicImageMessage {
  const _$SendDynamicImageMessageImpl(this.dynamicImageMessageContent);

  @override
  final FfiDynamicImageMessageContent dynamicImageMessageContent;

  @override
  String toString() {
    return 'ChatListEvent.sendDynamicImageMessage(dynamicImageMessageContent: $dynamicImageMessageContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendDynamicImageMessageImpl &&
            (identical(
                  other.dynamicImageMessageContent,
                  dynamicImageMessageContent,
                ) ||
                other.dynamicImageMessageContent ==
                    dynamicImageMessageContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dynamicImageMessageContent);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendDynamicImageMessageImplCopyWith<_$SendDynamicImageMessageImpl>
  get copyWith => __$$SendDynamicImageMessageImplCopyWithImpl<
    _$SendDynamicImageMessageImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return sendDynamicImageMessage(dynamicImageMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return sendDynamicImageMessage?.call(dynamicImageMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendDynamicImageMessage != null) {
      return sendDynamicImageMessage(dynamicImageMessageContent);
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
  }) {
    return sendDynamicImageMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
  }) {
    return sendDynamicImageMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendDynamicImageMessage != null) {
      return sendDynamicImageMessage(this);
    }
    return orElse();
  }
}

abstract class _SendDynamicImageMessage implements ChatListEvent {
  const factory _SendDynamicImageMessage(
    final FfiDynamicImageMessageContent dynamicImageMessageContent,
  ) = _$SendDynamicImageMessageImpl;

  FfiDynamicImageMessageContent get dynamicImageMessageContent;

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendDynamicImageMessageImplCopyWith<_$SendDynamicImageMessageImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendDiceMessageImplCopyWith<$Res> {
  factory _$$SendDiceMessageImplCopyWith(
    _$SendDiceMessageImpl value,
    $Res Function(_$SendDiceMessageImpl) then,
  ) = __$$SendDiceMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiDiceMessageContent diceMessageContent});

  $FfiDiceMessageContentCopyWith<$Res> get diceMessageContent;
}

/// @nodoc
class __$$SendDiceMessageImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$SendDiceMessageImpl>
    implements _$$SendDiceMessageImplCopyWith<$Res> {
  __$$SendDiceMessageImplCopyWithImpl(
    _$SendDiceMessageImpl _value,
    $Res Function(_$SendDiceMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? diceMessageContent = null}) {
    return _then(
      _$SendDiceMessageImpl(
        null == diceMessageContent
            ? _value.diceMessageContent
            : diceMessageContent // ignore: cast_nullable_to_non_nullable
                as FfiDiceMessageContent,
      ),
    );
  }

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiDiceMessageContentCopyWith<$Res> get diceMessageContent {
    return $FfiDiceMessageContentCopyWith<$Res>(_value.diceMessageContent, (
      value,
    ) {
      return _then(_value.copyWith(diceMessageContent: value));
    });
  }
}

/// @nodoc

class _$SendDiceMessageImpl implements _SendDiceMessage {
  const _$SendDiceMessageImpl(this.diceMessageContent);

  @override
  final FfiDiceMessageContent diceMessageContent;

  @override
  String toString() {
    return 'ChatListEvent.sendDiceMessage(diceMessageContent: $diceMessageContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendDiceMessageImpl &&
            (identical(other.diceMessageContent, diceMessageContent) ||
                other.diceMessageContent == diceMessageContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, diceMessageContent);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendDiceMessageImplCopyWith<_$SendDiceMessageImpl> get copyWith =>
      __$$SendDiceMessageImplCopyWithImpl<_$SendDiceMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return sendDiceMessage(diceMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return sendDiceMessage?.call(diceMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendDiceMessage != null) {
      return sendDiceMessage(diceMessageContent);
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
  }) {
    return sendDiceMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
  }) {
    return sendDiceMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendDiceMessage != null) {
      return sendDiceMessage(this);
    }
    return orElse();
  }
}

abstract class _SendDiceMessage implements ChatListEvent {
  const factory _SendDiceMessage(
    final FfiDiceMessageContent diceMessageContent,
  ) = _$SendDiceMessageImpl;

  FfiDiceMessageContent get diceMessageContent;

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendDiceMessageImplCopyWith<_$SendDiceMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendAudioMessageImplCopyWith<$Res> {
  factory _$$SendAudioMessageImplCopyWith(
    _$SendAudioMessageImpl value,
    $Res Function(_$SendAudioMessageImpl) then,
  ) = __$$SendAudioMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiAudioMessageContent audioMessageContent});

  $FfiAudioMessageContentCopyWith<$Res> get audioMessageContent;
}

/// @nodoc
class __$$SendAudioMessageImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$SendAudioMessageImpl>
    implements _$$SendAudioMessageImplCopyWith<$Res> {
  __$$SendAudioMessageImplCopyWithImpl(
    _$SendAudioMessageImpl _value,
    $Res Function(_$SendAudioMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? audioMessageContent = null}) {
    return _then(
      _$SendAudioMessageImpl(
        null == audioMessageContent
            ? _value.audioMessageContent
            : audioMessageContent // ignore: cast_nullable_to_non_nullable
                as FfiAudioMessageContent,
      ),
    );
  }

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiAudioMessageContentCopyWith<$Res> get audioMessageContent {
    return $FfiAudioMessageContentCopyWith<$Res>(_value.audioMessageContent, (
      value,
    ) {
      return _then(_value.copyWith(audioMessageContent: value));
    });
  }
}

/// @nodoc

class _$SendAudioMessageImpl implements _SendAudioMessage {
  const _$SendAudioMessageImpl(this.audioMessageContent);

  @override
  final FfiAudioMessageContent audioMessageContent;

  @override
  String toString() {
    return 'ChatListEvent.sendAudioMessage(audioMessageContent: $audioMessageContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendAudioMessageImpl &&
            (identical(other.audioMessageContent, audioMessageContent) ||
                other.audioMessageContent == audioMessageContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioMessageContent);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendAudioMessageImplCopyWith<_$SendAudioMessageImpl> get copyWith =>
      __$$SendAudioMessageImplCopyWithImpl<_$SendAudioMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return sendAudioMessage(audioMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return sendAudioMessage?.call(audioMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendAudioMessage != null) {
      return sendAudioMessage(audioMessageContent);
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
  }) {
    return sendAudioMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
  }) {
    return sendAudioMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendAudioMessage != null) {
      return sendAudioMessage(this);
    }
    return orElse();
  }
}

abstract class _SendAudioMessage implements ChatListEvent {
  const factory _SendAudioMessage(
    final FfiAudioMessageContent audioMessageContent,
  ) = _$SendAudioMessageImpl;

  FfiAudioMessageContent get audioMessageContent;

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendAudioMessageImplCopyWith<_$SendAudioMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendTransferMessageImplCopyWith<$Res> {
  factory _$$SendTransferMessageImplCopyWith(
    _$SendTransferMessageImpl value,
    $Res Function(_$SendTransferMessageImpl) then,
  ) = __$$SendTransferMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiChatTransferMessageContent transferMessageContent});

  $FfiChatTransferMessageContentCopyWith<$Res> get transferMessageContent;
}

/// @nodoc
class __$$SendTransferMessageImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$SendTransferMessageImpl>
    implements _$$SendTransferMessageImplCopyWith<$Res> {
  __$$SendTransferMessageImplCopyWithImpl(
    _$SendTransferMessageImpl _value,
    $Res Function(_$SendTransferMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? transferMessageContent = null}) {
    return _then(
      _$SendTransferMessageImpl(
        null == transferMessageContent
            ? _value.transferMessageContent
            : transferMessageContent // ignore: cast_nullable_to_non_nullable
                as FfiChatTransferMessageContent,
      ),
    );
  }

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiChatTransferMessageContentCopyWith<$Res> get transferMessageContent {
    return $FfiChatTransferMessageContentCopyWith<$Res>(
      _value.transferMessageContent,
      (value) {
        return _then(_value.copyWith(transferMessageContent: value));
      },
    );
  }
}

/// @nodoc

class _$SendTransferMessageImpl implements _SendTransferMessage {
  const _$SendTransferMessageImpl(this.transferMessageContent);

  @override
  final FfiChatTransferMessageContent transferMessageContent;

  @override
  String toString() {
    return 'ChatListEvent.sendTransferMessage(transferMessageContent: $transferMessageContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTransferMessageImpl &&
            (identical(other.transferMessageContent, transferMessageContent) ||
                other.transferMessageContent == transferMessageContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transferMessageContent);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTransferMessageImplCopyWith<_$SendTransferMessageImpl> get copyWith =>
      __$$SendTransferMessageImplCopyWithImpl<_$SendTransferMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return sendTransferMessage(transferMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return sendTransferMessage?.call(transferMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendTransferMessage != null) {
      return sendTransferMessage(transferMessageContent);
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
  }) {
    return sendTransferMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
  }) {
    return sendTransferMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendTransferMessage != null) {
      return sendTransferMessage(this);
    }
    return orElse();
  }
}

abstract class _SendTransferMessage implements ChatListEvent {
  const factory _SendTransferMessage(
    final FfiChatTransferMessageContent transferMessageContent,
  ) = _$SendTransferMessageImpl;

  FfiChatTransferMessageContent get transferMessageContent;

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendTransferMessageImplCopyWith<_$SendTransferMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendSystemMessageImplCopyWith<$Res> {
  factory _$$SendSystemMessageImplCopyWith(
    _$SendSystemMessageImpl value,
    $Res Function(_$SendSystemMessageImpl) then,
  ) = __$$SendSystemMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiSystemMessageContent systemMessageContent});

  $FfiSystemMessageContentCopyWith<$Res> get systemMessageContent;
}

/// @nodoc
class __$$SendSystemMessageImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$SendSystemMessageImpl>
    implements _$$SendSystemMessageImplCopyWith<$Res> {
  __$$SendSystemMessageImplCopyWithImpl(
    _$SendSystemMessageImpl _value,
    $Res Function(_$SendSystemMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? systemMessageContent = null}) {
    return _then(
      _$SendSystemMessageImpl(
        null == systemMessageContent
            ? _value.systemMessageContent
            : systemMessageContent // ignore: cast_nullable_to_non_nullable
                as FfiSystemMessageContent,
      ),
    );
  }

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiSystemMessageContentCopyWith<$Res> get systemMessageContent {
    return $FfiSystemMessageContentCopyWith<$Res>(_value.systemMessageContent, (
      value,
    ) {
      return _then(_value.copyWith(systemMessageContent: value));
    });
  }
}

/// @nodoc

class _$SendSystemMessageImpl implements _SendSystemMessage {
  const _$SendSystemMessageImpl(this.systemMessageContent);

  @override
  final FfiSystemMessageContent systemMessageContent;

  @override
  String toString() {
    return 'ChatListEvent.sendSystemMessage(systemMessageContent: $systemMessageContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendSystemMessageImpl &&
            (identical(other.systemMessageContent, systemMessageContent) ||
                other.systemMessageContent == systemMessageContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, systemMessageContent);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendSystemMessageImplCopyWith<_$SendSystemMessageImpl> get copyWith =>
      __$$SendSystemMessageImplCopyWithImpl<_$SendSystemMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return sendSystemMessage(systemMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return sendSystemMessage?.call(systemMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendSystemMessage != null) {
      return sendSystemMessage(systemMessageContent);
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
  }) {
    return sendSystemMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
  }) {
    return sendSystemMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendSystemMessage != null) {
      return sendSystemMessage(this);
    }
    return orElse();
  }
}

abstract class _SendSystemMessage implements ChatListEvent {
  const factory _SendSystemMessage(
    final FfiSystemMessageContent systemMessageContent,
  ) = _$SendSystemMessageImpl;

  FfiSystemMessageContent get systemMessageContent;

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendSystemMessageImplCopyWith<_$SendSystemMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendGameMessageImplCopyWith<$Res> {
  factory _$$SendGameMessageImplCopyWith(
    _$SendGameMessageImpl value,
    $Res Function(_$SendGameMessageImpl) then,
  ) = __$$SendGameMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiAnmatedMessageContent gameMessageContent});

  $FfiAnmatedMessageContentCopyWith<$Res> get gameMessageContent;
}

/// @nodoc
class __$$SendGameMessageImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$SendGameMessageImpl>
    implements _$$SendGameMessageImplCopyWith<$Res> {
  __$$SendGameMessageImplCopyWithImpl(
    _$SendGameMessageImpl _value,
    $Res Function(_$SendGameMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? gameMessageContent = null}) {
    return _then(
      _$SendGameMessageImpl(
        null == gameMessageContent
            ? _value.gameMessageContent
            : gameMessageContent // ignore: cast_nullable_to_non_nullable
                as FfiAnmatedMessageContent,
      ),
    );
  }

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiAnmatedMessageContentCopyWith<$Res> get gameMessageContent {
    return $FfiAnmatedMessageContentCopyWith<$Res>(_value.gameMessageContent, (
      value,
    ) {
      return _then(_value.copyWith(gameMessageContent: value));
    });
  }
}

/// @nodoc

class _$SendGameMessageImpl implements _SendGameMessage {
  const _$SendGameMessageImpl(this.gameMessageContent);

  @override
  final FfiAnmatedMessageContent gameMessageContent;

  @override
  String toString() {
    return 'ChatListEvent.sendGameMessage(gameMessageContent: $gameMessageContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendGameMessageImpl &&
            (identical(other.gameMessageContent, gameMessageContent) ||
                other.gameMessageContent == gameMessageContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameMessageContent);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendGameMessageImplCopyWith<_$SendGameMessageImpl> get copyWith =>
      __$$SendGameMessageImplCopyWithImpl<_$SendGameMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return sendGameMessage(gameMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return sendGameMessage?.call(gameMessageContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendGameMessage != null) {
      return sendGameMessage(gameMessageContent);
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
  }) {
    return sendGameMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
  }) {
    return sendGameMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendGameMessage != null) {
      return sendGameMessage(this);
    }
    return orElse();
  }
}

abstract class _SendGameMessage implements ChatListEvent {
  const factory _SendGameMessage(
    final FfiAnmatedMessageContent gameMessageContent,
  ) = _$SendGameMessageImpl;

  FfiAnmatedMessageContent get gameMessageContent;

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendGameMessageImplCopyWith<_$SendGameMessageImpl> get copyWith =>
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
}

/// @nodoc
class __$$MessageReceivedImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$MessageReceivedImpl>
    implements _$$MessageReceivedImplCopyWith<$Res> {
  __$$MessageReceivedImplCopyWithImpl(
    _$MessageReceivedImpl _value,
    $Res Function(_$MessageReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
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
}

/// @nodoc

class _$MessageReceivedImpl implements _MessageReceived {
  const _$MessageReceivedImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatListEvent.messageReceived(message: $message)';
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

  /// Create a copy of ChatListEvent
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
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return messageReceived(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return messageReceived?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
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
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
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
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (messageReceived != null) {
      return messageReceived(this);
    }
    return orElse();
  }
}

abstract class _MessageReceived implements ChatListEvent {
  const factory _MessageReceived(final ChatMessage message) =
      _$MessageReceivedImpl;

  ChatMessage get message;

  /// Create a copy of ChatListEvent
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
    extends _$ChatListEventCopyWithImpl<$Res, _$MessageStatusUpdatedImpl>
    implements _$$MessageStatusUpdatedImplCopyWith<$Res> {
  __$$MessageStatusUpdatedImplCopyWithImpl(
    _$MessageStatusUpdatedImpl _value,
    $Res Function(_$MessageStatusUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
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
    return 'ChatListEvent.messageStatusUpdated(messageId: $messageId, status: $status)';
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

  /// Create a copy of ChatListEvent
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
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return messageStatusUpdated(messageId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return messageStatusUpdated?.call(messageId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
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
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
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
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (messageStatusUpdated != null) {
      return messageStatusUpdated(this);
    }
    return orElse();
  }
}

abstract class _MessageStatusUpdated implements ChatListEvent {
  const factory _MessageStatusUpdated(
    final String messageId,
    final FfiMsgStatus status,
  ) = _$MessageStatusUpdatedImpl;

  String get messageId;
  FfiMsgStatus get status;

  /// Create a copy of ChatListEvent
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
    extends _$ChatListEventCopyWithImpl<$Res, _$RetryMessageImpl>
    implements _$$RetryMessageImplCopyWith<$Res> {
  __$$RetryMessageImplCopyWithImpl(
    _$RetryMessageImpl _value,
    $Res Function(_$RetryMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
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
    return 'ChatListEvent.retryMessage(messageId: $messageId)';
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

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetryMessageImplCopyWith<_$RetryMessageImpl> get copyWith =>
      __$$RetryMessageImplCopyWithImpl<_$RetryMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return retryMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return retryMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
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
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
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
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (retryMessage != null) {
      return retryMessage(this);
    }
    return orElse();
  }
}

abstract class _RetryMessage implements ChatListEvent {
  const factory _RetryMessage(final int messageId) = _$RetryMessageImpl;

  int get messageId;

  /// Create a copy of ChatListEvent
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
    extends _$ChatListEventCopyWithImpl<$Res, _$DeleteMessageImpl>
    implements _$$DeleteMessageImplCopyWith<$Res> {
  __$$DeleteMessageImplCopyWithImpl(
    _$DeleteMessageImpl _value,
    $Res Function(_$DeleteMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
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
    return 'ChatListEvent.deleteMessage(messageId: $messageId)';
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

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      __$$DeleteMessageImplCopyWithImpl<_$DeleteMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return deleteMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return deleteMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
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
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
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
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class _DeleteMessage implements ChatListEvent {
  const factory _DeleteMessage(final int messageId) = _$DeleteMessageImpl;

  int get messageId;

  /// Create a copy of ChatListEvent
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
    extends _$ChatListEventCopyWithImpl<$Res, _$MultipleMessagesReceivedImpl>
    implements _$$MultipleMessagesReceivedImplCopyWith<$Res> {
  __$$MultipleMessagesReceivedImplCopyWithImpl(
    _$MultipleMessagesReceivedImpl _value,
    $Res Function(_$MultipleMessagesReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
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
    return 'ChatListEvent.multipleMessagesReceived(messages: $messages)';
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

  /// Create a copy of ChatListEvent
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
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return multipleMessagesReceived(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return multipleMessagesReceived?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
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
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
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
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (multipleMessagesReceived != null) {
      return multipleMessagesReceived(this);
    }
    return orElse();
  }
}

abstract class _MultipleMessagesReceived implements ChatListEvent {
  const factory _MultipleMessagesReceived(final List<ChatMessage> messages) =
      _$MultipleMessagesReceivedImpl;

  List<ChatMessage> get messages;

  /// Create a copy of ChatListEvent
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
    extends _$ChatListEventCopyWithImpl<$Res, _$UserInfoUpdatedImpl>
    implements _$$UserInfoUpdatedImplCopyWith<$Res> {
  __$$UserInfoUpdatedImplCopyWithImpl(
    _$UserInfoUpdatedImpl _value,
    $Res Function(_$UserInfoUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
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

  /// Create a copy of ChatListEvent
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
    return 'ChatListEvent.userInfoUpdated(user: $user)';
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

  /// Create a copy of ChatListEvent
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
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return userInfoUpdated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return userInfoUpdated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
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
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
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
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (userInfoUpdated != null) {
      return userInfoUpdated(this);
    }
    return orElse();
  }
}

abstract class _UserInfoUpdated implements ChatListEvent {
  const factory _UserInfoUpdated(final FfiUser user) = _$UserInfoUpdatedImpl;

  FfiUser get user;

  /// Create a copy of ChatListEvent
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
}

/// @nodoc
class __$$StartReplyImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$StartReplyImpl>
    implements _$$StartReplyImplCopyWith<$Res> {
  __$$StartReplyImplCopyWithImpl(
    _$StartReplyImpl _value,
    $Res Function(_$StartReplyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
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
}

/// @nodoc

class _$StartReplyImpl implements _StartReply {
  const _$StartReplyImpl(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatListEvent.startReply(message: $message)';
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

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartReplyImplCopyWith<_$StartReplyImpl> get copyWith =>
      __$$StartReplyImplCopyWithImpl<_$StartReplyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return startReply(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return startReply?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
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
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
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
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (startReply != null) {
      return startReply(this);
    }
    return orElse();
  }
}

abstract class _StartReply implements ChatListEvent {
  const factory _StartReply(final ChatMessage message) = _$StartReplyImpl;

  ChatMessage get message;

  /// Create a copy of ChatListEvent
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
    extends _$ChatListEventCopyWithImpl<$Res, _$CancelReplyImpl>
    implements _$$CancelReplyImplCopyWith<$Res> {
  __$$CancelReplyImplCopyWithImpl(
    _$CancelReplyImpl _value,
    $Res Function(_$CancelReplyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelReplyImpl implements _CancelReply {
  const _$CancelReplyImpl();

  @override
  String toString() {
    return 'ChatListEvent.cancelReply()';
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
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return cancelReply();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return cancelReply?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
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
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
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
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (cancelReply != null) {
      return cancelReply(this);
    }
    return orElse();
  }
}

abstract class _CancelReply implements ChatListEvent {
  const factory _CancelReply() = _$CancelReplyImpl;
}

/// @nodoc
abstract class _$$SendReplyMessageImplCopyWith<$Res> {
  factory _$$SendReplyMessageImplCopyWith(
    _$SendReplyMessageImpl value,
    $Res Function(_$SendReplyMessageImpl) then,
  ) = __$$SendReplyMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendReplyMessageImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$SendReplyMessageImpl>
    implements _$$SendReplyMessageImplCopyWith<$Res> {
  __$$SendReplyMessageImplCopyWithImpl(
    _$SendReplyMessageImpl _value,
    $Res Function(_$SendReplyMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendReplyMessageImpl implements _SendReplyMessage {
  const _$SendReplyMessageImpl();

  @override
  String toString() {
    return 'ChatListEvent.sendReplyMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendReplyMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return sendReplyMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return sendReplyMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendReplyMessage != null) {
      return sendReplyMessage();
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
  }) {
    return sendReplyMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
  }) {
    return sendReplyMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (sendReplyMessage != null) {
      return sendReplyMessage(this);
    }
    return orElse();
  }
}

abstract class _SendReplyMessage implements ChatListEvent {
  const factory _SendReplyMessage() = _$SendReplyMessageImpl;
}

/// @nodoc
abstract class _$$ClearForwardMessagesImplCopyWith<$Res> {
  factory _$$ClearForwardMessagesImplCopyWith(
    _$ClearForwardMessagesImpl value,
    $Res Function(_$ClearForwardMessagesImpl) then,
  ) = __$$ClearForwardMessagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearForwardMessagesImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$ClearForwardMessagesImpl>
    implements _$$ClearForwardMessagesImplCopyWith<$Res> {
  __$$ClearForwardMessagesImplCopyWithImpl(
    _$ClearForwardMessagesImpl _value,
    $Res Function(_$ClearForwardMessagesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearForwardMessagesImpl implements _ClearForwardMessages {
  const _$ClearForwardMessagesImpl();

  @override
  String toString() {
    return 'ChatListEvent.clearForwardMessages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearForwardMessagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )
    initialized,
    required TResult Function() loadMoreMessages,
    required TResult Function(String text) messageInputChanged,
    required TResult Function() sendTextMessage,
    required TResult Function(FfiImageMessageContent imageMessageContent)
    sendImageMessage,
    required TResult Function(FfiNameCardMessageContent nameCardMessageContent)
    sendNameCardMessage,
    required TResult Function(
      FfiRedPacketMessageContent redPacketMessageContent,
    )
    sendRedPacketMessage,
    required TResult Function(FfiVideoMessageContent videoMessageContent)
    sendVideoMessage,
    required TResult Function(FfiFileMessageContent fileMessageContent)
    sendFileMessage,
    required TResult Function(
      FfiDynamicImageMessageContent dynamicImageMessageContent,
    )
    sendDynamicImageMessage,
    required TResult Function(FfiDiceMessageContent diceMessageContent)
    sendDiceMessage,
    required TResult Function(FfiAudioMessageContent audioMessageContent)
    sendAudioMessage,
    required TResult Function(
      FfiChatTransferMessageContent transferMessageContent,
    )
    sendTransferMessage,
    required TResult Function(FfiSystemMessageContent systemMessageContent)
    sendSystemMessage,
    required TResult Function(FfiAnmatedMessageContent gameMessageContent)
    sendGameMessage,
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
    required TResult Function() sendReplyMessage,
    required TResult Function() clearForwardMessages,
  }) {
    return clearForwardMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult? Function()? loadMoreMessages,
    TResult? Function(String text)? messageInputChanged,
    TResult? Function()? sendTextMessage,
    TResult? Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult? Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult? Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult? Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult? Function(FfiFileMessageContent fileMessageContent)?
    sendFileMessage,
    TResult? Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult? Function(FfiDiceMessageContent diceMessageContent)?
    sendDiceMessage,
    TResult? Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult? Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult? Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult? Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult? Function(ChatMessage message)? messageReceived,
    TResult? Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult? Function(int messageId)? retryMessage,
    TResult? Function(int messageId)? deleteMessage,
    TResult? Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult? Function(FfiUser user)? userInfoUpdated,
    TResult? Function(ChatMessage message)? startReply,
    TResult? Function()? cancelReply,
    TResult? Function()? sendReplyMessage,
    TResult? Function()? clearForwardMessages,
  }) {
    return clearForwardMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      FfiChatType chatType,
      int targetId,
      List<ChatMessage>? messagesToForward,
    )?
    initialized,
    TResult Function()? loadMoreMessages,
    TResult Function(String text)? messageInputChanged,
    TResult Function()? sendTextMessage,
    TResult Function(FfiImageMessageContent imageMessageContent)?
    sendImageMessage,
    TResult Function(FfiNameCardMessageContent nameCardMessageContent)?
    sendNameCardMessage,
    TResult Function(FfiRedPacketMessageContent redPacketMessageContent)?
    sendRedPacketMessage,
    TResult Function(FfiVideoMessageContent videoMessageContent)?
    sendVideoMessage,
    TResult Function(FfiFileMessageContent fileMessageContent)? sendFileMessage,
    TResult Function(FfiDynamicImageMessageContent dynamicImageMessageContent)?
    sendDynamicImageMessage,
    TResult Function(FfiDiceMessageContent diceMessageContent)? sendDiceMessage,
    TResult Function(FfiAudioMessageContent audioMessageContent)?
    sendAudioMessage,
    TResult Function(FfiChatTransferMessageContent transferMessageContent)?
    sendTransferMessage,
    TResult Function(FfiSystemMessageContent systemMessageContent)?
    sendSystemMessage,
    TResult Function(FfiAnmatedMessageContent gameMessageContent)?
    sendGameMessage,
    TResult Function(ChatMessage message)? messageReceived,
    TResult Function(String messageId, FfiMsgStatus status)?
    messageStatusUpdated,
    TResult Function(int messageId)? retryMessage,
    TResult Function(int messageId)? deleteMessage,
    TResult Function(List<ChatMessage> messages)? multipleMessagesReceived,
    TResult Function(FfiUser user)? userInfoUpdated,
    TResult Function(ChatMessage message)? startReply,
    TResult Function()? cancelReply,
    TResult Function()? sendReplyMessage,
    TResult Function()? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (clearForwardMessages != null) {
      return clearForwardMessages();
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
    required TResult Function(_SendNameCardMessage value) sendNameCardMessage,
    required TResult Function(_SendRedPacketMessage value) sendRedPacketMessage,
    required TResult Function(_SendVideoMessage value) sendVideoMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_SendDynamicImageMessage value)
    sendDynamicImageMessage,
    required TResult Function(_SendDiceMessage value) sendDiceMessage,
    required TResult Function(_SendAudioMessage value) sendAudioMessage,
    required TResult Function(_SendTransferMessage value) sendTransferMessage,
    required TResult Function(_SendSystemMessage value) sendSystemMessage,
    required TResult Function(_SendGameMessage value) sendGameMessage,
    required TResult Function(_MessageReceived value) messageReceived,
    required TResult Function(_MessageStatusUpdated value) messageStatusUpdated,
    required TResult Function(_RetryMessage value) retryMessage,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_UserInfoUpdated value) userInfoUpdated,
    required TResult Function(_StartReply value) startReply,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_SendReplyMessage value) sendReplyMessage,
    required TResult Function(_ClearForwardMessages value) clearForwardMessages,
  }) {
    return clearForwardMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult? Function(_MessageInputChanged value)? messageInputChanged,
    TResult? Function(_SendTextMessage value)? sendTextMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult? Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult? Function(_SendVideoMessage value)? sendVideoMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult? Function(_SendDiceMessage value)? sendDiceMessage,
    TResult? Function(_SendAudioMessage value)? sendAudioMessage,
    TResult? Function(_SendTransferMessage value)? sendTransferMessage,
    TResult? Function(_SendSystemMessage value)? sendSystemMessage,
    TResult? Function(_SendGameMessage value)? sendGameMessage,
    TResult? Function(_MessageReceived value)? messageReceived,
    TResult? Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult? Function(_RetryMessage value)? retryMessage,
    TResult? Function(_DeleteMessage value)? deleteMessage,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult? Function(_StartReply value)? startReply,
    TResult? Function(_CancelReply value)? cancelReply,
    TResult? Function(_SendReplyMessage value)? sendReplyMessage,
    TResult? Function(_ClearForwardMessages value)? clearForwardMessages,
  }) {
    return clearForwardMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_MessageInputChanged value)? messageInputChanged,
    TResult Function(_SendTextMessage value)? sendTextMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendNameCardMessage value)? sendNameCardMessage,
    TResult Function(_SendRedPacketMessage value)? sendRedPacketMessage,
    TResult Function(_SendVideoMessage value)? sendVideoMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_SendDynamicImageMessage value)? sendDynamicImageMessage,
    TResult Function(_SendDiceMessage value)? sendDiceMessage,
    TResult Function(_SendAudioMessage value)? sendAudioMessage,
    TResult Function(_SendTransferMessage value)? sendTransferMessage,
    TResult Function(_SendSystemMessage value)? sendSystemMessage,
    TResult Function(_SendGameMessage value)? sendGameMessage,
    TResult Function(_MessageReceived value)? messageReceived,
    TResult Function(_MessageStatusUpdated value)? messageStatusUpdated,
    TResult Function(_RetryMessage value)? retryMessage,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_UserInfoUpdated value)? userInfoUpdated,
    TResult Function(_StartReply value)? startReply,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_SendReplyMessage value)? sendReplyMessage,
    TResult Function(_ClearForwardMessages value)? clearForwardMessages,
    required TResult orElse(),
  }) {
    if (clearForwardMessages != null) {
      return clearForwardMessages(this);
    }
    return orElse();
  }
}

abstract class _ClearForwardMessages implements ChatListEvent {
  const factory _ClearForwardMessages() = _$ClearForwardMessagesImpl;
}
