// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_system.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiSystemMessageContent _$FfiSystemMessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiSystemMessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiSystemMessageContent {
  String get content => throw _privateConstructorUsedError;

  /// Serializes this FfiSystemMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiSystemMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiSystemMessageContentCopyWith<FfiSystemMessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiSystemMessageContentCopyWith<$Res> {
  factory $FfiSystemMessageContentCopyWith(
    FfiSystemMessageContent value,
    $Res Function(FfiSystemMessageContent) then,
  ) = _$FfiSystemMessageContentCopyWithImpl<$Res, FfiSystemMessageContent>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class _$FfiSystemMessageContentCopyWithImpl<
  $Res,
  $Val extends FfiSystemMessageContent
>
    implements $FfiSystemMessageContentCopyWith<$Res> {
  _$FfiSystemMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiSystemMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? content = null}) {
    return _then(
      _value.copyWith(
            content:
                null == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiSystemMessageContentImplCopyWith<$Res>
    implements $FfiSystemMessageContentCopyWith<$Res> {
  factory _$$FfiSystemMessageContentImplCopyWith(
    _$FfiSystemMessageContentImpl value,
    $Res Function(_$FfiSystemMessageContentImpl) then,
  ) = __$$FfiSystemMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$FfiSystemMessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiSystemMessageContentCopyWithImpl<
          $Res,
          _$FfiSystemMessageContentImpl
        >
    implements _$$FfiSystemMessageContentImplCopyWith<$Res> {
  __$$FfiSystemMessageContentImplCopyWithImpl(
    _$FfiSystemMessageContentImpl _value,
    $Res Function(_$FfiSystemMessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiSystemMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? content = null}) {
    return _then(
      _$FfiSystemMessageContentImpl(
        content:
            null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiSystemMessageContentImpl extends _FfiSystemMessageContent {
  const _$FfiSystemMessageContentImpl({required this.content}) : super._();

  factory _$FfiSystemMessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiSystemMessageContentImplFromJson(json);

  @override
  final String content;

  @override
  String toString() {
    return 'FfiSystemMessageContent(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiSystemMessageContentImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of FfiSystemMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiSystemMessageContentImplCopyWith<_$FfiSystemMessageContentImpl>
  get copyWith => __$$FfiSystemMessageContentImplCopyWithImpl<
    _$FfiSystemMessageContentImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiSystemMessageContentImplToJson(this);
  }
}

abstract class _FfiSystemMessageContent extends FfiSystemMessageContent {
  const factory _FfiSystemMessageContent({required final String content}) =
      _$FfiSystemMessageContentImpl;
  const _FfiSystemMessageContent._() : super._();

  factory _FfiSystemMessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiSystemMessageContentImpl.fromJson;

  @override
  String get content;

  /// Create a copy of FfiSystemMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiSystemMessageContentImplCopyWith<_$FfiSystemMessageContentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
