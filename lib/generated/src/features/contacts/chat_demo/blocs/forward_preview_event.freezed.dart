// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../../src/features/contacts/chat_demo/blocs/forward_preview_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ForwardPreviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessage> messagesToForward) initialized,
    required TResult Function(int messageId) toggleMessageSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() confirmForward,
    required TResult Function() cancelForward,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessage> messagesToForward)? initialized,
    TResult? Function(int messageId)? toggleMessageSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? confirmForward,
    TResult? Function()? cancelForward,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessage> messagesToForward)? initialized,
    TResult Function(int messageId)? toggleMessageSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? confirmForward,
    TResult Function()? cancelForward,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ToggleMessageSelection value)
    toggleMessageSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_ConfirmForward value) confirmForward,
    required TResult Function(_CancelForward value) cancelForward,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ToggleMessageSelection value)? toggleMessageSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_ConfirmForward value)? confirmForward,
    TResult? Function(_CancelForward value)? cancelForward,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ToggleMessageSelection value)? toggleMessageSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_ConfirmForward value)? confirmForward,
    TResult Function(_CancelForward value)? cancelForward,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForwardPreviewEventCopyWith<$Res> {
  factory $ForwardPreviewEventCopyWith(
    ForwardPreviewEvent value,
    $Res Function(ForwardPreviewEvent) then,
  ) = _$ForwardPreviewEventCopyWithImpl<$Res, ForwardPreviewEvent>;
}

/// @nodoc
class _$ForwardPreviewEventCopyWithImpl<$Res, $Val extends ForwardPreviewEvent>
    implements $ForwardPreviewEventCopyWith<$Res> {
  _$ForwardPreviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForwardPreviewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
    _$InitializedImpl value,
    $Res Function(_$InitializedImpl) then,
  ) = __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatMessage> messagesToForward});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$ForwardPreviewEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
    _$InitializedImpl _value,
    $Res Function(_$InitializedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForwardPreviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messagesToForward = null}) {
    return _then(
      _$InitializedImpl(
        messagesToForward:
            null == messagesToForward
                ? _value._messagesToForward
                : messagesToForward // ignore: cast_nullable_to_non_nullable
                    as List<ChatMessage>,
      ),
    );
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl({required final List<ChatMessage> messagesToForward})
    : _messagesToForward = messagesToForward;

  final List<ChatMessage> _messagesToForward;
  @override
  List<ChatMessage> get messagesToForward {
    if (_messagesToForward is EqualUnmodifiableListView)
      return _messagesToForward;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messagesToForward);
  }

  @override
  String toString() {
    return 'ForwardPreviewEvent.initialized(messagesToForward: $messagesToForward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            const DeepCollectionEquality().equals(
              other._messagesToForward,
              _messagesToForward,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_messagesToForward),
  );

  /// Create a copy of ForwardPreviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessage> messagesToForward) initialized,
    required TResult Function(int messageId) toggleMessageSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() confirmForward,
    required TResult Function() cancelForward,
  }) {
    return initialized(messagesToForward);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessage> messagesToForward)? initialized,
    TResult? Function(int messageId)? toggleMessageSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? confirmForward,
    TResult? Function()? cancelForward,
  }) {
    return initialized?.call(messagesToForward);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessage> messagesToForward)? initialized,
    TResult Function(int messageId)? toggleMessageSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? confirmForward,
    TResult Function()? cancelForward,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(messagesToForward);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ToggleMessageSelection value)
    toggleMessageSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_ConfirmForward value) confirmForward,
    required TResult Function(_CancelForward value) cancelForward,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ToggleMessageSelection value)? toggleMessageSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_ConfirmForward value)? confirmForward,
    TResult? Function(_CancelForward value)? cancelForward,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ToggleMessageSelection value)? toggleMessageSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_ConfirmForward value)? confirmForward,
    TResult Function(_CancelForward value)? cancelForward,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ForwardPreviewEvent {
  const factory _Initialized({
    required final List<ChatMessage> messagesToForward,
  }) = _$InitializedImpl;

  List<ChatMessage> get messagesToForward;

  /// Create a copy of ForwardPreviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleMessageSelectionImplCopyWith<$Res> {
  factory _$$ToggleMessageSelectionImplCopyWith(
    _$ToggleMessageSelectionImpl value,
    $Res Function(_$ToggleMessageSelectionImpl) then,
  ) = __$$ToggleMessageSelectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int messageId});
}

/// @nodoc
class __$$ToggleMessageSelectionImplCopyWithImpl<$Res>
    extends
        _$ForwardPreviewEventCopyWithImpl<$Res, _$ToggleMessageSelectionImpl>
    implements _$$ToggleMessageSelectionImplCopyWith<$Res> {
  __$$ToggleMessageSelectionImplCopyWithImpl(
    _$ToggleMessageSelectionImpl _value,
    $Res Function(_$ToggleMessageSelectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForwardPreviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messageId = null}) {
    return _then(
      _$ToggleMessageSelectionImpl(
        messageId:
            null == messageId
                ? _value.messageId
                : messageId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$ToggleMessageSelectionImpl implements _ToggleMessageSelection {
  const _$ToggleMessageSelectionImpl({required this.messageId});

  @override
  final int messageId;

  @override
  String toString() {
    return 'ForwardPreviewEvent.toggleMessageSelection(messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleMessageSelectionImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  /// Create a copy of ForwardPreviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleMessageSelectionImplCopyWith<_$ToggleMessageSelectionImpl>
  get copyWith =>
      __$$ToggleMessageSelectionImplCopyWithImpl<_$ToggleMessageSelectionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessage> messagesToForward) initialized,
    required TResult Function(int messageId) toggleMessageSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() confirmForward,
    required TResult Function() cancelForward,
  }) {
    return toggleMessageSelection(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessage> messagesToForward)? initialized,
    TResult? Function(int messageId)? toggleMessageSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? confirmForward,
    TResult? Function()? cancelForward,
  }) {
    return toggleMessageSelection?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessage> messagesToForward)? initialized,
    TResult Function(int messageId)? toggleMessageSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? confirmForward,
    TResult Function()? cancelForward,
    required TResult orElse(),
  }) {
    if (toggleMessageSelection != null) {
      return toggleMessageSelection(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ToggleMessageSelection value)
    toggleMessageSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_ConfirmForward value) confirmForward,
    required TResult Function(_CancelForward value) cancelForward,
  }) {
    return toggleMessageSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ToggleMessageSelection value)? toggleMessageSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_ConfirmForward value)? confirmForward,
    TResult? Function(_CancelForward value)? cancelForward,
  }) {
    return toggleMessageSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ToggleMessageSelection value)? toggleMessageSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_ConfirmForward value)? confirmForward,
    TResult Function(_CancelForward value)? cancelForward,
    required TResult orElse(),
  }) {
    if (toggleMessageSelection != null) {
      return toggleMessageSelection(this);
    }
    return orElse();
  }
}

abstract class _ToggleMessageSelection implements ForwardPreviewEvent {
  const factory _ToggleMessageSelection({required final int messageId}) =
      _$ToggleMessageSelectionImpl;

  int get messageId;

  /// Create a copy of ForwardPreviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleMessageSelectionImplCopyWith<_$ToggleMessageSelectionImpl>
  get copyWith => throw _privateConstructorUsedError;
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
    extends _$ForwardPreviewEventCopyWithImpl<$Res, _$SelectAllImpl>
    implements _$$SelectAllImplCopyWith<$Res> {
  __$$SelectAllImplCopyWithImpl(
    _$SelectAllImpl _value,
    $Res Function(_$SelectAllImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForwardPreviewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SelectAllImpl implements _SelectAll {
  const _$SelectAllImpl();

  @override
  String toString() {
    return 'ForwardPreviewEvent.selectAll()';
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
    required TResult Function(List<ChatMessage> messagesToForward) initialized,
    required TResult Function(int messageId) toggleMessageSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() confirmForward,
    required TResult Function() cancelForward,
  }) {
    return selectAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessage> messagesToForward)? initialized,
    TResult? Function(int messageId)? toggleMessageSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? confirmForward,
    TResult? Function()? cancelForward,
  }) {
    return selectAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessage> messagesToForward)? initialized,
    TResult Function(int messageId)? toggleMessageSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? confirmForward,
    TResult Function()? cancelForward,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ToggleMessageSelection value)
    toggleMessageSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_ConfirmForward value) confirmForward,
    required TResult Function(_CancelForward value) cancelForward,
  }) {
    return selectAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ToggleMessageSelection value)? toggleMessageSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_ConfirmForward value)? confirmForward,
    TResult? Function(_CancelForward value)? cancelForward,
  }) {
    return selectAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ToggleMessageSelection value)? toggleMessageSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_ConfirmForward value)? confirmForward,
    TResult Function(_CancelForward value)? cancelForward,
    required TResult orElse(),
  }) {
    if (selectAll != null) {
      return selectAll(this);
    }
    return orElse();
  }
}

abstract class _SelectAll implements ForwardPreviewEvent {
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
    extends _$ForwardPreviewEventCopyWithImpl<$Res, _$DeselectAllImpl>
    implements _$$DeselectAllImplCopyWith<$Res> {
  __$$DeselectAllImplCopyWithImpl(
    _$DeselectAllImpl _value,
    $Res Function(_$DeselectAllImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForwardPreviewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeselectAllImpl implements _DeselectAll {
  const _$DeselectAllImpl();

  @override
  String toString() {
    return 'ForwardPreviewEvent.deselectAll()';
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
    required TResult Function(List<ChatMessage> messagesToForward) initialized,
    required TResult Function(int messageId) toggleMessageSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() confirmForward,
    required TResult Function() cancelForward,
  }) {
    return deselectAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessage> messagesToForward)? initialized,
    TResult? Function(int messageId)? toggleMessageSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? confirmForward,
    TResult? Function()? cancelForward,
  }) {
    return deselectAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessage> messagesToForward)? initialized,
    TResult Function(int messageId)? toggleMessageSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? confirmForward,
    TResult Function()? cancelForward,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ToggleMessageSelection value)
    toggleMessageSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_ConfirmForward value) confirmForward,
    required TResult Function(_CancelForward value) cancelForward,
  }) {
    return deselectAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ToggleMessageSelection value)? toggleMessageSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_ConfirmForward value)? confirmForward,
    TResult? Function(_CancelForward value)? cancelForward,
  }) {
    return deselectAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ToggleMessageSelection value)? toggleMessageSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_ConfirmForward value)? confirmForward,
    TResult Function(_CancelForward value)? cancelForward,
    required TResult orElse(),
  }) {
    if (deselectAll != null) {
      return deselectAll(this);
    }
    return orElse();
  }
}

abstract class _DeselectAll implements ForwardPreviewEvent {
  const factory _DeselectAll() = _$DeselectAllImpl;
}

/// @nodoc
abstract class _$$ConfirmForwardImplCopyWith<$Res> {
  factory _$$ConfirmForwardImplCopyWith(
    _$ConfirmForwardImpl value,
    $Res Function(_$ConfirmForwardImpl) then,
  ) = __$$ConfirmForwardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmForwardImplCopyWithImpl<$Res>
    extends _$ForwardPreviewEventCopyWithImpl<$Res, _$ConfirmForwardImpl>
    implements _$$ConfirmForwardImplCopyWith<$Res> {
  __$$ConfirmForwardImplCopyWithImpl(
    _$ConfirmForwardImpl _value,
    $Res Function(_$ConfirmForwardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForwardPreviewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConfirmForwardImpl implements _ConfirmForward {
  const _$ConfirmForwardImpl();

  @override
  String toString() {
    return 'ForwardPreviewEvent.confirmForward()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfirmForwardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessage> messagesToForward) initialized,
    required TResult Function(int messageId) toggleMessageSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() confirmForward,
    required TResult Function() cancelForward,
  }) {
    return confirmForward();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessage> messagesToForward)? initialized,
    TResult? Function(int messageId)? toggleMessageSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? confirmForward,
    TResult? Function()? cancelForward,
  }) {
    return confirmForward?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessage> messagesToForward)? initialized,
    TResult Function(int messageId)? toggleMessageSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? confirmForward,
    TResult Function()? cancelForward,
    required TResult orElse(),
  }) {
    if (confirmForward != null) {
      return confirmForward();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ToggleMessageSelection value)
    toggleMessageSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_ConfirmForward value) confirmForward,
    required TResult Function(_CancelForward value) cancelForward,
  }) {
    return confirmForward(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ToggleMessageSelection value)? toggleMessageSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_ConfirmForward value)? confirmForward,
    TResult? Function(_CancelForward value)? cancelForward,
  }) {
    return confirmForward?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ToggleMessageSelection value)? toggleMessageSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_ConfirmForward value)? confirmForward,
    TResult Function(_CancelForward value)? cancelForward,
    required TResult orElse(),
  }) {
    if (confirmForward != null) {
      return confirmForward(this);
    }
    return orElse();
  }
}

abstract class _ConfirmForward implements ForwardPreviewEvent {
  const factory _ConfirmForward() = _$ConfirmForwardImpl;
}

/// @nodoc
abstract class _$$CancelForwardImplCopyWith<$Res> {
  factory _$$CancelForwardImplCopyWith(
    _$CancelForwardImpl value,
    $Res Function(_$CancelForwardImpl) then,
  ) = __$$CancelForwardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelForwardImplCopyWithImpl<$Res>
    extends _$ForwardPreviewEventCopyWithImpl<$Res, _$CancelForwardImpl>
    implements _$$CancelForwardImplCopyWith<$Res> {
  __$$CancelForwardImplCopyWithImpl(
    _$CancelForwardImpl _value,
    $Res Function(_$CancelForwardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ForwardPreviewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelForwardImpl implements _CancelForward {
  const _$CancelForwardImpl();

  @override
  String toString() {
    return 'ForwardPreviewEvent.cancelForward()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelForwardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessage> messagesToForward) initialized,
    required TResult Function(int messageId) toggleMessageSelection,
    required TResult Function() selectAll,
    required TResult Function() deselectAll,
    required TResult Function() confirmForward,
    required TResult Function() cancelForward,
  }) {
    return cancelForward();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessage> messagesToForward)? initialized,
    TResult? Function(int messageId)? toggleMessageSelection,
    TResult? Function()? selectAll,
    TResult? Function()? deselectAll,
    TResult? Function()? confirmForward,
    TResult? Function()? cancelForward,
  }) {
    return cancelForward?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessage> messagesToForward)? initialized,
    TResult Function(int messageId)? toggleMessageSelection,
    TResult Function()? selectAll,
    TResult Function()? deselectAll,
    TResult Function()? confirmForward,
    TResult Function()? cancelForward,
    required TResult orElse(),
  }) {
    if (cancelForward != null) {
      return cancelForward();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ToggleMessageSelection value)
    toggleMessageSelection,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DeselectAll value) deselectAll,
    required TResult Function(_ConfirmForward value) confirmForward,
    required TResult Function(_CancelForward value) cancelForward,
  }) {
    return cancelForward(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_ToggleMessageSelection value)? toggleMessageSelection,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DeselectAll value)? deselectAll,
    TResult? Function(_ConfirmForward value)? confirmForward,
    TResult? Function(_CancelForward value)? cancelForward,
  }) {
    return cancelForward?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ToggleMessageSelection value)? toggleMessageSelection,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DeselectAll value)? deselectAll,
    TResult Function(_ConfirmForward value)? confirmForward,
    TResult Function(_CancelForward value)? cancelForward,
    required TResult orElse(),
  }) {
    if (cancelForward != null) {
      return cancelForward(this);
    }
    return orElse();
  }
}

abstract class _CancelForward implements ForwardPreviewEvent {
  const factory _CancelForward() = _$CancelForwardImpl;
}
