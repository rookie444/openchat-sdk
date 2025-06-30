// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/features/chat/blocs/archived_sessions_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ArchivedSessionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSessions,
    required TResult Function() loadSessionsWithArchived,
    required TResult Function() refreshSessions,
    required TResult Function(String conversationId) markSessionAsRead,
    required TResult Function(String conversationId) pinSession,
    required TResult Function(String conversationId) unpinSession,
    required TResult Function(String conversationId) muteSession,
    required TResult Function(String conversationId) unmuteSession,
    required TResult Function(String conversationId) deleteSession,
    required TResult Function(FfiConversation message) newMessageReceived,
    required TResult Function(List<FfiConversation> messages)
    multipleMessagesReceived,
    required TResult Function(String conversationId) archiveSession,
    required TResult Function(String conversationId) unarchiveSession,
    required TResult Function() loadArchivedGroup,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSessions,
    TResult? Function()? loadSessionsWithArchived,
    TResult? Function()? refreshSessions,
    TResult? Function(String conversationId)? markSessionAsRead,
    TResult? Function(String conversationId)? pinSession,
    TResult? Function(String conversationId)? unpinSession,
    TResult? Function(String conversationId)? muteSession,
    TResult? Function(String conversationId)? unmuteSession,
    TResult? Function(String conversationId)? deleteSession,
    TResult? Function(FfiConversation message)? newMessageReceived,
    TResult? Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult? Function(String conversationId)? archiveSession,
    TResult? Function(String conversationId)? unarchiveSession,
    TResult? Function()? loadArchivedGroup,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSessions,
    TResult Function()? loadSessionsWithArchived,
    TResult Function()? refreshSessions,
    TResult Function(String conversationId)? markSessionAsRead,
    TResult Function(String conversationId)? pinSession,
    TResult Function(String conversationId)? unpinSession,
    TResult Function(String conversationId)? muteSession,
    TResult Function(String conversationId)? unmuteSession,
    TResult Function(String conversationId)? deleteSession,
    TResult Function(FfiConversation message)? newMessageReceived,
    TResult Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult Function(String conversationId)? archiveSession,
    TResult Function(String conversationId)? unarchiveSession,
    TResult Function()? loadArchivedGroup,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_LoadSessionsWithArchived value)
    loadSessionsWithArchived,
    required TResult Function(_RefreshSessions value) refreshSessions,
    required TResult Function(_MarkSessionAsRead value) markSessionAsRead,
    required TResult Function(_PinSession value) pinSession,
    required TResult Function(_UnpinSession value) unpinSession,
    required TResult Function(_MuteSession value) muteSession,
    required TResult Function(_UnmuteSession value) unmuteSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_ArchiveSession value) archiveSession,
    required TResult Function(_UnarchiveSession value) unarchiveSession,
    required TResult Function(_LoadArchivedGroup value) loadArchivedGroup,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_LoadSessionsWithArchived value)?
    loadSessionsWithArchived,
    TResult? Function(_RefreshSessions value)? refreshSessions,
    TResult? Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult? Function(_PinSession value)? pinSession,
    TResult? Function(_UnpinSession value)? unpinSession,
    TResult? Function(_MuteSession value)? muteSession,
    TResult? Function(_UnmuteSession value)? unmuteSession,
    TResult? Function(_DeleteSession value)? deleteSession,
    TResult? Function(_NewMessageReceived value)? newMessageReceived,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_ArchiveSession value)? archiveSession,
    TResult? Function(_UnarchiveSession value)? unarchiveSession,
    TResult? Function(_LoadArchivedGroup value)? loadArchivedGroup,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_LoadSessionsWithArchived value)? loadSessionsWithArchived,
    TResult Function(_RefreshSessions value)? refreshSessions,
    TResult Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult Function(_PinSession value)? pinSession,
    TResult Function(_UnpinSession value)? unpinSession,
    TResult Function(_MuteSession value)? muteSession,
    TResult Function(_UnmuteSession value)? unmuteSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_ArchiveSession value)? archiveSession,
    TResult Function(_UnarchiveSession value)? unarchiveSession,
    TResult Function(_LoadArchivedGroup value)? loadArchivedGroup,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchivedSessionsEventCopyWith<$Res> {
  factory $ArchivedSessionsEventCopyWith(
    ArchivedSessionsEvent value,
    $Res Function(ArchivedSessionsEvent) then,
  ) = _$ArchivedSessionsEventCopyWithImpl<$Res, ArchivedSessionsEvent>;
}

/// @nodoc
class _$ArchivedSessionsEventCopyWithImpl<
  $Res,
  $Val extends ArchivedSessionsEvent
>
    implements $ArchivedSessionsEventCopyWith<$Res> {
  _$ArchivedSessionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadSessionsImplCopyWith<$Res> {
  factory _$$LoadSessionsImplCopyWith(
    _$LoadSessionsImpl value,
    $Res Function(_$LoadSessionsImpl) then,
  ) = __$$LoadSessionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadSessionsImplCopyWithImpl<$Res>
    extends _$ArchivedSessionsEventCopyWithImpl<$Res, _$LoadSessionsImpl>
    implements _$$LoadSessionsImplCopyWith<$Res> {
  __$$LoadSessionsImplCopyWithImpl(
    _$LoadSessionsImpl _value,
    $Res Function(_$LoadSessionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadSessionsImpl implements _LoadSessions {
  const _$LoadSessionsImpl();

  @override
  String toString() {
    return 'ArchivedSessionsEvent.loadSessions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadSessionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSessions,
    required TResult Function() loadSessionsWithArchived,
    required TResult Function() refreshSessions,
    required TResult Function(String conversationId) markSessionAsRead,
    required TResult Function(String conversationId) pinSession,
    required TResult Function(String conversationId) unpinSession,
    required TResult Function(String conversationId) muteSession,
    required TResult Function(String conversationId) unmuteSession,
    required TResult Function(String conversationId) deleteSession,
    required TResult Function(FfiConversation message) newMessageReceived,
    required TResult Function(List<FfiConversation> messages)
    multipleMessagesReceived,
    required TResult Function(String conversationId) archiveSession,
    required TResult Function(String conversationId) unarchiveSession,
    required TResult Function() loadArchivedGroup,
  }) {
    return loadSessions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSessions,
    TResult? Function()? loadSessionsWithArchived,
    TResult? Function()? refreshSessions,
    TResult? Function(String conversationId)? markSessionAsRead,
    TResult? Function(String conversationId)? pinSession,
    TResult? Function(String conversationId)? unpinSession,
    TResult? Function(String conversationId)? muteSession,
    TResult? Function(String conversationId)? unmuteSession,
    TResult? Function(String conversationId)? deleteSession,
    TResult? Function(FfiConversation message)? newMessageReceived,
    TResult? Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult? Function(String conversationId)? archiveSession,
    TResult? Function(String conversationId)? unarchiveSession,
    TResult? Function()? loadArchivedGroup,
  }) {
    return loadSessions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSessions,
    TResult Function()? loadSessionsWithArchived,
    TResult Function()? refreshSessions,
    TResult Function(String conversationId)? markSessionAsRead,
    TResult Function(String conversationId)? pinSession,
    TResult Function(String conversationId)? unpinSession,
    TResult Function(String conversationId)? muteSession,
    TResult Function(String conversationId)? unmuteSession,
    TResult Function(String conversationId)? deleteSession,
    TResult Function(FfiConversation message)? newMessageReceived,
    TResult Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult Function(String conversationId)? archiveSession,
    TResult Function(String conversationId)? unarchiveSession,
    TResult Function()? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (loadSessions != null) {
      return loadSessions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_LoadSessionsWithArchived value)
    loadSessionsWithArchived,
    required TResult Function(_RefreshSessions value) refreshSessions,
    required TResult Function(_MarkSessionAsRead value) markSessionAsRead,
    required TResult Function(_PinSession value) pinSession,
    required TResult Function(_UnpinSession value) unpinSession,
    required TResult Function(_MuteSession value) muteSession,
    required TResult Function(_UnmuteSession value) unmuteSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_ArchiveSession value) archiveSession,
    required TResult Function(_UnarchiveSession value) unarchiveSession,
    required TResult Function(_LoadArchivedGroup value) loadArchivedGroup,
  }) {
    return loadSessions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_LoadSessionsWithArchived value)?
    loadSessionsWithArchived,
    TResult? Function(_RefreshSessions value)? refreshSessions,
    TResult? Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult? Function(_PinSession value)? pinSession,
    TResult? Function(_UnpinSession value)? unpinSession,
    TResult? Function(_MuteSession value)? muteSession,
    TResult? Function(_UnmuteSession value)? unmuteSession,
    TResult? Function(_DeleteSession value)? deleteSession,
    TResult? Function(_NewMessageReceived value)? newMessageReceived,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_ArchiveSession value)? archiveSession,
    TResult? Function(_UnarchiveSession value)? unarchiveSession,
    TResult? Function(_LoadArchivedGroup value)? loadArchivedGroup,
  }) {
    return loadSessions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_LoadSessionsWithArchived value)? loadSessionsWithArchived,
    TResult Function(_RefreshSessions value)? refreshSessions,
    TResult Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult Function(_PinSession value)? pinSession,
    TResult Function(_UnpinSession value)? unpinSession,
    TResult Function(_MuteSession value)? muteSession,
    TResult Function(_UnmuteSession value)? unmuteSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_ArchiveSession value)? archiveSession,
    TResult Function(_UnarchiveSession value)? unarchiveSession,
    TResult Function(_LoadArchivedGroup value)? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (loadSessions != null) {
      return loadSessions(this);
    }
    return orElse();
  }
}

abstract class _LoadSessions implements ArchivedSessionsEvent {
  const factory _LoadSessions() = _$LoadSessionsImpl;
}

/// @nodoc
abstract class _$$LoadSessionsWithArchivedImplCopyWith<$Res> {
  factory _$$LoadSessionsWithArchivedImplCopyWith(
    _$LoadSessionsWithArchivedImpl value,
    $Res Function(_$LoadSessionsWithArchivedImpl) then,
  ) = __$$LoadSessionsWithArchivedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadSessionsWithArchivedImplCopyWithImpl<$Res>
    extends
        _$ArchivedSessionsEventCopyWithImpl<
          $Res,
          _$LoadSessionsWithArchivedImpl
        >
    implements _$$LoadSessionsWithArchivedImplCopyWith<$Res> {
  __$$LoadSessionsWithArchivedImplCopyWithImpl(
    _$LoadSessionsWithArchivedImpl _value,
    $Res Function(_$LoadSessionsWithArchivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadSessionsWithArchivedImpl implements _LoadSessionsWithArchived {
  const _$LoadSessionsWithArchivedImpl();

  @override
  String toString() {
    return 'ArchivedSessionsEvent.loadSessionsWithArchived()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSessionsWithArchivedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSessions,
    required TResult Function() loadSessionsWithArchived,
    required TResult Function() refreshSessions,
    required TResult Function(String conversationId) markSessionAsRead,
    required TResult Function(String conversationId) pinSession,
    required TResult Function(String conversationId) unpinSession,
    required TResult Function(String conversationId) muteSession,
    required TResult Function(String conversationId) unmuteSession,
    required TResult Function(String conversationId) deleteSession,
    required TResult Function(FfiConversation message) newMessageReceived,
    required TResult Function(List<FfiConversation> messages)
    multipleMessagesReceived,
    required TResult Function(String conversationId) archiveSession,
    required TResult Function(String conversationId) unarchiveSession,
    required TResult Function() loadArchivedGroup,
  }) {
    return loadSessionsWithArchived();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSessions,
    TResult? Function()? loadSessionsWithArchived,
    TResult? Function()? refreshSessions,
    TResult? Function(String conversationId)? markSessionAsRead,
    TResult? Function(String conversationId)? pinSession,
    TResult? Function(String conversationId)? unpinSession,
    TResult? Function(String conversationId)? muteSession,
    TResult? Function(String conversationId)? unmuteSession,
    TResult? Function(String conversationId)? deleteSession,
    TResult? Function(FfiConversation message)? newMessageReceived,
    TResult? Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult? Function(String conversationId)? archiveSession,
    TResult? Function(String conversationId)? unarchiveSession,
    TResult? Function()? loadArchivedGroup,
  }) {
    return loadSessionsWithArchived?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSessions,
    TResult Function()? loadSessionsWithArchived,
    TResult Function()? refreshSessions,
    TResult Function(String conversationId)? markSessionAsRead,
    TResult Function(String conversationId)? pinSession,
    TResult Function(String conversationId)? unpinSession,
    TResult Function(String conversationId)? muteSession,
    TResult Function(String conversationId)? unmuteSession,
    TResult Function(String conversationId)? deleteSession,
    TResult Function(FfiConversation message)? newMessageReceived,
    TResult Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult Function(String conversationId)? archiveSession,
    TResult Function(String conversationId)? unarchiveSession,
    TResult Function()? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (loadSessionsWithArchived != null) {
      return loadSessionsWithArchived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_LoadSessionsWithArchived value)
    loadSessionsWithArchived,
    required TResult Function(_RefreshSessions value) refreshSessions,
    required TResult Function(_MarkSessionAsRead value) markSessionAsRead,
    required TResult Function(_PinSession value) pinSession,
    required TResult Function(_UnpinSession value) unpinSession,
    required TResult Function(_MuteSession value) muteSession,
    required TResult Function(_UnmuteSession value) unmuteSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_ArchiveSession value) archiveSession,
    required TResult Function(_UnarchiveSession value) unarchiveSession,
    required TResult Function(_LoadArchivedGroup value) loadArchivedGroup,
  }) {
    return loadSessionsWithArchived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_LoadSessionsWithArchived value)?
    loadSessionsWithArchived,
    TResult? Function(_RefreshSessions value)? refreshSessions,
    TResult? Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult? Function(_PinSession value)? pinSession,
    TResult? Function(_UnpinSession value)? unpinSession,
    TResult? Function(_MuteSession value)? muteSession,
    TResult? Function(_UnmuteSession value)? unmuteSession,
    TResult? Function(_DeleteSession value)? deleteSession,
    TResult? Function(_NewMessageReceived value)? newMessageReceived,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_ArchiveSession value)? archiveSession,
    TResult? Function(_UnarchiveSession value)? unarchiveSession,
    TResult? Function(_LoadArchivedGroup value)? loadArchivedGroup,
  }) {
    return loadSessionsWithArchived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_LoadSessionsWithArchived value)? loadSessionsWithArchived,
    TResult Function(_RefreshSessions value)? refreshSessions,
    TResult Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult Function(_PinSession value)? pinSession,
    TResult Function(_UnpinSession value)? unpinSession,
    TResult Function(_MuteSession value)? muteSession,
    TResult Function(_UnmuteSession value)? unmuteSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_ArchiveSession value)? archiveSession,
    TResult Function(_UnarchiveSession value)? unarchiveSession,
    TResult Function(_LoadArchivedGroup value)? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (loadSessionsWithArchived != null) {
      return loadSessionsWithArchived(this);
    }
    return orElse();
  }
}

abstract class _LoadSessionsWithArchived implements ArchivedSessionsEvent {
  const factory _LoadSessionsWithArchived() = _$LoadSessionsWithArchivedImpl;
}

/// @nodoc
abstract class _$$RefreshSessionsImplCopyWith<$Res> {
  factory _$$RefreshSessionsImplCopyWith(
    _$RefreshSessionsImpl value,
    $Res Function(_$RefreshSessionsImpl) then,
  ) = __$$RefreshSessionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshSessionsImplCopyWithImpl<$Res>
    extends _$ArchivedSessionsEventCopyWithImpl<$Res, _$RefreshSessionsImpl>
    implements _$$RefreshSessionsImplCopyWith<$Res> {
  __$$RefreshSessionsImplCopyWithImpl(
    _$RefreshSessionsImpl _value,
    $Res Function(_$RefreshSessionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshSessionsImpl implements _RefreshSessions {
  const _$RefreshSessionsImpl();

  @override
  String toString() {
    return 'ArchivedSessionsEvent.refreshSessions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshSessionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSessions,
    required TResult Function() loadSessionsWithArchived,
    required TResult Function() refreshSessions,
    required TResult Function(String conversationId) markSessionAsRead,
    required TResult Function(String conversationId) pinSession,
    required TResult Function(String conversationId) unpinSession,
    required TResult Function(String conversationId) muteSession,
    required TResult Function(String conversationId) unmuteSession,
    required TResult Function(String conversationId) deleteSession,
    required TResult Function(FfiConversation message) newMessageReceived,
    required TResult Function(List<FfiConversation> messages)
    multipleMessagesReceived,
    required TResult Function(String conversationId) archiveSession,
    required TResult Function(String conversationId) unarchiveSession,
    required TResult Function() loadArchivedGroup,
  }) {
    return refreshSessions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSessions,
    TResult? Function()? loadSessionsWithArchived,
    TResult? Function()? refreshSessions,
    TResult? Function(String conversationId)? markSessionAsRead,
    TResult? Function(String conversationId)? pinSession,
    TResult? Function(String conversationId)? unpinSession,
    TResult? Function(String conversationId)? muteSession,
    TResult? Function(String conversationId)? unmuteSession,
    TResult? Function(String conversationId)? deleteSession,
    TResult? Function(FfiConversation message)? newMessageReceived,
    TResult? Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult? Function(String conversationId)? archiveSession,
    TResult? Function(String conversationId)? unarchiveSession,
    TResult? Function()? loadArchivedGroup,
  }) {
    return refreshSessions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSessions,
    TResult Function()? loadSessionsWithArchived,
    TResult Function()? refreshSessions,
    TResult Function(String conversationId)? markSessionAsRead,
    TResult Function(String conversationId)? pinSession,
    TResult Function(String conversationId)? unpinSession,
    TResult Function(String conversationId)? muteSession,
    TResult Function(String conversationId)? unmuteSession,
    TResult Function(String conversationId)? deleteSession,
    TResult Function(FfiConversation message)? newMessageReceived,
    TResult Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult Function(String conversationId)? archiveSession,
    TResult Function(String conversationId)? unarchiveSession,
    TResult Function()? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (refreshSessions != null) {
      return refreshSessions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_LoadSessionsWithArchived value)
    loadSessionsWithArchived,
    required TResult Function(_RefreshSessions value) refreshSessions,
    required TResult Function(_MarkSessionAsRead value) markSessionAsRead,
    required TResult Function(_PinSession value) pinSession,
    required TResult Function(_UnpinSession value) unpinSession,
    required TResult Function(_MuteSession value) muteSession,
    required TResult Function(_UnmuteSession value) unmuteSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_ArchiveSession value) archiveSession,
    required TResult Function(_UnarchiveSession value) unarchiveSession,
    required TResult Function(_LoadArchivedGroup value) loadArchivedGroup,
  }) {
    return refreshSessions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_LoadSessionsWithArchived value)?
    loadSessionsWithArchived,
    TResult? Function(_RefreshSessions value)? refreshSessions,
    TResult? Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult? Function(_PinSession value)? pinSession,
    TResult? Function(_UnpinSession value)? unpinSession,
    TResult? Function(_MuteSession value)? muteSession,
    TResult? Function(_UnmuteSession value)? unmuteSession,
    TResult? Function(_DeleteSession value)? deleteSession,
    TResult? Function(_NewMessageReceived value)? newMessageReceived,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_ArchiveSession value)? archiveSession,
    TResult? Function(_UnarchiveSession value)? unarchiveSession,
    TResult? Function(_LoadArchivedGroup value)? loadArchivedGroup,
  }) {
    return refreshSessions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_LoadSessionsWithArchived value)? loadSessionsWithArchived,
    TResult Function(_RefreshSessions value)? refreshSessions,
    TResult Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult Function(_PinSession value)? pinSession,
    TResult Function(_UnpinSession value)? unpinSession,
    TResult Function(_MuteSession value)? muteSession,
    TResult Function(_UnmuteSession value)? unmuteSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_ArchiveSession value)? archiveSession,
    TResult Function(_UnarchiveSession value)? unarchiveSession,
    TResult Function(_LoadArchivedGroup value)? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (refreshSessions != null) {
      return refreshSessions(this);
    }
    return orElse();
  }
}

abstract class _RefreshSessions implements ArchivedSessionsEvent {
  const factory _RefreshSessions() = _$RefreshSessionsImpl;
}

/// @nodoc
abstract class _$$MarkSessionAsReadImplCopyWith<$Res> {
  factory _$$MarkSessionAsReadImplCopyWith(
    _$MarkSessionAsReadImpl value,
    $Res Function(_$MarkSessionAsReadImpl) then,
  ) = __$$MarkSessionAsReadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$MarkSessionAsReadImplCopyWithImpl<$Res>
    extends _$ArchivedSessionsEventCopyWithImpl<$Res, _$MarkSessionAsReadImpl>
    implements _$$MarkSessionAsReadImplCopyWith<$Res> {
  __$$MarkSessionAsReadImplCopyWithImpl(
    _$MarkSessionAsReadImpl _value,
    $Res Function(_$MarkSessionAsReadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _$MarkSessionAsReadImpl(
        conversationId:
            null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$MarkSessionAsReadImpl implements _MarkSessionAsRead {
  const _$MarkSessionAsReadImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ArchivedSessionsEvent.markSessionAsRead(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkSessionAsReadImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkSessionAsReadImplCopyWith<_$MarkSessionAsReadImpl> get copyWith =>
      __$$MarkSessionAsReadImplCopyWithImpl<_$MarkSessionAsReadImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSessions,
    required TResult Function() loadSessionsWithArchived,
    required TResult Function() refreshSessions,
    required TResult Function(String conversationId) markSessionAsRead,
    required TResult Function(String conversationId) pinSession,
    required TResult Function(String conversationId) unpinSession,
    required TResult Function(String conversationId) muteSession,
    required TResult Function(String conversationId) unmuteSession,
    required TResult Function(String conversationId) deleteSession,
    required TResult Function(FfiConversation message) newMessageReceived,
    required TResult Function(List<FfiConversation> messages)
    multipleMessagesReceived,
    required TResult Function(String conversationId) archiveSession,
    required TResult Function(String conversationId) unarchiveSession,
    required TResult Function() loadArchivedGroup,
  }) {
    return markSessionAsRead(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSessions,
    TResult? Function()? loadSessionsWithArchived,
    TResult? Function()? refreshSessions,
    TResult? Function(String conversationId)? markSessionAsRead,
    TResult? Function(String conversationId)? pinSession,
    TResult? Function(String conversationId)? unpinSession,
    TResult? Function(String conversationId)? muteSession,
    TResult? Function(String conversationId)? unmuteSession,
    TResult? Function(String conversationId)? deleteSession,
    TResult? Function(FfiConversation message)? newMessageReceived,
    TResult? Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult? Function(String conversationId)? archiveSession,
    TResult? Function(String conversationId)? unarchiveSession,
    TResult? Function()? loadArchivedGroup,
  }) {
    return markSessionAsRead?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSessions,
    TResult Function()? loadSessionsWithArchived,
    TResult Function()? refreshSessions,
    TResult Function(String conversationId)? markSessionAsRead,
    TResult Function(String conversationId)? pinSession,
    TResult Function(String conversationId)? unpinSession,
    TResult Function(String conversationId)? muteSession,
    TResult Function(String conversationId)? unmuteSession,
    TResult Function(String conversationId)? deleteSession,
    TResult Function(FfiConversation message)? newMessageReceived,
    TResult Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult Function(String conversationId)? archiveSession,
    TResult Function(String conversationId)? unarchiveSession,
    TResult Function()? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (markSessionAsRead != null) {
      return markSessionAsRead(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_LoadSessionsWithArchived value)
    loadSessionsWithArchived,
    required TResult Function(_RefreshSessions value) refreshSessions,
    required TResult Function(_MarkSessionAsRead value) markSessionAsRead,
    required TResult Function(_PinSession value) pinSession,
    required TResult Function(_UnpinSession value) unpinSession,
    required TResult Function(_MuteSession value) muteSession,
    required TResult Function(_UnmuteSession value) unmuteSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_ArchiveSession value) archiveSession,
    required TResult Function(_UnarchiveSession value) unarchiveSession,
    required TResult Function(_LoadArchivedGroup value) loadArchivedGroup,
  }) {
    return markSessionAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_LoadSessionsWithArchived value)?
    loadSessionsWithArchived,
    TResult? Function(_RefreshSessions value)? refreshSessions,
    TResult? Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult? Function(_PinSession value)? pinSession,
    TResult? Function(_UnpinSession value)? unpinSession,
    TResult? Function(_MuteSession value)? muteSession,
    TResult? Function(_UnmuteSession value)? unmuteSession,
    TResult? Function(_DeleteSession value)? deleteSession,
    TResult? Function(_NewMessageReceived value)? newMessageReceived,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_ArchiveSession value)? archiveSession,
    TResult? Function(_UnarchiveSession value)? unarchiveSession,
    TResult? Function(_LoadArchivedGroup value)? loadArchivedGroup,
  }) {
    return markSessionAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_LoadSessionsWithArchived value)? loadSessionsWithArchived,
    TResult Function(_RefreshSessions value)? refreshSessions,
    TResult Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult Function(_PinSession value)? pinSession,
    TResult Function(_UnpinSession value)? unpinSession,
    TResult Function(_MuteSession value)? muteSession,
    TResult Function(_UnmuteSession value)? unmuteSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_ArchiveSession value)? archiveSession,
    TResult Function(_UnarchiveSession value)? unarchiveSession,
    TResult Function(_LoadArchivedGroup value)? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (markSessionAsRead != null) {
      return markSessionAsRead(this);
    }
    return orElse();
  }
}

abstract class _MarkSessionAsRead implements ArchivedSessionsEvent {
  const factory _MarkSessionAsRead({required final String conversationId}) =
      _$MarkSessionAsReadImpl;

  String get conversationId;

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkSessionAsReadImplCopyWith<_$MarkSessionAsReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PinSessionImplCopyWith<$Res> {
  factory _$$PinSessionImplCopyWith(
    _$PinSessionImpl value,
    $Res Function(_$PinSessionImpl) then,
  ) = __$$PinSessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$PinSessionImplCopyWithImpl<$Res>
    extends _$ArchivedSessionsEventCopyWithImpl<$Res, _$PinSessionImpl>
    implements _$$PinSessionImplCopyWith<$Res> {
  __$$PinSessionImplCopyWithImpl(
    _$PinSessionImpl _value,
    $Res Function(_$PinSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _$PinSessionImpl(
        conversationId:
            null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$PinSessionImpl implements _PinSession {
  const _$PinSessionImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ArchivedSessionsEvent.pinSession(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PinSessionImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PinSessionImplCopyWith<_$PinSessionImpl> get copyWith =>
      __$$PinSessionImplCopyWithImpl<_$PinSessionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSessions,
    required TResult Function() loadSessionsWithArchived,
    required TResult Function() refreshSessions,
    required TResult Function(String conversationId) markSessionAsRead,
    required TResult Function(String conversationId) pinSession,
    required TResult Function(String conversationId) unpinSession,
    required TResult Function(String conversationId) muteSession,
    required TResult Function(String conversationId) unmuteSession,
    required TResult Function(String conversationId) deleteSession,
    required TResult Function(FfiConversation message) newMessageReceived,
    required TResult Function(List<FfiConversation> messages)
    multipleMessagesReceived,
    required TResult Function(String conversationId) archiveSession,
    required TResult Function(String conversationId) unarchiveSession,
    required TResult Function() loadArchivedGroup,
  }) {
    return pinSession(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSessions,
    TResult? Function()? loadSessionsWithArchived,
    TResult? Function()? refreshSessions,
    TResult? Function(String conversationId)? markSessionAsRead,
    TResult? Function(String conversationId)? pinSession,
    TResult? Function(String conversationId)? unpinSession,
    TResult? Function(String conversationId)? muteSession,
    TResult? Function(String conversationId)? unmuteSession,
    TResult? Function(String conversationId)? deleteSession,
    TResult? Function(FfiConversation message)? newMessageReceived,
    TResult? Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult? Function(String conversationId)? archiveSession,
    TResult? Function(String conversationId)? unarchiveSession,
    TResult? Function()? loadArchivedGroup,
  }) {
    return pinSession?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSessions,
    TResult Function()? loadSessionsWithArchived,
    TResult Function()? refreshSessions,
    TResult Function(String conversationId)? markSessionAsRead,
    TResult Function(String conversationId)? pinSession,
    TResult Function(String conversationId)? unpinSession,
    TResult Function(String conversationId)? muteSession,
    TResult Function(String conversationId)? unmuteSession,
    TResult Function(String conversationId)? deleteSession,
    TResult Function(FfiConversation message)? newMessageReceived,
    TResult Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult Function(String conversationId)? archiveSession,
    TResult Function(String conversationId)? unarchiveSession,
    TResult Function()? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (pinSession != null) {
      return pinSession(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_LoadSessionsWithArchived value)
    loadSessionsWithArchived,
    required TResult Function(_RefreshSessions value) refreshSessions,
    required TResult Function(_MarkSessionAsRead value) markSessionAsRead,
    required TResult Function(_PinSession value) pinSession,
    required TResult Function(_UnpinSession value) unpinSession,
    required TResult Function(_MuteSession value) muteSession,
    required TResult Function(_UnmuteSession value) unmuteSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_ArchiveSession value) archiveSession,
    required TResult Function(_UnarchiveSession value) unarchiveSession,
    required TResult Function(_LoadArchivedGroup value) loadArchivedGroup,
  }) {
    return pinSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_LoadSessionsWithArchived value)?
    loadSessionsWithArchived,
    TResult? Function(_RefreshSessions value)? refreshSessions,
    TResult? Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult? Function(_PinSession value)? pinSession,
    TResult? Function(_UnpinSession value)? unpinSession,
    TResult? Function(_MuteSession value)? muteSession,
    TResult? Function(_UnmuteSession value)? unmuteSession,
    TResult? Function(_DeleteSession value)? deleteSession,
    TResult? Function(_NewMessageReceived value)? newMessageReceived,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_ArchiveSession value)? archiveSession,
    TResult? Function(_UnarchiveSession value)? unarchiveSession,
    TResult? Function(_LoadArchivedGroup value)? loadArchivedGroup,
  }) {
    return pinSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_LoadSessionsWithArchived value)? loadSessionsWithArchived,
    TResult Function(_RefreshSessions value)? refreshSessions,
    TResult Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult Function(_PinSession value)? pinSession,
    TResult Function(_UnpinSession value)? unpinSession,
    TResult Function(_MuteSession value)? muteSession,
    TResult Function(_UnmuteSession value)? unmuteSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_ArchiveSession value)? archiveSession,
    TResult Function(_UnarchiveSession value)? unarchiveSession,
    TResult Function(_LoadArchivedGroup value)? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (pinSession != null) {
      return pinSession(this);
    }
    return orElse();
  }
}

abstract class _PinSession implements ArchivedSessionsEvent {
  const factory _PinSession({required final String conversationId}) =
      _$PinSessionImpl;

  String get conversationId;

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PinSessionImplCopyWith<_$PinSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnpinSessionImplCopyWith<$Res> {
  factory _$$UnpinSessionImplCopyWith(
    _$UnpinSessionImpl value,
    $Res Function(_$UnpinSessionImpl) then,
  ) = __$$UnpinSessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$UnpinSessionImplCopyWithImpl<$Res>
    extends _$ArchivedSessionsEventCopyWithImpl<$Res, _$UnpinSessionImpl>
    implements _$$UnpinSessionImplCopyWith<$Res> {
  __$$UnpinSessionImplCopyWithImpl(
    _$UnpinSessionImpl _value,
    $Res Function(_$UnpinSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _$UnpinSessionImpl(
        conversationId:
            null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$UnpinSessionImpl implements _UnpinSession {
  const _$UnpinSessionImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ArchivedSessionsEvent.unpinSession(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnpinSessionImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnpinSessionImplCopyWith<_$UnpinSessionImpl> get copyWith =>
      __$$UnpinSessionImplCopyWithImpl<_$UnpinSessionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSessions,
    required TResult Function() loadSessionsWithArchived,
    required TResult Function() refreshSessions,
    required TResult Function(String conversationId) markSessionAsRead,
    required TResult Function(String conversationId) pinSession,
    required TResult Function(String conversationId) unpinSession,
    required TResult Function(String conversationId) muteSession,
    required TResult Function(String conversationId) unmuteSession,
    required TResult Function(String conversationId) deleteSession,
    required TResult Function(FfiConversation message) newMessageReceived,
    required TResult Function(List<FfiConversation> messages)
    multipleMessagesReceived,
    required TResult Function(String conversationId) archiveSession,
    required TResult Function(String conversationId) unarchiveSession,
    required TResult Function() loadArchivedGroup,
  }) {
    return unpinSession(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSessions,
    TResult? Function()? loadSessionsWithArchived,
    TResult? Function()? refreshSessions,
    TResult? Function(String conversationId)? markSessionAsRead,
    TResult? Function(String conversationId)? pinSession,
    TResult? Function(String conversationId)? unpinSession,
    TResult? Function(String conversationId)? muteSession,
    TResult? Function(String conversationId)? unmuteSession,
    TResult? Function(String conversationId)? deleteSession,
    TResult? Function(FfiConversation message)? newMessageReceived,
    TResult? Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult? Function(String conversationId)? archiveSession,
    TResult? Function(String conversationId)? unarchiveSession,
    TResult? Function()? loadArchivedGroup,
  }) {
    return unpinSession?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSessions,
    TResult Function()? loadSessionsWithArchived,
    TResult Function()? refreshSessions,
    TResult Function(String conversationId)? markSessionAsRead,
    TResult Function(String conversationId)? pinSession,
    TResult Function(String conversationId)? unpinSession,
    TResult Function(String conversationId)? muteSession,
    TResult Function(String conversationId)? unmuteSession,
    TResult Function(String conversationId)? deleteSession,
    TResult Function(FfiConversation message)? newMessageReceived,
    TResult Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult Function(String conversationId)? archiveSession,
    TResult Function(String conversationId)? unarchiveSession,
    TResult Function()? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (unpinSession != null) {
      return unpinSession(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_LoadSessionsWithArchived value)
    loadSessionsWithArchived,
    required TResult Function(_RefreshSessions value) refreshSessions,
    required TResult Function(_MarkSessionAsRead value) markSessionAsRead,
    required TResult Function(_PinSession value) pinSession,
    required TResult Function(_UnpinSession value) unpinSession,
    required TResult Function(_MuteSession value) muteSession,
    required TResult Function(_UnmuteSession value) unmuteSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_ArchiveSession value) archiveSession,
    required TResult Function(_UnarchiveSession value) unarchiveSession,
    required TResult Function(_LoadArchivedGroup value) loadArchivedGroup,
  }) {
    return unpinSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_LoadSessionsWithArchived value)?
    loadSessionsWithArchived,
    TResult? Function(_RefreshSessions value)? refreshSessions,
    TResult? Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult? Function(_PinSession value)? pinSession,
    TResult? Function(_UnpinSession value)? unpinSession,
    TResult? Function(_MuteSession value)? muteSession,
    TResult? Function(_UnmuteSession value)? unmuteSession,
    TResult? Function(_DeleteSession value)? deleteSession,
    TResult? Function(_NewMessageReceived value)? newMessageReceived,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_ArchiveSession value)? archiveSession,
    TResult? Function(_UnarchiveSession value)? unarchiveSession,
    TResult? Function(_LoadArchivedGroup value)? loadArchivedGroup,
  }) {
    return unpinSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_LoadSessionsWithArchived value)? loadSessionsWithArchived,
    TResult Function(_RefreshSessions value)? refreshSessions,
    TResult Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult Function(_PinSession value)? pinSession,
    TResult Function(_UnpinSession value)? unpinSession,
    TResult Function(_MuteSession value)? muteSession,
    TResult Function(_UnmuteSession value)? unmuteSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_ArchiveSession value)? archiveSession,
    TResult Function(_UnarchiveSession value)? unarchiveSession,
    TResult Function(_LoadArchivedGroup value)? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (unpinSession != null) {
      return unpinSession(this);
    }
    return orElse();
  }
}

abstract class _UnpinSession implements ArchivedSessionsEvent {
  const factory _UnpinSession({required final String conversationId}) =
      _$UnpinSessionImpl;

  String get conversationId;

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnpinSessionImplCopyWith<_$UnpinSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MuteSessionImplCopyWith<$Res> {
  factory _$$MuteSessionImplCopyWith(
    _$MuteSessionImpl value,
    $Res Function(_$MuteSessionImpl) then,
  ) = __$$MuteSessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$MuteSessionImplCopyWithImpl<$Res>
    extends _$ArchivedSessionsEventCopyWithImpl<$Res, _$MuteSessionImpl>
    implements _$$MuteSessionImplCopyWith<$Res> {
  __$$MuteSessionImplCopyWithImpl(
    _$MuteSessionImpl _value,
    $Res Function(_$MuteSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _$MuteSessionImpl(
        conversationId:
            null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$MuteSessionImpl implements _MuteSession {
  const _$MuteSessionImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ArchivedSessionsEvent.muteSession(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuteSessionImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MuteSessionImplCopyWith<_$MuteSessionImpl> get copyWith =>
      __$$MuteSessionImplCopyWithImpl<_$MuteSessionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSessions,
    required TResult Function() loadSessionsWithArchived,
    required TResult Function() refreshSessions,
    required TResult Function(String conversationId) markSessionAsRead,
    required TResult Function(String conversationId) pinSession,
    required TResult Function(String conversationId) unpinSession,
    required TResult Function(String conversationId) muteSession,
    required TResult Function(String conversationId) unmuteSession,
    required TResult Function(String conversationId) deleteSession,
    required TResult Function(FfiConversation message) newMessageReceived,
    required TResult Function(List<FfiConversation> messages)
    multipleMessagesReceived,
    required TResult Function(String conversationId) archiveSession,
    required TResult Function(String conversationId) unarchiveSession,
    required TResult Function() loadArchivedGroup,
  }) {
    return muteSession(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSessions,
    TResult? Function()? loadSessionsWithArchived,
    TResult? Function()? refreshSessions,
    TResult? Function(String conversationId)? markSessionAsRead,
    TResult? Function(String conversationId)? pinSession,
    TResult? Function(String conversationId)? unpinSession,
    TResult? Function(String conversationId)? muteSession,
    TResult? Function(String conversationId)? unmuteSession,
    TResult? Function(String conversationId)? deleteSession,
    TResult? Function(FfiConversation message)? newMessageReceived,
    TResult? Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult? Function(String conversationId)? archiveSession,
    TResult? Function(String conversationId)? unarchiveSession,
    TResult? Function()? loadArchivedGroup,
  }) {
    return muteSession?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSessions,
    TResult Function()? loadSessionsWithArchived,
    TResult Function()? refreshSessions,
    TResult Function(String conversationId)? markSessionAsRead,
    TResult Function(String conversationId)? pinSession,
    TResult Function(String conversationId)? unpinSession,
    TResult Function(String conversationId)? muteSession,
    TResult Function(String conversationId)? unmuteSession,
    TResult Function(String conversationId)? deleteSession,
    TResult Function(FfiConversation message)? newMessageReceived,
    TResult Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult Function(String conversationId)? archiveSession,
    TResult Function(String conversationId)? unarchiveSession,
    TResult Function()? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (muteSession != null) {
      return muteSession(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_LoadSessionsWithArchived value)
    loadSessionsWithArchived,
    required TResult Function(_RefreshSessions value) refreshSessions,
    required TResult Function(_MarkSessionAsRead value) markSessionAsRead,
    required TResult Function(_PinSession value) pinSession,
    required TResult Function(_UnpinSession value) unpinSession,
    required TResult Function(_MuteSession value) muteSession,
    required TResult Function(_UnmuteSession value) unmuteSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_ArchiveSession value) archiveSession,
    required TResult Function(_UnarchiveSession value) unarchiveSession,
    required TResult Function(_LoadArchivedGroup value) loadArchivedGroup,
  }) {
    return muteSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_LoadSessionsWithArchived value)?
    loadSessionsWithArchived,
    TResult? Function(_RefreshSessions value)? refreshSessions,
    TResult? Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult? Function(_PinSession value)? pinSession,
    TResult? Function(_UnpinSession value)? unpinSession,
    TResult? Function(_MuteSession value)? muteSession,
    TResult? Function(_UnmuteSession value)? unmuteSession,
    TResult? Function(_DeleteSession value)? deleteSession,
    TResult? Function(_NewMessageReceived value)? newMessageReceived,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_ArchiveSession value)? archiveSession,
    TResult? Function(_UnarchiveSession value)? unarchiveSession,
    TResult? Function(_LoadArchivedGroup value)? loadArchivedGroup,
  }) {
    return muteSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_LoadSessionsWithArchived value)? loadSessionsWithArchived,
    TResult Function(_RefreshSessions value)? refreshSessions,
    TResult Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult Function(_PinSession value)? pinSession,
    TResult Function(_UnpinSession value)? unpinSession,
    TResult Function(_MuteSession value)? muteSession,
    TResult Function(_UnmuteSession value)? unmuteSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_ArchiveSession value)? archiveSession,
    TResult Function(_UnarchiveSession value)? unarchiveSession,
    TResult Function(_LoadArchivedGroup value)? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (muteSession != null) {
      return muteSession(this);
    }
    return orElse();
  }
}

abstract class _MuteSession implements ArchivedSessionsEvent {
  const factory _MuteSession({required final String conversationId}) =
      _$MuteSessionImpl;

  String get conversationId;

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MuteSessionImplCopyWith<_$MuteSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnmuteSessionImplCopyWith<$Res> {
  factory _$$UnmuteSessionImplCopyWith(
    _$UnmuteSessionImpl value,
    $Res Function(_$UnmuteSessionImpl) then,
  ) = __$$UnmuteSessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$UnmuteSessionImplCopyWithImpl<$Res>
    extends _$ArchivedSessionsEventCopyWithImpl<$Res, _$UnmuteSessionImpl>
    implements _$$UnmuteSessionImplCopyWith<$Res> {
  __$$UnmuteSessionImplCopyWithImpl(
    _$UnmuteSessionImpl _value,
    $Res Function(_$UnmuteSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _$UnmuteSessionImpl(
        conversationId:
            null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$UnmuteSessionImpl implements _UnmuteSession {
  const _$UnmuteSessionImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ArchivedSessionsEvent.unmuteSession(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnmuteSessionImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnmuteSessionImplCopyWith<_$UnmuteSessionImpl> get copyWith =>
      __$$UnmuteSessionImplCopyWithImpl<_$UnmuteSessionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSessions,
    required TResult Function() loadSessionsWithArchived,
    required TResult Function() refreshSessions,
    required TResult Function(String conversationId) markSessionAsRead,
    required TResult Function(String conversationId) pinSession,
    required TResult Function(String conversationId) unpinSession,
    required TResult Function(String conversationId) muteSession,
    required TResult Function(String conversationId) unmuteSession,
    required TResult Function(String conversationId) deleteSession,
    required TResult Function(FfiConversation message) newMessageReceived,
    required TResult Function(List<FfiConversation> messages)
    multipleMessagesReceived,
    required TResult Function(String conversationId) archiveSession,
    required TResult Function(String conversationId) unarchiveSession,
    required TResult Function() loadArchivedGroup,
  }) {
    return unmuteSession(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSessions,
    TResult? Function()? loadSessionsWithArchived,
    TResult? Function()? refreshSessions,
    TResult? Function(String conversationId)? markSessionAsRead,
    TResult? Function(String conversationId)? pinSession,
    TResult? Function(String conversationId)? unpinSession,
    TResult? Function(String conversationId)? muteSession,
    TResult? Function(String conversationId)? unmuteSession,
    TResult? Function(String conversationId)? deleteSession,
    TResult? Function(FfiConversation message)? newMessageReceived,
    TResult? Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult? Function(String conversationId)? archiveSession,
    TResult? Function(String conversationId)? unarchiveSession,
    TResult? Function()? loadArchivedGroup,
  }) {
    return unmuteSession?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSessions,
    TResult Function()? loadSessionsWithArchived,
    TResult Function()? refreshSessions,
    TResult Function(String conversationId)? markSessionAsRead,
    TResult Function(String conversationId)? pinSession,
    TResult Function(String conversationId)? unpinSession,
    TResult Function(String conversationId)? muteSession,
    TResult Function(String conversationId)? unmuteSession,
    TResult Function(String conversationId)? deleteSession,
    TResult Function(FfiConversation message)? newMessageReceived,
    TResult Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult Function(String conversationId)? archiveSession,
    TResult Function(String conversationId)? unarchiveSession,
    TResult Function()? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (unmuteSession != null) {
      return unmuteSession(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_LoadSessionsWithArchived value)
    loadSessionsWithArchived,
    required TResult Function(_RefreshSessions value) refreshSessions,
    required TResult Function(_MarkSessionAsRead value) markSessionAsRead,
    required TResult Function(_PinSession value) pinSession,
    required TResult Function(_UnpinSession value) unpinSession,
    required TResult Function(_MuteSession value) muteSession,
    required TResult Function(_UnmuteSession value) unmuteSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_ArchiveSession value) archiveSession,
    required TResult Function(_UnarchiveSession value) unarchiveSession,
    required TResult Function(_LoadArchivedGroup value) loadArchivedGroup,
  }) {
    return unmuteSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_LoadSessionsWithArchived value)?
    loadSessionsWithArchived,
    TResult? Function(_RefreshSessions value)? refreshSessions,
    TResult? Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult? Function(_PinSession value)? pinSession,
    TResult? Function(_UnpinSession value)? unpinSession,
    TResult? Function(_MuteSession value)? muteSession,
    TResult? Function(_UnmuteSession value)? unmuteSession,
    TResult? Function(_DeleteSession value)? deleteSession,
    TResult? Function(_NewMessageReceived value)? newMessageReceived,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_ArchiveSession value)? archiveSession,
    TResult? Function(_UnarchiveSession value)? unarchiveSession,
    TResult? Function(_LoadArchivedGroup value)? loadArchivedGroup,
  }) {
    return unmuteSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_LoadSessionsWithArchived value)? loadSessionsWithArchived,
    TResult Function(_RefreshSessions value)? refreshSessions,
    TResult Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult Function(_PinSession value)? pinSession,
    TResult Function(_UnpinSession value)? unpinSession,
    TResult Function(_MuteSession value)? muteSession,
    TResult Function(_UnmuteSession value)? unmuteSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_ArchiveSession value)? archiveSession,
    TResult Function(_UnarchiveSession value)? unarchiveSession,
    TResult Function(_LoadArchivedGroup value)? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (unmuteSession != null) {
      return unmuteSession(this);
    }
    return orElse();
  }
}

abstract class _UnmuteSession implements ArchivedSessionsEvent {
  const factory _UnmuteSession({required final String conversationId}) =
      _$UnmuteSessionImpl;

  String get conversationId;

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnmuteSessionImplCopyWith<_$UnmuteSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSessionImplCopyWith<$Res> {
  factory _$$DeleteSessionImplCopyWith(
    _$DeleteSessionImpl value,
    $Res Function(_$DeleteSessionImpl) then,
  ) = __$$DeleteSessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$DeleteSessionImplCopyWithImpl<$Res>
    extends _$ArchivedSessionsEventCopyWithImpl<$Res, _$DeleteSessionImpl>
    implements _$$DeleteSessionImplCopyWith<$Res> {
  __$$DeleteSessionImplCopyWithImpl(
    _$DeleteSessionImpl _value,
    $Res Function(_$DeleteSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _$DeleteSessionImpl(
        conversationId:
            null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteSessionImpl implements _DeleteSession {
  const _$DeleteSessionImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ArchivedSessionsEvent.deleteSession(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSessionImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSessionImplCopyWith<_$DeleteSessionImpl> get copyWith =>
      __$$DeleteSessionImplCopyWithImpl<_$DeleteSessionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSessions,
    required TResult Function() loadSessionsWithArchived,
    required TResult Function() refreshSessions,
    required TResult Function(String conversationId) markSessionAsRead,
    required TResult Function(String conversationId) pinSession,
    required TResult Function(String conversationId) unpinSession,
    required TResult Function(String conversationId) muteSession,
    required TResult Function(String conversationId) unmuteSession,
    required TResult Function(String conversationId) deleteSession,
    required TResult Function(FfiConversation message) newMessageReceived,
    required TResult Function(List<FfiConversation> messages)
    multipleMessagesReceived,
    required TResult Function(String conversationId) archiveSession,
    required TResult Function(String conversationId) unarchiveSession,
    required TResult Function() loadArchivedGroup,
  }) {
    return deleteSession(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSessions,
    TResult? Function()? loadSessionsWithArchived,
    TResult? Function()? refreshSessions,
    TResult? Function(String conversationId)? markSessionAsRead,
    TResult? Function(String conversationId)? pinSession,
    TResult? Function(String conversationId)? unpinSession,
    TResult? Function(String conversationId)? muteSession,
    TResult? Function(String conversationId)? unmuteSession,
    TResult? Function(String conversationId)? deleteSession,
    TResult? Function(FfiConversation message)? newMessageReceived,
    TResult? Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult? Function(String conversationId)? archiveSession,
    TResult? Function(String conversationId)? unarchiveSession,
    TResult? Function()? loadArchivedGroup,
  }) {
    return deleteSession?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSessions,
    TResult Function()? loadSessionsWithArchived,
    TResult Function()? refreshSessions,
    TResult Function(String conversationId)? markSessionAsRead,
    TResult Function(String conversationId)? pinSession,
    TResult Function(String conversationId)? unpinSession,
    TResult Function(String conversationId)? muteSession,
    TResult Function(String conversationId)? unmuteSession,
    TResult Function(String conversationId)? deleteSession,
    TResult Function(FfiConversation message)? newMessageReceived,
    TResult Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult Function(String conversationId)? archiveSession,
    TResult Function(String conversationId)? unarchiveSession,
    TResult Function()? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (deleteSession != null) {
      return deleteSession(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_LoadSessionsWithArchived value)
    loadSessionsWithArchived,
    required TResult Function(_RefreshSessions value) refreshSessions,
    required TResult Function(_MarkSessionAsRead value) markSessionAsRead,
    required TResult Function(_PinSession value) pinSession,
    required TResult Function(_UnpinSession value) unpinSession,
    required TResult Function(_MuteSession value) muteSession,
    required TResult Function(_UnmuteSession value) unmuteSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_ArchiveSession value) archiveSession,
    required TResult Function(_UnarchiveSession value) unarchiveSession,
    required TResult Function(_LoadArchivedGroup value) loadArchivedGroup,
  }) {
    return deleteSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_LoadSessionsWithArchived value)?
    loadSessionsWithArchived,
    TResult? Function(_RefreshSessions value)? refreshSessions,
    TResult? Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult? Function(_PinSession value)? pinSession,
    TResult? Function(_UnpinSession value)? unpinSession,
    TResult? Function(_MuteSession value)? muteSession,
    TResult? Function(_UnmuteSession value)? unmuteSession,
    TResult? Function(_DeleteSession value)? deleteSession,
    TResult? Function(_NewMessageReceived value)? newMessageReceived,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_ArchiveSession value)? archiveSession,
    TResult? Function(_UnarchiveSession value)? unarchiveSession,
    TResult? Function(_LoadArchivedGroup value)? loadArchivedGroup,
  }) {
    return deleteSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_LoadSessionsWithArchived value)? loadSessionsWithArchived,
    TResult Function(_RefreshSessions value)? refreshSessions,
    TResult Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult Function(_PinSession value)? pinSession,
    TResult Function(_UnpinSession value)? unpinSession,
    TResult Function(_MuteSession value)? muteSession,
    TResult Function(_UnmuteSession value)? unmuteSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_ArchiveSession value)? archiveSession,
    TResult Function(_UnarchiveSession value)? unarchiveSession,
    TResult Function(_LoadArchivedGroup value)? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (deleteSession != null) {
      return deleteSession(this);
    }
    return orElse();
  }
}

abstract class _DeleteSession implements ArchivedSessionsEvent {
  const factory _DeleteSession({required final String conversationId}) =
      _$DeleteSessionImpl;

  String get conversationId;

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteSessionImplCopyWith<_$DeleteSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewMessageReceivedImplCopyWith<$Res> {
  factory _$$NewMessageReceivedImplCopyWith(
    _$NewMessageReceivedImpl value,
    $Res Function(_$NewMessageReceivedImpl) then,
  ) = __$$NewMessageReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiConversation message});

  $FfiConversationCopyWith<$Res> get message;
}

/// @nodoc
class __$$NewMessageReceivedImplCopyWithImpl<$Res>
    extends _$ArchivedSessionsEventCopyWithImpl<$Res, _$NewMessageReceivedImpl>
    implements _$$NewMessageReceivedImplCopyWith<$Res> {
  __$$NewMessageReceivedImplCopyWithImpl(
    _$NewMessageReceivedImpl _value,
    $Res Function(_$NewMessageReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$NewMessageReceivedImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as FfiConversation,
      ),
    );
  }

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiConversationCopyWith<$Res> get message {
    return $FfiConversationCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$NewMessageReceivedImpl implements _NewMessageReceived {
  const _$NewMessageReceivedImpl({required this.message});

  @override
  final FfiConversation message;

  @override
  String toString() {
    return 'ArchivedSessionsEvent.newMessageReceived(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewMessageReceivedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewMessageReceivedImplCopyWith<_$NewMessageReceivedImpl> get copyWith =>
      __$$NewMessageReceivedImplCopyWithImpl<_$NewMessageReceivedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSessions,
    required TResult Function() loadSessionsWithArchived,
    required TResult Function() refreshSessions,
    required TResult Function(String conversationId) markSessionAsRead,
    required TResult Function(String conversationId) pinSession,
    required TResult Function(String conversationId) unpinSession,
    required TResult Function(String conversationId) muteSession,
    required TResult Function(String conversationId) unmuteSession,
    required TResult Function(String conversationId) deleteSession,
    required TResult Function(FfiConversation message) newMessageReceived,
    required TResult Function(List<FfiConversation> messages)
    multipleMessagesReceived,
    required TResult Function(String conversationId) archiveSession,
    required TResult Function(String conversationId) unarchiveSession,
    required TResult Function() loadArchivedGroup,
  }) {
    return newMessageReceived(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSessions,
    TResult? Function()? loadSessionsWithArchived,
    TResult? Function()? refreshSessions,
    TResult? Function(String conversationId)? markSessionAsRead,
    TResult? Function(String conversationId)? pinSession,
    TResult? Function(String conversationId)? unpinSession,
    TResult? Function(String conversationId)? muteSession,
    TResult? Function(String conversationId)? unmuteSession,
    TResult? Function(String conversationId)? deleteSession,
    TResult? Function(FfiConversation message)? newMessageReceived,
    TResult? Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult? Function(String conversationId)? archiveSession,
    TResult? Function(String conversationId)? unarchiveSession,
    TResult? Function()? loadArchivedGroup,
  }) {
    return newMessageReceived?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSessions,
    TResult Function()? loadSessionsWithArchived,
    TResult Function()? refreshSessions,
    TResult Function(String conversationId)? markSessionAsRead,
    TResult Function(String conversationId)? pinSession,
    TResult Function(String conversationId)? unpinSession,
    TResult Function(String conversationId)? muteSession,
    TResult Function(String conversationId)? unmuteSession,
    TResult Function(String conversationId)? deleteSession,
    TResult Function(FfiConversation message)? newMessageReceived,
    TResult Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult Function(String conversationId)? archiveSession,
    TResult Function(String conversationId)? unarchiveSession,
    TResult Function()? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (newMessageReceived != null) {
      return newMessageReceived(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_LoadSessionsWithArchived value)
    loadSessionsWithArchived,
    required TResult Function(_RefreshSessions value) refreshSessions,
    required TResult Function(_MarkSessionAsRead value) markSessionAsRead,
    required TResult Function(_PinSession value) pinSession,
    required TResult Function(_UnpinSession value) unpinSession,
    required TResult Function(_MuteSession value) muteSession,
    required TResult Function(_UnmuteSession value) unmuteSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_ArchiveSession value) archiveSession,
    required TResult Function(_UnarchiveSession value) unarchiveSession,
    required TResult Function(_LoadArchivedGroup value) loadArchivedGroup,
  }) {
    return newMessageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_LoadSessionsWithArchived value)?
    loadSessionsWithArchived,
    TResult? Function(_RefreshSessions value)? refreshSessions,
    TResult? Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult? Function(_PinSession value)? pinSession,
    TResult? Function(_UnpinSession value)? unpinSession,
    TResult? Function(_MuteSession value)? muteSession,
    TResult? Function(_UnmuteSession value)? unmuteSession,
    TResult? Function(_DeleteSession value)? deleteSession,
    TResult? Function(_NewMessageReceived value)? newMessageReceived,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_ArchiveSession value)? archiveSession,
    TResult? Function(_UnarchiveSession value)? unarchiveSession,
    TResult? Function(_LoadArchivedGroup value)? loadArchivedGroup,
  }) {
    return newMessageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_LoadSessionsWithArchived value)? loadSessionsWithArchived,
    TResult Function(_RefreshSessions value)? refreshSessions,
    TResult Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult Function(_PinSession value)? pinSession,
    TResult Function(_UnpinSession value)? unpinSession,
    TResult Function(_MuteSession value)? muteSession,
    TResult Function(_UnmuteSession value)? unmuteSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_ArchiveSession value)? archiveSession,
    TResult Function(_UnarchiveSession value)? unarchiveSession,
    TResult Function(_LoadArchivedGroup value)? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (newMessageReceived != null) {
      return newMessageReceived(this);
    }
    return orElse();
  }
}

abstract class _NewMessageReceived implements ArchivedSessionsEvent {
  const factory _NewMessageReceived({required final FfiConversation message}) =
      _$NewMessageReceivedImpl;

  FfiConversation get message;

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewMessageReceivedImplCopyWith<_$NewMessageReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultipleMessagesReceivedImplCopyWith<$Res> {
  factory _$$MultipleMessagesReceivedImplCopyWith(
    _$MultipleMessagesReceivedImpl value,
    $Res Function(_$MultipleMessagesReceivedImpl) then,
  ) = __$$MultipleMessagesReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FfiConversation> messages});
}

/// @nodoc
class __$$MultipleMessagesReceivedImplCopyWithImpl<$Res>
    extends
        _$ArchivedSessionsEventCopyWithImpl<
          $Res,
          _$MultipleMessagesReceivedImpl
        >
    implements _$$MultipleMessagesReceivedImplCopyWith<$Res> {
  __$$MultipleMessagesReceivedImplCopyWithImpl(
    _$MultipleMessagesReceivedImpl _value,
    $Res Function(_$MultipleMessagesReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _$MultipleMessagesReceivedImpl(
        messages:
            null == messages
                ? _value._messages
                : messages // ignore: cast_nullable_to_non_nullable
                    as List<FfiConversation>,
      ),
    );
  }
}

/// @nodoc

class _$MultipleMessagesReceivedImpl implements _MultipleMessagesReceived {
  const _$MultipleMessagesReceivedImpl({
    required final List<FfiConversation> messages,
  }) : _messages = messages;

  final List<FfiConversation> _messages;
  @override
  List<FfiConversation> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ArchivedSessionsEvent.multipleMessagesReceived(messages: $messages)';
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

  /// Create a copy of ArchivedSessionsEvent
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
    required TResult Function() loadSessions,
    required TResult Function() loadSessionsWithArchived,
    required TResult Function() refreshSessions,
    required TResult Function(String conversationId) markSessionAsRead,
    required TResult Function(String conversationId) pinSession,
    required TResult Function(String conversationId) unpinSession,
    required TResult Function(String conversationId) muteSession,
    required TResult Function(String conversationId) unmuteSession,
    required TResult Function(String conversationId) deleteSession,
    required TResult Function(FfiConversation message) newMessageReceived,
    required TResult Function(List<FfiConversation> messages)
    multipleMessagesReceived,
    required TResult Function(String conversationId) archiveSession,
    required TResult Function(String conversationId) unarchiveSession,
    required TResult Function() loadArchivedGroup,
  }) {
    return multipleMessagesReceived(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSessions,
    TResult? Function()? loadSessionsWithArchived,
    TResult? Function()? refreshSessions,
    TResult? Function(String conversationId)? markSessionAsRead,
    TResult? Function(String conversationId)? pinSession,
    TResult? Function(String conversationId)? unpinSession,
    TResult? Function(String conversationId)? muteSession,
    TResult? Function(String conversationId)? unmuteSession,
    TResult? Function(String conversationId)? deleteSession,
    TResult? Function(FfiConversation message)? newMessageReceived,
    TResult? Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult? Function(String conversationId)? archiveSession,
    TResult? Function(String conversationId)? unarchiveSession,
    TResult? Function()? loadArchivedGroup,
  }) {
    return multipleMessagesReceived?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSessions,
    TResult Function()? loadSessionsWithArchived,
    TResult Function()? refreshSessions,
    TResult Function(String conversationId)? markSessionAsRead,
    TResult Function(String conversationId)? pinSession,
    TResult Function(String conversationId)? unpinSession,
    TResult Function(String conversationId)? muteSession,
    TResult Function(String conversationId)? unmuteSession,
    TResult Function(String conversationId)? deleteSession,
    TResult Function(FfiConversation message)? newMessageReceived,
    TResult Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult Function(String conversationId)? archiveSession,
    TResult Function(String conversationId)? unarchiveSession,
    TResult Function()? loadArchivedGroup,
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
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_LoadSessionsWithArchived value)
    loadSessionsWithArchived,
    required TResult Function(_RefreshSessions value) refreshSessions,
    required TResult Function(_MarkSessionAsRead value) markSessionAsRead,
    required TResult Function(_PinSession value) pinSession,
    required TResult Function(_UnpinSession value) unpinSession,
    required TResult Function(_MuteSession value) muteSession,
    required TResult Function(_UnmuteSession value) unmuteSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_ArchiveSession value) archiveSession,
    required TResult Function(_UnarchiveSession value) unarchiveSession,
    required TResult Function(_LoadArchivedGroup value) loadArchivedGroup,
  }) {
    return multipleMessagesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_LoadSessionsWithArchived value)?
    loadSessionsWithArchived,
    TResult? Function(_RefreshSessions value)? refreshSessions,
    TResult? Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult? Function(_PinSession value)? pinSession,
    TResult? Function(_UnpinSession value)? unpinSession,
    TResult? Function(_MuteSession value)? muteSession,
    TResult? Function(_UnmuteSession value)? unmuteSession,
    TResult? Function(_DeleteSession value)? deleteSession,
    TResult? Function(_NewMessageReceived value)? newMessageReceived,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_ArchiveSession value)? archiveSession,
    TResult? Function(_UnarchiveSession value)? unarchiveSession,
    TResult? Function(_LoadArchivedGroup value)? loadArchivedGroup,
  }) {
    return multipleMessagesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_LoadSessionsWithArchived value)? loadSessionsWithArchived,
    TResult Function(_RefreshSessions value)? refreshSessions,
    TResult Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult Function(_PinSession value)? pinSession,
    TResult Function(_UnpinSession value)? unpinSession,
    TResult Function(_MuteSession value)? muteSession,
    TResult Function(_UnmuteSession value)? unmuteSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_ArchiveSession value)? archiveSession,
    TResult Function(_UnarchiveSession value)? unarchiveSession,
    TResult Function(_LoadArchivedGroup value)? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (multipleMessagesReceived != null) {
      return multipleMessagesReceived(this);
    }
    return orElse();
  }
}

abstract class _MultipleMessagesReceived implements ArchivedSessionsEvent {
  const factory _MultipleMessagesReceived({
    required final List<FfiConversation> messages,
  }) = _$MultipleMessagesReceivedImpl;

  List<FfiConversation> get messages;

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultipleMessagesReceivedImplCopyWith<_$MultipleMessagesReceivedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArchiveSessionImplCopyWith<$Res> {
  factory _$$ArchiveSessionImplCopyWith(
    _$ArchiveSessionImpl value,
    $Res Function(_$ArchiveSessionImpl) then,
  ) = __$$ArchiveSessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$ArchiveSessionImplCopyWithImpl<$Res>
    extends _$ArchivedSessionsEventCopyWithImpl<$Res, _$ArchiveSessionImpl>
    implements _$$ArchiveSessionImplCopyWith<$Res> {
  __$$ArchiveSessionImplCopyWithImpl(
    _$ArchiveSessionImpl _value,
    $Res Function(_$ArchiveSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _$ArchiveSessionImpl(
        conversationId:
            null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$ArchiveSessionImpl implements _ArchiveSession {
  const _$ArchiveSessionImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ArchivedSessionsEvent.archiveSession(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArchiveSessionImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArchiveSessionImplCopyWith<_$ArchiveSessionImpl> get copyWith =>
      __$$ArchiveSessionImplCopyWithImpl<_$ArchiveSessionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSessions,
    required TResult Function() loadSessionsWithArchived,
    required TResult Function() refreshSessions,
    required TResult Function(String conversationId) markSessionAsRead,
    required TResult Function(String conversationId) pinSession,
    required TResult Function(String conversationId) unpinSession,
    required TResult Function(String conversationId) muteSession,
    required TResult Function(String conversationId) unmuteSession,
    required TResult Function(String conversationId) deleteSession,
    required TResult Function(FfiConversation message) newMessageReceived,
    required TResult Function(List<FfiConversation> messages)
    multipleMessagesReceived,
    required TResult Function(String conversationId) archiveSession,
    required TResult Function(String conversationId) unarchiveSession,
    required TResult Function() loadArchivedGroup,
  }) {
    return archiveSession(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSessions,
    TResult? Function()? loadSessionsWithArchived,
    TResult? Function()? refreshSessions,
    TResult? Function(String conversationId)? markSessionAsRead,
    TResult? Function(String conversationId)? pinSession,
    TResult? Function(String conversationId)? unpinSession,
    TResult? Function(String conversationId)? muteSession,
    TResult? Function(String conversationId)? unmuteSession,
    TResult? Function(String conversationId)? deleteSession,
    TResult? Function(FfiConversation message)? newMessageReceived,
    TResult? Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult? Function(String conversationId)? archiveSession,
    TResult? Function(String conversationId)? unarchiveSession,
    TResult? Function()? loadArchivedGroup,
  }) {
    return archiveSession?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSessions,
    TResult Function()? loadSessionsWithArchived,
    TResult Function()? refreshSessions,
    TResult Function(String conversationId)? markSessionAsRead,
    TResult Function(String conversationId)? pinSession,
    TResult Function(String conversationId)? unpinSession,
    TResult Function(String conversationId)? muteSession,
    TResult Function(String conversationId)? unmuteSession,
    TResult Function(String conversationId)? deleteSession,
    TResult Function(FfiConversation message)? newMessageReceived,
    TResult Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult Function(String conversationId)? archiveSession,
    TResult Function(String conversationId)? unarchiveSession,
    TResult Function()? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (archiveSession != null) {
      return archiveSession(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_LoadSessionsWithArchived value)
    loadSessionsWithArchived,
    required TResult Function(_RefreshSessions value) refreshSessions,
    required TResult Function(_MarkSessionAsRead value) markSessionAsRead,
    required TResult Function(_PinSession value) pinSession,
    required TResult Function(_UnpinSession value) unpinSession,
    required TResult Function(_MuteSession value) muteSession,
    required TResult Function(_UnmuteSession value) unmuteSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_ArchiveSession value) archiveSession,
    required TResult Function(_UnarchiveSession value) unarchiveSession,
    required TResult Function(_LoadArchivedGroup value) loadArchivedGroup,
  }) {
    return archiveSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_LoadSessionsWithArchived value)?
    loadSessionsWithArchived,
    TResult? Function(_RefreshSessions value)? refreshSessions,
    TResult? Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult? Function(_PinSession value)? pinSession,
    TResult? Function(_UnpinSession value)? unpinSession,
    TResult? Function(_MuteSession value)? muteSession,
    TResult? Function(_UnmuteSession value)? unmuteSession,
    TResult? Function(_DeleteSession value)? deleteSession,
    TResult? Function(_NewMessageReceived value)? newMessageReceived,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_ArchiveSession value)? archiveSession,
    TResult? Function(_UnarchiveSession value)? unarchiveSession,
    TResult? Function(_LoadArchivedGroup value)? loadArchivedGroup,
  }) {
    return archiveSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_LoadSessionsWithArchived value)? loadSessionsWithArchived,
    TResult Function(_RefreshSessions value)? refreshSessions,
    TResult Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult Function(_PinSession value)? pinSession,
    TResult Function(_UnpinSession value)? unpinSession,
    TResult Function(_MuteSession value)? muteSession,
    TResult Function(_UnmuteSession value)? unmuteSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_ArchiveSession value)? archiveSession,
    TResult Function(_UnarchiveSession value)? unarchiveSession,
    TResult Function(_LoadArchivedGroup value)? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (archiveSession != null) {
      return archiveSession(this);
    }
    return orElse();
  }
}

abstract class _ArchiveSession implements ArchivedSessionsEvent {
  const factory _ArchiveSession({required final String conversationId}) =
      _$ArchiveSessionImpl;

  String get conversationId;

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArchiveSessionImplCopyWith<_$ArchiveSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnarchiveSessionImplCopyWith<$Res> {
  factory _$$UnarchiveSessionImplCopyWith(
    _$UnarchiveSessionImpl value,
    $Res Function(_$UnarchiveSessionImpl) then,
  ) = __$$UnarchiveSessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$UnarchiveSessionImplCopyWithImpl<$Res>
    extends _$ArchivedSessionsEventCopyWithImpl<$Res, _$UnarchiveSessionImpl>
    implements _$$UnarchiveSessionImplCopyWith<$Res> {
  __$$UnarchiveSessionImplCopyWithImpl(
    _$UnarchiveSessionImpl _value,
    $Res Function(_$UnarchiveSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _$UnarchiveSessionImpl(
        conversationId:
            null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$UnarchiveSessionImpl implements _UnarchiveSession {
  const _$UnarchiveSessionImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ArchivedSessionsEvent.unarchiveSession(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnarchiveSessionImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnarchiveSessionImplCopyWith<_$UnarchiveSessionImpl> get copyWith =>
      __$$UnarchiveSessionImplCopyWithImpl<_$UnarchiveSessionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSessions,
    required TResult Function() loadSessionsWithArchived,
    required TResult Function() refreshSessions,
    required TResult Function(String conversationId) markSessionAsRead,
    required TResult Function(String conversationId) pinSession,
    required TResult Function(String conversationId) unpinSession,
    required TResult Function(String conversationId) muteSession,
    required TResult Function(String conversationId) unmuteSession,
    required TResult Function(String conversationId) deleteSession,
    required TResult Function(FfiConversation message) newMessageReceived,
    required TResult Function(List<FfiConversation> messages)
    multipleMessagesReceived,
    required TResult Function(String conversationId) archiveSession,
    required TResult Function(String conversationId) unarchiveSession,
    required TResult Function() loadArchivedGroup,
  }) {
    return unarchiveSession(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSessions,
    TResult? Function()? loadSessionsWithArchived,
    TResult? Function()? refreshSessions,
    TResult? Function(String conversationId)? markSessionAsRead,
    TResult? Function(String conversationId)? pinSession,
    TResult? Function(String conversationId)? unpinSession,
    TResult? Function(String conversationId)? muteSession,
    TResult? Function(String conversationId)? unmuteSession,
    TResult? Function(String conversationId)? deleteSession,
    TResult? Function(FfiConversation message)? newMessageReceived,
    TResult? Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult? Function(String conversationId)? archiveSession,
    TResult? Function(String conversationId)? unarchiveSession,
    TResult? Function()? loadArchivedGroup,
  }) {
    return unarchiveSession?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSessions,
    TResult Function()? loadSessionsWithArchived,
    TResult Function()? refreshSessions,
    TResult Function(String conversationId)? markSessionAsRead,
    TResult Function(String conversationId)? pinSession,
    TResult Function(String conversationId)? unpinSession,
    TResult Function(String conversationId)? muteSession,
    TResult Function(String conversationId)? unmuteSession,
    TResult Function(String conversationId)? deleteSession,
    TResult Function(FfiConversation message)? newMessageReceived,
    TResult Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult Function(String conversationId)? archiveSession,
    TResult Function(String conversationId)? unarchiveSession,
    TResult Function()? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (unarchiveSession != null) {
      return unarchiveSession(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_LoadSessionsWithArchived value)
    loadSessionsWithArchived,
    required TResult Function(_RefreshSessions value) refreshSessions,
    required TResult Function(_MarkSessionAsRead value) markSessionAsRead,
    required TResult Function(_PinSession value) pinSession,
    required TResult Function(_UnpinSession value) unpinSession,
    required TResult Function(_MuteSession value) muteSession,
    required TResult Function(_UnmuteSession value) unmuteSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_ArchiveSession value) archiveSession,
    required TResult Function(_UnarchiveSession value) unarchiveSession,
    required TResult Function(_LoadArchivedGroup value) loadArchivedGroup,
  }) {
    return unarchiveSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_LoadSessionsWithArchived value)?
    loadSessionsWithArchived,
    TResult? Function(_RefreshSessions value)? refreshSessions,
    TResult? Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult? Function(_PinSession value)? pinSession,
    TResult? Function(_UnpinSession value)? unpinSession,
    TResult? Function(_MuteSession value)? muteSession,
    TResult? Function(_UnmuteSession value)? unmuteSession,
    TResult? Function(_DeleteSession value)? deleteSession,
    TResult? Function(_NewMessageReceived value)? newMessageReceived,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_ArchiveSession value)? archiveSession,
    TResult? Function(_UnarchiveSession value)? unarchiveSession,
    TResult? Function(_LoadArchivedGroup value)? loadArchivedGroup,
  }) {
    return unarchiveSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_LoadSessionsWithArchived value)? loadSessionsWithArchived,
    TResult Function(_RefreshSessions value)? refreshSessions,
    TResult Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult Function(_PinSession value)? pinSession,
    TResult Function(_UnpinSession value)? unpinSession,
    TResult Function(_MuteSession value)? muteSession,
    TResult Function(_UnmuteSession value)? unmuteSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_ArchiveSession value)? archiveSession,
    TResult Function(_UnarchiveSession value)? unarchiveSession,
    TResult Function(_LoadArchivedGroup value)? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (unarchiveSession != null) {
      return unarchiveSession(this);
    }
    return orElse();
  }
}

abstract class _UnarchiveSession implements ArchivedSessionsEvent {
  const factory _UnarchiveSession({required final String conversationId}) =
      _$UnarchiveSessionImpl;

  String get conversationId;

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnarchiveSessionImplCopyWith<_$UnarchiveSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadArchivedGroupImplCopyWith<$Res> {
  factory _$$LoadArchivedGroupImplCopyWith(
    _$LoadArchivedGroupImpl value,
    $Res Function(_$LoadArchivedGroupImpl) then,
  ) = __$$LoadArchivedGroupImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadArchivedGroupImplCopyWithImpl<$Res>
    extends _$ArchivedSessionsEventCopyWithImpl<$Res, _$LoadArchivedGroupImpl>
    implements _$$LoadArchivedGroupImplCopyWith<$Res> {
  __$$LoadArchivedGroupImplCopyWithImpl(
    _$LoadArchivedGroupImpl _value,
    $Res Function(_$LoadArchivedGroupImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArchivedSessionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadArchivedGroupImpl implements _LoadArchivedGroup {
  const _$LoadArchivedGroupImpl();

  @override
  String toString() {
    return 'ArchivedSessionsEvent.loadArchivedGroup()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadArchivedGroupImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSessions,
    required TResult Function() loadSessionsWithArchived,
    required TResult Function() refreshSessions,
    required TResult Function(String conversationId) markSessionAsRead,
    required TResult Function(String conversationId) pinSession,
    required TResult Function(String conversationId) unpinSession,
    required TResult Function(String conversationId) muteSession,
    required TResult Function(String conversationId) unmuteSession,
    required TResult Function(String conversationId) deleteSession,
    required TResult Function(FfiConversation message) newMessageReceived,
    required TResult Function(List<FfiConversation> messages)
    multipleMessagesReceived,
    required TResult Function(String conversationId) archiveSession,
    required TResult Function(String conversationId) unarchiveSession,
    required TResult Function() loadArchivedGroup,
  }) {
    return loadArchivedGroup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSessions,
    TResult? Function()? loadSessionsWithArchived,
    TResult? Function()? refreshSessions,
    TResult? Function(String conversationId)? markSessionAsRead,
    TResult? Function(String conversationId)? pinSession,
    TResult? Function(String conversationId)? unpinSession,
    TResult? Function(String conversationId)? muteSession,
    TResult? Function(String conversationId)? unmuteSession,
    TResult? Function(String conversationId)? deleteSession,
    TResult? Function(FfiConversation message)? newMessageReceived,
    TResult? Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult? Function(String conversationId)? archiveSession,
    TResult? Function(String conversationId)? unarchiveSession,
    TResult? Function()? loadArchivedGroup,
  }) {
    return loadArchivedGroup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSessions,
    TResult Function()? loadSessionsWithArchived,
    TResult Function()? refreshSessions,
    TResult Function(String conversationId)? markSessionAsRead,
    TResult Function(String conversationId)? pinSession,
    TResult Function(String conversationId)? unpinSession,
    TResult Function(String conversationId)? muteSession,
    TResult Function(String conversationId)? unmuteSession,
    TResult Function(String conversationId)? deleteSession,
    TResult Function(FfiConversation message)? newMessageReceived,
    TResult Function(List<FfiConversation> messages)? multipleMessagesReceived,
    TResult Function(String conversationId)? archiveSession,
    TResult Function(String conversationId)? unarchiveSession,
    TResult Function()? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (loadArchivedGroup != null) {
      return loadArchivedGroup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_LoadSessionsWithArchived value)
    loadSessionsWithArchived,
    required TResult Function(_RefreshSessions value) refreshSessions,
    required TResult Function(_MarkSessionAsRead value) markSessionAsRead,
    required TResult Function(_PinSession value) pinSession,
    required TResult Function(_UnpinSession value) unpinSession,
    required TResult Function(_MuteSession value) muteSession,
    required TResult Function(_UnmuteSession value) unmuteSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
    required TResult Function(_MultipleMessagesReceived value)
    multipleMessagesReceived,
    required TResult Function(_ArchiveSession value) archiveSession,
    required TResult Function(_UnarchiveSession value) unarchiveSession,
    required TResult Function(_LoadArchivedGroup value) loadArchivedGroup,
  }) {
    return loadArchivedGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_LoadSessionsWithArchived value)?
    loadSessionsWithArchived,
    TResult? Function(_RefreshSessions value)? refreshSessions,
    TResult? Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult? Function(_PinSession value)? pinSession,
    TResult? Function(_UnpinSession value)? unpinSession,
    TResult? Function(_MuteSession value)? muteSession,
    TResult? Function(_UnmuteSession value)? unmuteSession,
    TResult? Function(_DeleteSession value)? deleteSession,
    TResult? Function(_NewMessageReceived value)? newMessageReceived,
    TResult? Function(_MultipleMessagesReceived value)?
    multipleMessagesReceived,
    TResult? Function(_ArchiveSession value)? archiveSession,
    TResult? Function(_UnarchiveSession value)? unarchiveSession,
    TResult? Function(_LoadArchivedGroup value)? loadArchivedGroup,
  }) {
    return loadArchivedGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_LoadSessionsWithArchived value)? loadSessionsWithArchived,
    TResult Function(_RefreshSessions value)? refreshSessions,
    TResult Function(_MarkSessionAsRead value)? markSessionAsRead,
    TResult Function(_PinSession value)? pinSession,
    TResult Function(_UnpinSession value)? unpinSession,
    TResult Function(_MuteSession value)? muteSession,
    TResult Function(_UnmuteSession value)? unmuteSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    TResult Function(_MultipleMessagesReceived value)? multipleMessagesReceived,
    TResult Function(_ArchiveSession value)? archiveSession,
    TResult Function(_UnarchiveSession value)? unarchiveSession,
    TResult Function(_LoadArchivedGroup value)? loadArchivedGroup,
    required TResult orElse(),
  }) {
    if (loadArchivedGroup != null) {
      return loadArchivedGroup(this);
    }
    return orElse();
  }
}

abstract class _LoadArchivedGroup implements ArchivedSessionsEvent {
  const factory _LoadArchivedGroup() = _$LoadArchivedGroupImpl;
}
