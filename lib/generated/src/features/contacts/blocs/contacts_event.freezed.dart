// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/features/contacts/blocs/contacts_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ContactsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includePresences, ContactOrderType orderType)
    loadContacts,
    required TResult Function() refreshContacts,
    required TResult Function() loadMoreContacts,
    required TResult Function(int userId) toggleDisturb,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includePresences, ContactOrderType orderType)?
    loadContacts,
    TResult? Function()? refreshContacts,
    TResult? Function()? loadMoreContacts,
    TResult? Function(int userId)? toggleDisturb,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includePresences, ContactOrderType orderType)?
    loadContacts,
    TResult Function()? refreshContacts,
    TResult Function()? loadMoreContacts,
    TResult Function(int userId)? toggleDisturb,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadContacts value) loadContacts,
    required TResult Function(_RefreshContacts value) refreshContacts,
    required TResult Function(_LoadMoreContacts value) loadMoreContacts,
    required TResult Function(_ToggleDisturb value) toggleDisturb,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadContacts value)? loadContacts,
    TResult? Function(_RefreshContacts value)? refreshContacts,
    TResult? Function(_LoadMoreContacts value)? loadMoreContacts,
    TResult? Function(_ToggleDisturb value)? toggleDisturb,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadContacts value)? loadContacts,
    TResult Function(_RefreshContacts value)? refreshContacts,
    TResult Function(_LoadMoreContacts value)? loadMoreContacts,
    TResult Function(_ToggleDisturb value)? toggleDisturb,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsEventCopyWith<$Res> {
  factory $ContactsEventCopyWith(
    ContactsEvent value,
    $Res Function(ContactsEvent) then,
  ) = _$ContactsEventCopyWithImpl<$Res, ContactsEvent>;
}

/// @nodoc
class _$ContactsEventCopyWithImpl<$Res, $Val extends ContactsEvent>
    implements $ContactsEventCopyWith<$Res> {
  _$ContactsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadContactsImplCopyWith<$Res> {
  factory _$$LoadContactsImplCopyWith(
    _$LoadContactsImpl value,
    $Res Function(_$LoadContactsImpl) then,
  ) = __$$LoadContactsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool includePresences, ContactOrderType orderType});
}

/// @nodoc
class __$$LoadContactsImplCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$LoadContactsImpl>
    implements _$$LoadContactsImplCopyWith<$Res> {
  __$$LoadContactsImplCopyWithImpl(
    _$LoadContactsImpl _value,
    $Res Function(_$LoadContactsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? includePresences = null, Object? orderType = null}) {
    return _then(
      _$LoadContactsImpl(
        includePresences:
            null == includePresences
                ? _value.includePresences
                : includePresences // ignore: cast_nullable_to_non_nullable
                    as bool,
        orderType:
            null == orderType
                ? _value.orderType
                : orderType // ignore: cast_nullable_to_non_nullable
                    as ContactOrderType,
      ),
    );
  }
}

/// @nodoc

class _$LoadContactsImpl implements _LoadContacts {
  const _$LoadContactsImpl({
    required this.includePresences,
    required this.orderType,
  });

  @override
  final bool includePresences;
  @override
  final ContactOrderType orderType;

  @override
  String toString() {
    return 'ContactsEvent.loadContacts(includePresences: $includePresences, orderType: $orderType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadContactsImpl &&
            (identical(other.includePresences, includePresences) ||
                other.includePresences == includePresences) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, includePresences, orderType);

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadContactsImplCopyWith<_$LoadContactsImpl> get copyWith =>
      __$$LoadContactsImplCopyWithImpl<_$LoadContactsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includePresences, ContactOrderType orderType)
    loadContacts,
    required TResult Function() refreshContacts,
    required TResult Function() loadMoreContacts,
    required TResult Function(int userId) toggleDisturb,
  }) {
    return loadContacts(includePresences, orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includePresences, ContactOrderType orderType)?
    loadContacts,
    TResult? Function()? refreshContacts,
    TResult? Function()? loadMoreContacts,
    TResult? Function(int userId)? toggleDisturb,
  }) {
    return loadContacts?.call(includePresences, orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includePresences, ContactOrderType orderType)?
    loadContacts,
    TResult Function()? refreshContacts,
    TResult Function()? loadMoreContacts,
    TResult Function(int userId)? toggleDisturb,
    required TResult orElse(),
  }) {
    if (loadContacts != null) {
      return loadContacts(includePresences, orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadContacts value) loadContacts,
    required TResult Function(_RefreshContacts value) refreshContacts,
    required TResult Function(_LoadMoreContacts value) loadMoreContacts,
    required TResult Function(_ToggleDisturb value) toggleDisturb,
  }) {
    return loadContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadContacts value)? loadContacts,
    TResult? Function(_RefreshContacts value)? refreshContacts,
    TResult? Function(_LoadMoreContacts value)? loadMoreContacts,
    TResult? Function(_ToggleDisturb value)? toggleDisturb,
  }) {
    return loadContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadContacts value)? loadContacts,
    TResult Function(_RefreshContacts value)? refreshContacts,
    TResult Function(_LoadMoreContacts value)? loadMoreContacts,
    TResult Function(_ToggleDisturb value)? toggleDisturb,
    required TResult orElse(),
  }) {
    if (loadContacts != null) {
      return loadContacts(this);
    }
    return orElse();
  }
}

abstract class _LoadContacts implements ContactsEvent {
  const factory _LoadContacts({
    required final bool includePresences,
    required final ContactOrderType orderType,
  }) = _$LoadContactsImpl;

  bool get includePresences;
  ContactOrderType get orderType;

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadContactsImplCopyWith<_$LoadContactsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshContactsImplCopyWith<$Res> {
  factory _$$RefreshContactsImplCopyWith(
    _$RefreshContactsImpl value,
    $Res Function(_$RefreshContactsImpl) then,
  ) = __$$RefreshContactsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshContactsImplCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$RefreshContactsImpl>
    implements _$$RefreshContactsImplCopyWith<$Res> {
  __$$RefreshContactsImplCopyWithImpl(
    _$RefreshContactsImpl _value,
    $Res Function(_$RefreshContactsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshContactsImpl implements _RefreshContacts {
  const _$RefreshContactsImpl();

  @override
  String toString() {
    return 'ContactsEvent.refreshContacts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshContactsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includePresences, ContactOrderType orderType)
    loadContacts,
    required TResult Function() refreshContacts,
    required TResult Function() loadMoreContacts,
    required TResult Function(int userId) toggleDisturb,
  }) {
    return refreshContacts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includePresences, ContactOrderType orderType)?
    loadContacts,
    TResult? Function()? refreshContacts,
    TResult? Function()? loadMoreContacts,
    TResult? Function(int userId)? toggleDisturb,
  }) {
    return refreshContacts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includePresences, ContactOrderType orderType)?
    loadContacts,
    TResult Function()? refreshContacts,
    TResult Function()? loadMoreContacts,
    TResult Function(int userId)? toggleDisturb,
    required TResult orElse(),
  }) {
    if (refreshContacts != null) {
      return refreshContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadContacts value) loadContacts,
    required TResult Function(_RefreshContacts value) refreshContacts,
    required TResult Function(_LoadMoreContacts value) loadMoreContacts,
    required TResult Function(_ToggleDisturb value) toggleDisturb,
  }) {
    return refreshContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadContacts value)? loadContacts,
    TResult? Function(_RefreshContacts value)? refreshContacts,
    TResult? Function(_LoadMoreContacts value)? loadMoreContacts,
    TResult? Function(_ToggleDisturb value)? toggleDisturb,
  }) {
    return refreshContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadContacts value)? loadContacts,
    TResult Function(_RefreshContacts value)? refreshContacts,
    TResult Function(_LoadMoreContacts value)? loadMoreContacts,
    TResult Function(_ToggleDisturb value)? toggleDisturb,
    required TResult orElse(),
  }) {
    if (refreshContacts != null) {
      return refreshContacts(this);
    }
    return orElse();
  }
}

abstract class _RefreshContacts implements ContactsEvent {
  const factory _RefreshContacts() = _$RefreshContactsImpl;
}

/// @nodoc
abstract class _$$LoadMoreContactsImplCopyWith<$Res> {
  factory _$$LoadMoreContactsImplCopyWith(
    _$LoadMoreContactsImpl value,
    $Res Function(_$LoadMoreContactsImpl) then,
  ) = __$$LoadMoreContactsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreContactsImplCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$LoadMoreContactsImpl>
    implements _$$LoadMoreContactsImplCopyWith<$Res> {
  __$$LoadMoreContactsImplCopyWithImpl(
    _$LoadMoreContactsImpl _value,
    $Res Function(_$LoadMoreContactsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreContactsImpl implements _LoadMoreContacts {
  const _$LoadMoreContactsImpl();

  @override
  String toString() {
    return 'ContactsEvent.loadMoreContacts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreContactsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includePresences, ContactOrderType orderType)
    loadContacts,
    required TResult Function() refreshContacts,
    required TResult Function() loadMoreContacts,
    required TResult Function(int userId) toggleDisturb,
  }) {
    return loadMoreContacts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includePresences, ContactOrderType orderType)?
    loadContacts,
    TResult? Function()? refreshContacts,
    TResult? Function()? loadMoreContacts,
    TResult? Function(int userId)? toggleDisturb,
  }) {
    return loadMoreContacts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includePresences, ContactOrderType orderType)?
    loadContacts,
    TResult Function()? refreshContacts,
    TResult Function()? loadMoreContacts,
    TResult Function(int userId)? toggleDisturb,
    required TResult orElse(),
  }) {
    if (loadMoreContacts != null) {
      return loadMoreContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadContacts value) loadContacts,
    required TResult Function(_RefreshContacts value) refreshContacts,
    required TResult Function(_LoadMoreContacts value) loadMoreContacts,
    required TResult Function(_ToggleDisturb value) toggleDisturb,
  }) {
    return loadMoreContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadContacts value)? loadContacts,
    TResult? Function(_RefreshContacts value)? refreshContacts,
    TResult? Function(_LoadMoreContacts value)? loadMoreContacts,
    TResult? Function(_ToggleDisturb value)? toggleDisturb,
  }) {
    return loadMoreContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadContacts value)? loadContacts,
    TResult Function(_RefreshContacts value)? refreshContacts,
    TResult Function(_LoadMoreContacts value)? loadMoreContacts,
    TResult Function(_ToggleDisturb value)? toggleDisturb,
    required TResult orElse(),
  }) {
    if (loadMoreContacts != null) {
      return loadMoreContacts(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreContacts implements ContactsEvent {
  const factory _LoadMoreContacts() = _$LoadMoreContactsImpl;
}

/// @nodoc
abstract class _$$ToggleDisturbImplCopyWith<$Res> {
  factory _$$ToggleDisturbImplCopyWith(
    _$ToggleDisturbImpl value,
    $Res Function(_$ToggleDisturbImpl) then,
  ) = __$$ToggleDisturbImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$ToggleDisturbImplCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$ToggleDisturbImpl>
    implements _$$ToggleDisturbImplCopyWith<$Res> {
  __$$ToggleDisturbImplCopyWithImpl(
    _$ToggleDisturbImpl _value,
    $Res Function(_$ToggleDisturbImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null}) {
    return _then(
      _$ToggleDisturbImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$ToggleDisturbImpl implements _ToggleDisturb {
  const _$ToggleDisturbImpl({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'ContactsEvent.toggleDisturb(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleDisturbImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleDisturbImplCopyWith<_$ToggleDisturbImpl> get copyWith =>
      __$$ToggleDisturbImplCopyWithImpl<_$ToggleDisturbImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includePresences, ContactOrderType orderType)
    loadContacts,
    required TResult Function() refreshContacts,
    required TResult Function() loadMoreContacts,
    required TResult Function(int userId) toggleDisturb,
  }) {
    return toggleDisturb(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includePresences, ContactOrderType orderType)?
    loadContacts,
    TResult? Function()? refreshContacts,
    TResult? Function()? loadMoreContacts,
    TResult? Function(int userId)? toggleDisturb,
  }) {
    return toggleDisturb?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includePresences, ContactOrderType orderType)?
    loadContacts,
    TResult Function()? refreshContacts,
    TResult Function()? loadMoreContacts,
    TResult Function(int userId)? toggleDisturb,
    required TResult orElse(),
  }) {
    if (toggleDisturb != null) {
      return toggleDisturb(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadContacts value) loadContacts,
    required TResult Function(_RefreshContacts value) refreshContacts,
    required TResult Function(_LoadMoreContacts value) loadMoreContacts,
    required TResult Function(_ToggleDisturb value) toggleDisturb,
  }) {
    return toggleDisturb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadContacts value)? loadContacts,
    TResult? Function(_RefreshContacts value)? refreshContacts,
    TResult? Function(_LoadMoreContacts value)? loadMoreContacts,
    TResult? Function(_ToggleDisturb value)? toggleDisturb,
  }) {
    return toggleDisturb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadContacts value)? loadContacts,
    TResult Function(_RefreshContacts value)? refreshContacts,
    TResult Function(_LoadMoreContacts value)? loadMoreContacts,
    TResult Function(_ToggleDisturb value)? toggleDisturb,
    required TResult orElse(),
  }) {
    if (toggleDisturb != null) {
      return toggleDisturb(this);
    }
    return orElse();
  }
}

abstract class _ToggleDisturb implements ContactsEvent {
  const factory _ToggleDisturb({required final int userId}) =
      _$ToggleDisturbImpl;

  int get userId;

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleDisturbImplCopyWith<_$ToggleDisturbImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
