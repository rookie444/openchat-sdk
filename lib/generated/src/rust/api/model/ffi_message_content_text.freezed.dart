// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiTextMessageContent _$FfiTextMessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiTextMessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiTextMessageContent {
  String get text => throw _privateConstructorUsedError;

  /// Serializes this FfiTextMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiTextMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiTextMessageContentCopyWith<FfiTextMessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiTextMessageContentCopyWith<$Res> {
  factory $FfiTextMessageContentCopyWith(
    FfiTextMessageContent value,
    $Res Function(FfiTextMessageContent) then,
  ) = _$FfiTextMessageContentCopyWithImpl<$Res, FfiTextMessageContent>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$FfiTextMessageContentCopyWithImpl<
  $Res,
  $Val extends FfiTextMessageContent
>
    implements $FfiTextMessageContentCopyWith<$Res> {
  _$FfiTextMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiTextMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null}) {
    return _then(
      _value.copyWith(
            text:
                null == text
                    ? _value.text
                    : text // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiTextMessageContentImplCopyWith<$Res>
    implements $FfiTextMessageContentCopyWith<$Res> {
  factory _$$FfiTextMessageContentImplCopyWith(
    _$FfiTextMessageContentImpl value,
    $Res Function(_$FfiTextMessageContentImpl) then,
  ) = __$$FfiTextMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$FfiTextMessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiTextMessageContentCopyWithImpl<$Res, _$FfiTextMessageContentImpl>
    implements _$$FfiTextMessageContentImplCopyWith<$Res> {
  __$$FfiTextMessageContentImplCopyWithImpl(
    _$FfiTextMessageContentImpl _value,
    $Res Function(_$FfiTextMessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiTextMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null}) {
    return _then(
      _$FfiTextMessageContentImpl(
        text:
            null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiTextMessageContentImpl extends _FfiTextMessageContent {
  const _$FfiTextMessageContentImpl({required this.text}) : super._();

  factory _$FfiTextMessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiTextMessageContentImplFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'FfiTextMessageContent(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiTextMessageContentImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of FfiTextMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiTextMessageContentImplCopyWith<_$FfiTextMessageContentImpl>
  get copyWith =>
      __$$FfiTextMessageContentImplCopyWithImpl<_$FfiTextMessageContentImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiTextMessageContentImplToJson(this);
  }
}

abstract class _FfiTextMessageContent extends FfiTextMessageContent {
  const factory _FfiTextMessageContent({required final String text}) =
      _$FfiTextMessageContentImpl;
  const _FfiTextMessageContent._() : super._();

  factory _FfiTextMessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiTextMessageContentImpl.fromJson;

  @override
  String get text;

  /// Create a copy of FfiTextMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiTextMessageContentImplCopyWith<_$FfiTextMessageContentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
