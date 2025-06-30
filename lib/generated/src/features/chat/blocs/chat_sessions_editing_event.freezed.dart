// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/features/chat/blocs/chat_sessions_editing_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatSessionsEditingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )
    loadSessions,
    required TResult Function(String conversationId) toggleSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() markSelectedAsRead,
    required TResult Function() deleteSelected,
    required TResult Function() unarchiveSelected,
    required TResult Function(String query) updateSearchQuery,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult? Function(String conversationId)? toggleSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? markSelectedAsRead,
    TResult? Function()? deleteSelected,
    TResult? Function()? unarchiveSelected,
    TResult? Function(String query)? updateSearchQuery,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult Function(String conversationId)? toggleSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? markSelectedAsRead,
    TResult Function()? deleteSelected,
    TResult Function()? unarchiveSelected,
    TResult Function(String query)? updateSearchQuery,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_ToggleSelection value) toggleSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_MarkSelectedAsRead value) markSelectedAsRead,
    required TResult Function(_DeleteSelected value) deleteSelected,
    required TResult Function(_UnarchiveSelected value) unarchiveSelected,
    required TResult Function(_UpdateSearchQuery value) updateSearchQuery,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_ToggleSelection value)? toggleSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult? Function(_DeleteSelected value)? deleteSelected,
    TResult? Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult? Function(_UpdateSearchQuery value)? updateSearchQuery,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_ToggleSelection value)? toggleSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult Function(_DeleteSelected value)? deleteSelected,
    TResult Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult Function(_UpdateSearchQuery value)? updateSearchQuery,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSessionsEditingEventCopyWith<$Res> {
  factory $ChatSessionsEditingEventCopyWith(
    ChatSessionsEditingEvent value,
    $Res Function(ChatSessionsEditingEvent) then,
  ) = _$ChatSessionsEditingEventCopyWithImpl<$Res, ChatSessionsEditingEvent>;
}

/// @nodoc
class _$ChatSessionsEditingEventCopyWithImpl<
  $Res,
  $Val extends ChatSessionsEditingEvent
>
    implements $ChatSessionsEditingEventCopyWith<$Res> {
  _$ChatSessionsEditingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatSessionsEditingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadSessionsImplCopyWith<$Res> {
  factory _$$LoadSessionsImplCopyWith(
    _$LoadSessionsImpl value,
    $Res Function(_$LoadSessionsImpl) then,
  ) = __$$LoadSessionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FfiConversation> sessions, List<String> initialSelectedIds});
}

/// @nodoc
class __$$LoadSessionsImplCopyWithImpl<$Res>
    extends _$ChatSessionsEditingEventCopyWithImpl<$Res, _$LoadSessionsImpl>
    implements _$$LoadSessionsImplCopyWith<$Res> {
  __$$LoadSessionsImplCopyWithImpl(
    _$LoadSessionsImpl _value,
    $Res Function(_$LoadSessionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionsEditingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sessions = null, Object? initialSelectedIds = null}) {
    return _then(
      _$LoadSessionsImpl(
        sessions:
            null == sessions
                ? _value._sessions
                : sessions // ignore: cast_nullable_to_non_nullable
                    as List<FfiConversation>,
        initialSelectedIds:
            null == initialSelectedIds
                ? _value._initialSelectedIds
                : initialSelectedIds // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$LoadSessionsImpl implements _LoadSessions {
  const _$LoadSessionsImpl({
    required final List<FfiConversation> sessions,
    final List<String> initialSelectedIds = const [],
  }) : _sessions = sessions,
       _initialSelectedIds = initialSelectedIds;

  final List<FfiConversation> _sessions;
  @override
  List<FfiConversation> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  final List<String> _initialSelectedIds;
  @override
  @JsonKey()
  List<String> get initialSelectedIds {
    if (_initialSelectedIds is EqualUnmodifiableListView)
      return _initialSelectedIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_initialSelectedIds);
  }

  @override
  String toString() {
    return 'ChatSessionsEditingEvent.loadSessions(sessions: $sessions, initialSelectedIds: $initialSelectedIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSessionsImpl &&
            const DeepCollectionEquality().equals(other._sessions, _sessions) &&
            const DeepCollectionEquality().equals(
              other._initialSelectedIds,
              _initialSelectedIds,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_sessions),
    const DeepCollectionEquality().hash(_initialSelectedIds),
  );

  /// Create a copy of ChatSessionsEditingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSessionsImplCopyWith<_$LoadSessionsImpl> get copyWith =>
      __$$LoadSessionsImplCopyWithImpl<_$LoadSessionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )
    loadSessions,
    required TResult Function(String conversationId) toggleSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() markSelectedAsRead,
    required TResult Function() deleteSelected,
    required TResult Function() unarchiveSelected,
    required TResult Function(String query) updateSearchQuery,
  }) {
    return loadSessions(sessions, initialSelectedIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult? Function(String conversationId)? toggleSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? markSelectedAsRead,
    TResult? Function()? deleteSelected,
    TResult? Function()? unarchiveSelected,
    TResult? Function(String query)? updateSearchQuery,
  }) {
    return loadSessions?.call(sessions, initialSelectedIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult Function(String conversationId)? toggleSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? markSelectedAsRead,
    TResult Function()? deleteSelected,
    TResult Function()? unarchiveSelected,
    TResult Function(String query)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (loadSessions != null) {
      return loadSessions(sessions, initialSelectedIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_ToggleSelection value) toggleSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_MarkSelectedAsRead value) markSelectedAsRead,
    required TResult Function(_DeleteSelected value) deleteSelected,
    required TResult Function(_UnarchiveSelected value) unarchiveSelected,
    required TResult Function(_UpdateSearchQuery value) updateSearchQuery,
  }) {
    return loadSessions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_ToggleSelection value)? toggleSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult? Function(_DeleteSelected value)? deleteSelected,
    TResult? Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult? Function(_UpdateSearchQuery value)? updateSearchQuery,
  }) {
    return loadSessions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_ToggleSelection value)? toggleSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult Function(_DeleteSelected value)? deleteSelected,
    TResult Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult Function(_UpdateSearchQuery value)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (loadSessions != null) {
      return loadSessions(this);
    }
    return orElse();
  }
}

abstract class _LoadSessions implements ChatSessionsEditingEvent {
  const factory _LoadSessions({
    required final List<FfiConversation> sessions,
    final List<String> initialSelectedIds,
  }) = _$LoadSessionsImpl;

  List<FfiConversation> get sessions;
  List<String> get initialSelectedIds;

  /// Create a copy of ChatSessionsEditingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSessionsImplCopyWith<_$LoadSessionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleSelectionImplCopyWith<$Res> {
  factory _$$ToggleSelectionImplCopyWith(
    _$ToggleSelectionImpl value,
    $Res Function(_$ToggleSelectionImpl) then,
  ) = __$$ToggleSelectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$ToggleSelectionImplCopyWithImpl<$Res>
    extends _$ChatSessionsEditingEventCopyWithImpl<$Res, _$ToggleSelectionImpl>
    implements _$$ToggleSelectionImplCopyWith<$Res> {
  __$$ToggleSelectionImplCopyWithImpl(
    _$ToggleSelectionImpl _value,
    $Res Function(_$ToggleSelectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionsEditingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _$ToggleSelectionImpl(
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

class _$ToggleSelectionImpl implements _ToggleSelection {
  const _$ToggleSelectionImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'ChatSessionsEditingEvent.toggleSelection(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleSelectionImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of ChatSessionsEditingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleSelectionImplCopyWith<_$ToggleSelectionImpl> get copyWith =>
      __$$ToggleSelectionImplCopyWithImpl<_$ToggleSelectionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )
    loadSessions,
    required TResult Function(String conversationId) toggleSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() markSelectedAsRead,
    required TResult Function() deleteSelected,
    required TResult Function() unarchiveSelected,
    required TResult Function(String query) updateSearchQuery,
  }) {
    return toggleSelection(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult? Function(String conversationId)? toggleSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? markSelectedAsRead,
    TResult? Function()? deleteSelected,
    TResult? Function()? unarchiveSelected,
    TResult? Function(String query)? updateSearchQuery,
  }) {
    return toggleSelection?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult Function(String conversationId)? toggleSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? markSelectedAsRead,
    TResult Function()? deleteSelected,
    TResult Function()? unarchiveSelected,
    TResult Function(String query)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (toggleSelection != null) {
      return toggleSelection(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_ToggleSelection value) toggleSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_MarkSelectedAsRead value) markSelectedAsRead,
    required TResult Function(_DeleteSelected value) deleteSelected,
    required TResult Function(_UnarchiveSelected value) unarchiveSelected,
    required TResult Function(_UpdateSearchQuery value) updateSearchQuery,
  }) {
    return toggleSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_ToggleSelection value)? toggleSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult? Function(_DeleteSelected value)? deleteSelected,
    TResult? Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult? Function(_UpdateSearchQuery value)? updateSearchQuery,
  }) {
    return toggleSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_ToggleSelection value)? toggleSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult Function(_DeleteSelected value)? deleteSelected,
    TResult Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult Function(_UpdateSearchQuery value)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (toggleSelection != null) {
      return toggleSelection(this);
    }
    return orElse();
  }
}

abstract class _ToggleSelection implements ChatSessionsEditingEvent {
  const factory _ToggleSelection({required final String conversationId}) =
      _$ToggleSelectionImpl;

  String get conversationId;

  /// Create a copy of ChatSessionsEditingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleSelectionImplCopyWith<_$ToggleSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAllImplCopyWith<$Res> {
  factory _$$SelectAllImplCopyWith(
    _$SelectAllImpl value,
    $Res Function(_$SelectAllImpl) then,
  ) = __$$SelectAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectAllImplCopyWithImpl<$Res>
    extends _$ChatSessionsEditingEventCopyWithImpl<$Res, _$SelectAllImpl>
    implements _$$SelectAllImplCopyWith<$Res> {
  __$$SelectAllImplCopyWithImpl(
    _$SelectAllImpl _value,
    $Res Function(_$SelectAllImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionsEditingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SelectAllImpl implements _SelectAll {
  const _$SelectAllImpl();

  @override
  String toString() {
    return 'ChatSessionsEditingEvent.selectAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )
    loadSessions,
    required TResult Function(String conversationId) toggleSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() markSelectedAsRead,
    required TResult Function() deleteSelected,
    required TResult Function() unarchiveSelected,
    required TResult Function(String query) updateSearchQuery,
  }) {
    return selectAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult? Function(String conversationId)? toggleSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? markSelectedAsRead,
    TResult? Function()? deleteSelected,
    TResult? Function()? unarchiveSelected,
    TResult? Function(String query)? updateSearchQuery,
  }) {
    return selectAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult Function(String conversationId)? toggleSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? markSelectedAsRead,
    TResult Function()? deleteSelected,
    TResult Function()? unarchiveSelected,
    TResult Function(String query)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (selectAll != null) {
      return selectAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_ToggleSelection value) toggleSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_MarkSelectedAsRead value) markSelectedAsRead,
    required TResult Function(_DeleteSelected value) deleteSelected,
    required TResult Function(_UnarchiveSelected value) unarchiveSelected,
    required TResult Function(_UpdateSearchQuery value) updateSearchQuery,
  }) {
    return selectAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_ToggleSelection value)? toggleSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult? Function(_DeleteSelected value)? deleteSelected,
    TResult? Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult? Function(_UpdateSearchQuery value)? updateSearchQuery,
  }) {
    return selectAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_ToggleSelection value)? toggleSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult Function(_DeleteSelected value)? deleteSelected,
    TResult Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult Function(_UpdateSearchQuery value)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (selectAll != null) {
      return selectAll(this);
    }
    return orElse();
  }
}

abstract class _SelectAll implements ChatSessionsEditingEvent {
  const factory _SelectAll() = _$SelectAllImpl;
}

/// @nodoc
abstract class _$$DeselectAllImplCopyWith<$Res> {
  factory _$$DeselectAllImplCopyWith(
    _$DeselectAllImpl value,
    $Res Function(_$DeselectAllImpl) then,
  ) = __$$DeselectAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeselectAllImplCopyWithImpl<$Res>
    extends _$ChatSessionsEditingEventCopyWithImpl<$Res, _$DeselectAllImpl>
    implements _$$DeselectAllImplCopyWith<$Res> {
  __$$DeselectAllImplCopyWithImpl(
    _$DeselectAllImpl _value,
    $Res Function(_$DeselectAllImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionsEditingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeselectAllImpl implements _DeselectAll {
  const _$DeselectAllImpl();

  @override
  String toString() {
    return 'ChatSessionsEditingEvent.deselectAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeselectAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )
    loadSessions,
    required TResult Function(String conversationId) toggleSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() markSelectedAsRead,
    required TResult Function() deleteSelected,
    required TResult Function() unarchiveSelected,
    required TResult Function(String query) updateSearchQuery,
  }) {
    return deselectAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult? Function(String conversationId)? toggleSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? markSelectedAsRead,
    TResult? Function()? deleteSelected,
    TResult? Function()? unarchiveSelected,
    TResult? Function(String query)? updateSearchQuery,
  }) {
    return deselectAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult Function(String conversationId)? toggleSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? markSelectedAsRead,
    TResult Function()? deleteSelected,
    TResult Function()? unarchiveSelected,
    TResult Function(String query)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (deselectAll != null) {
      return deselectAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_ToggleSelection value) toggleSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_MarkSelectedAsRead value) markSelectedAsRead,
    required TResult Function(_DeleteSelected value) deleteSelected,
    required TResult Function(_UnarchiveSelected value) unarchiveSelected,
    required TResult Function(_UpdateSearchQuery value) updateSearchQuery,
  }) {
    return deselectAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_ToggleSelection value)? toggleSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult? Function(_DeleteSelected value)? deleteSelected,
    TResult? Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult? Function(_UpdateSearchQuery value)? updateSearchQuery,
  }) {
    return deselectAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_ToggleSelection value)? toggleSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult Function(_DeleteSelected value)? deleteSelected,
    TResult Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult Function(_UpdateSearchQuery value)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (deselectAll != null) {
      return deselectAll(this);
    }
    return orElse();
  }
}

abstract class _DeselectAll implements ChatSessionsEditingEvent {
  const factory _DeselectAll() = _$DeselectAllImpl;
}

/// @nodoc
abstract class _$$MarkSelectedAsReadImplCopyWith<$Res> {
  factory _$$MarkSelectedAsReadImplCopyWith(
    _$MarkSelectedAsReadImpl value,
    $Res Function(_$MarkSelectedAsReadImpl) then,
  ) = __$$MarkSelectedAsReadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkSelectedAsReadImplCopyWithImpl<$Res>
    extends
        _$ChatSessionsEditingEventCopyWithImpl<$Res, _$MarkSelectedAsReadImpl>
    implements _$$MarkSelectedAsReadImplCopyWith<$Res> {
  __$$MarkSelectedAsReadImplCopyWithImpl(
    _$MarkSelectedAsReadImpl _value,
    $Res Function(_$MarkSelectedAsReadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionsEditingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MarkSelectedAsReadImpl implements _MarkSelectedAsRead {
  const _$MarkSelectedAsReadImpl();

  @override
  String toString() {
    return 'ChatSessionsEditingEvent.markSelectedAsRead()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MarkSelectedAsReadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )
    loadSessions,
    required TResult Function(String conversationId) toggleSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() markSelectedAsRead,
    required TResult Function() deleteSelected,
    required TResult Function() unarchiveSelected,
    required TResult Function(String query) updateSearchQuery,
  }) {
    return markSelectedAsRead();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult? Function(String conversationId)? toggleSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? markSelectedAsRead,
    TResult? Function()? deleteSelected,
    TResult? Function()? unarchiveSelected,
    TResult? Function(String query)? updateSearchQuery,
  }) {
    return markSelectedAsRead?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult Function(String conversationId)? toggleSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? markSelectedAsRead,
    TResult Function()? deleteSelected,
    TResult Function()? unarchiveSelected,
    TResult Function(String query)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (markSelectedAsRead != null) {
      return markSelectedAsRead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_ToggleSelection value) toggleSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_MarkSelectedAsRead value) markSelectedAsRead,
    required TResult Function(_DeleteSelected value) deleteSelected,
    required TResult Function(_UnarchiveSelected value) unarchiveSelected,
    required TResult Function(_UpdateSearchQuery value) updateSearchQuery,
  }) {
    return markSelectedAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_ToggleSelection value)? toggleSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult? Function(_DeleteSelected value)? deleteSelected,
    TResult? Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult? Function(_UpdateSearchQuery value)? updateSearchQuery,
  }) {
    return markSelectedAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_ToggleSelection value)? toggleSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult Function(_DeleteSelected value)? deleteSelected,
    TResult Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult Function(_UpdateSearchQuery value)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (markSelectedAsRead != null) {
      return markSelectedAsRead(this);
    }
    return orElse();
  }
}

abstract class _MarkSelectedAsRead implements ChatSessionsEditingEvent {
  const factory _MarkSelectedAsRead() = _$MarkSelectedAsReadImpl;
}

/// @nodoc
abstract class _$$DeleteSelectedImplCopyWith<$Res> {
  factory _$$DeleteSelectedImplCopyWith(
    _$DeleteSelectedImpl value,
    $Res Function(_$DeleteSelectedImpl) then,
  ) = __$$DeleteSelectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteSelectedImplCopyWithImpl<$Res>
    extends _$ChatSessionsEditingEventCopyWithImpl<$Res, _$DeleteSelectedImpl>
    implements _$$DeleteSelectedImplCopyWith<$Res> {
  __$$DeleteSelectedImplCopyWithImpl(
    _$DeleteSelectedImpl _value,
    $Res Function(_$DeleteSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionsEditingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteSelectedImpl implements _DeleteSelected {
  const _$DeleteSelectedImpl();

  @override
  String toString() {
    return 'ChatSessionsEditingEvent.deleteSelected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteSelectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )
    loadSessions,
    required TResult Function(String conversationId) toggleSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() markSelectedAsRead,
    required TResult Function() deleteSelected,
    required TResult Function() unarchiveSelected,
    required TResult Function(String query) updateSearchQuery,
  }) {
    return deleteSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult? Function(String conversationId)? toggleSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? markSelectedAsRead,
    TResult? Function()? deleteSelected,
    TResult? Function()? unarchiveSelected,
    TResult? Function(String query)? updateSearchQuery,
  }) {
    return deleteSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult Function(String conversationId)? toggleSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? markSelectedAsRead,
    TResult Function()? deleteSelected,
    TResult Function()? unarchiveSelected,
    TResult Function(String query)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (deleteSelected != null) {
      return deleteSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_ToggleSelection value) toggleSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_MarkSelectedAsRead value) markSelectedAsRead,
    required TResult Function(_DeleteSelected value) deleteSelected,
    required TResult Function(_UnarchiveSelected value) unarchiveSelected,
    required TResult Function(_UpdateSearchQuery value) updateSearchQuery,
  }) {
    return deleteSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_ToggleSelection value)? toggleSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult? Function(_DeleteSelected value)? deleteSelected,
    TResult? Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult? Function(_UpdateSearchQuery value)? updateSearchQuery,
  }) {
    return deleteSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_ToggleSelection value)? toggleSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult Function(_DeleteSelected value)? deleteSelected,
    TResult Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult Function(_UpdateSearchQuery value)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (deleteSelected != null) {
      return deleteSelected(this);
    }
    return orElse();
  }
}

abstract class _DeleteSelected implements ChatSessionsEditingEvent {
  const factory _DeleteSelected() = _$DeleteSelectedImpl;
}

/// @nodoc
abstract class _$$UnarchiveSelectedImplCopyWith<$Res> {
  factory _$$UnarchiveSelectedImplCopyWith(
    _$UnarchiveSelectedImpl value,
    $Res Function(_$UnarchiveSelectedImpl) then,
  ) = __$$UnarchiveSelectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnarchiveSelectedImplCopyWithImpl<$Res>
    extends
        _$ChatSessionsEditingEventCopyWithImpl<$Res, _$UnarchiveSelectedImpl>
    implements _$$UnarchiveSelectedImplCopyWith<$Res> {
  __$$UnarchiveSelectedImplCopyWithImpl(
    _$UnarchiveSelectedImpl _value,
    $Res Function(_$UnarchiveSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionsEditingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnarchiveSelectedImpl implements _UnarchiveSelected {
  const _$UnarchiveSelectedImpl();

  @override
  String toString() {
    return 'ChatSessionsEditingEvent.unarchiveSelected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnarchiveSelectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )
    loadSessions,
    required TResult Function(String conversationId) toggleSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() markSelectedAsRead,
    required TResult Function() deleteSelected,
    required TResult Function() unarchiveSelected,
    required TResult Function(String query) updateSearchQuery,
  }) {
    return unarchiveSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult? Function(String conversationId)? toggleSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? markSelectedAsRead,
    TResult? Function()? deleteSelected,
    TResult? Function()? unarchiveSelected,
    TResult? Function(String query)? updateSearchQuery,
  }) {
    return unarchiveSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult Function(String conversationId)? toggleSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? markSelectedAsRead,
    TResult Function()? deleteSelected,
    TResult Function()? unarchiveSelected,
    TResult Function(String query)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (unarchiveSelected != null) {
      return unarchiveSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_ToggleSelection value) toggleSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_MarkSelectedAsRead value) markSelectedAsRead,
    required TResult Function(_DeleteSelected value) deleteSelected,
    required TResult Function(_UnarchiveSelected value) unarchiveSelected,
    required TResult Function(_UpdateSearchQuery value) updateSearchQuery,
  }) {
    return unarchiveSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_ToggleSelection value)? toggleSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult? Function(_DeleteSelected value)? deleteSelected,
    TResult? Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult? Function(_UpdateSearchQuery value)? updateSearchQuery,
  }) {
    return unarchiveSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_ToggleSelection value)? toggleSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult Function(_DeleteSelected value)? deleteSelected,
    TResult Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult Function(_UpdateSearchQuery value)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (unarchiveSelected != null) {
      return unarchiveSelected(this);
    }
    return orElse();
  }
}

abstract class _UnarchiveSelected implements ChatSessionsEditingEvent {
  const factory _UnarchiveSelected() = _$UnarchiveSelectedImpl;
}

/// @nodoc
abstract class _$$UpdateSearchQueryImplCopyWith<$Res> {
  factory _$$UpdateSearchQueryImplCopyWith(
    _$UpdateSearchQueryImpl value,
    $Res Function(_$UpdateSearchQueryImpl) then,
  ) = __$$UpdateSearchQueryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$UpdateSearchQueryImplCopyWithImpl<$Res>
    extends
        _$ChatSessionsEditingEventCopyWithImpl<$Res, _$UpdateSearchQueryImpl>
    implements _$$UpdateSearchQueryImplCopyWith<$Res> {
  __$$UpdateSearchQueryImplCopyWithImpl(
    _$UpdateSearchQueryImpl _value,
    $Res Function(_$UpdateSearchQueryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionsEditingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$UpdateSearchQueryImpl(
        query:
            null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$UpdateSearchQueryImpl implements _UpdateSearchQuery {
  const _$UpdateSearchQueryImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'ChatSessionsEditingEvent.updateSearchQuery(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSearchQueryImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ChatSessionsEditingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSearchQueryImplCopyWith<_$UpdateSearchQueryImpl> get copyWith =>
      __$$UpdateSearchQueryImplCopyWithImpl<_$UpdateSearchQueryImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )
    loadSessions,
    required TResult Function(String conversationId) toggleSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() markSelectedAsRead,
    required TResult Function() deleteSelected,
    required TResult Function() unarchiveSelected,
    required TResult Function(String query) updateSearchQuery,
  }) {
    return updateSearchQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult? Function(String conversationId)? toggleSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? markSelectedAsRead,
    TResult? Function()? deleteSelected,
    TResult? Function()? unarchiveSelected,
    TResult? Function(String query)? updateSearchQuery,
  }) {
    return updateSearchQuery?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<FfiConversation> sessions,
      List<String> initialSelectedIds,
    )?
    loadSessions,
    TResult Function(String conversationId)? toggleSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? markSelectedAsRead,
    TResult Function()? deleteSelected,
    TResult Function()? unarchiveSelected,
    TResult Function(String query)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (updateSearchQuery != null) {
      return updateSearchQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSessions value) loadSessions,
    required TResult Function(_ToggleSelection value) toggleSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_MarkSelectedAsRead value) markSelectedAsRead,
    required TResult Function(_DeleteSelected value) deleteSelected,
    required TResult Function(_UnarchiveSelected value) unarchiveSelected,
    required TResult Function(_UpdateSearchQuery value) updateSearchQuery,
  }) {
    return updateSearchQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSessions value)? loadSessions,
    TResult? Function(_ToggleSelection value)? toggleSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult? Function(_DeleteSelected value)? deleteSelected,
    TResult? Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult? Function(_UpdateSearchQuery value)? updateSearchQuery,
  }) {
    return updateSearchQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSessions value)? loadSessions,
    TResult Function(_ToggleSelection value)? toggleSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_MarkSelectedAsRead value)? markSelectedAsRead,
    TResult Function(_DeleteSelected value)? deleteSelected,
    TResult Function(_UnarchiveSelected value)? unarchiveSelected,
    TResult Function(_UpdateSearchQuery value)? updateSearchQuery,
    required TResult orElse(),
  }) {
    if (updateSearchQuery != null) {
      return updateSearchQuery(this);
    }
    return orElse();
  }
}

abstract class _UpdateSearchQuery implements ChatSessionsEditingEvent {
  const factory _UpdateSearchQuery({required final String query}) =
      _$UpdateSearchQueryImpl;

  String get query;

  /// Create a copy of ChatSessionsEditingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSearchQueryImplCopyWith<_$UpdateSearchQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
