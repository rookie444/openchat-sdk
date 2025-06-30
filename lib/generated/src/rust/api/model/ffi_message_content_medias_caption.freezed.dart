// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_medias_caption.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiMediasCaptionMessageContent _$FfiMediasCaptionMessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiMediasCaptionMessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiMediasCaptionMessageContent {
  String get caption => throw _privateConstructorUsedError;

  /// Serializes this FfiMediasCaptionMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiMediasCaptionMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiMediasCaptionMessageContentCopyWith<FfiMediasCaptionMessageContent>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiMediasCaptionMessageContentCopyWith<$Res> {
  factory $FfiMediasCaptionMessageContentCopyWith(
    FfiMediasCaptionMessageContent value,
    $Res Function(FfiMediasCaptionMessageContent) then,
  ) =
      _$FfiMediasCaptionMessageContentCopyWithImpl<
        $Res,
        FfiMediasCaptionMessageContent
      >;
  @useResult
  $Res call({String caption});
}

/// @nodoc
class _$FfiMediasCaptionMessageContentCopyWithImpl<
  $Res,
  $Val extends FfiMediasCaptionMessageContent
>
    implements $FfiMediasCaptionMessageContentCopyWith<$Res> {
  _$FfiMediasCaptionMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiMediasCaptionMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? caption = null}) {
    return _then(
      _value.copyWith(
            caption:
                null == caption
                    ? _value.caption
                    : caption // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiMediasCaptionMessageContentImplCopyWith<$Res>
    implements $FfiMediasCaptionMessageContentCopyWith<$Res> {
  factory _$$FfiMediasCaptionMessageContentImplCopyWith(
    _$FfiMediasCaptionMessageContentImpl value,
    $Res Function(_$FfiMediasCaptionMessageContentImpl) then,
  ) = __$$FfiMediasCaptionMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String caption});
}

/// @nodoc
class __$$FfiMediasCaptionMessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiMediasCaptionMessageContentCopyWithImpl<
          $Res,
          _$FfiMediasCaptionMessageContentImpl
        >
    implements _$$FfiMediasCaptionMessageContentImplCopyWith<$Res> {
  __$$FfiMediasCaptionMessageContentImplCopyWithImpl(
    _$FfiMediasCaptionMessageContentImpl _value,
    $Res Function(_$FfiMediasCaptionMessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMediasCaptionMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? caption = null}) {
    return _then(
      _$FfiMediasCaptionMessageContentImpl(
        caption:
            null == caption
                ? _value.caption
                : caption // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMediasCaptionMessageContentImpl
    extends _FfiMediasCaptionMessageContent {
  const _$FfiMediasCaptionMessageContentImpl({required this.caption})
    : super._();

  factory _$FfiMediasCaptionMessageContentImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$FfiMediasCaptionMessageContentImplFromJson(json);

  @override
  final String caption;

  @override
  String toString() {
    return 'FfiMediasCaptionMessageContent(caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMediasCaptionMessageContentImpl &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, caption);

  /// Create a copy of FfiMediasCaptionMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMediasCaptionMessageContentImplCopyWith<
    _$FfiMediasCaptionMessageContentImpl
  >
  get copyWith => __$$FfiMediasCaptionMessageContentImplCopyWithImpl<
    _$FfiMediasCaptionMessageContentImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMediasCaptionMessageContentImplToJson(this);
  }
}

abstract class _FfiMediasCaptionMessageContent
    extends FfiMediasCaptionMessageContent {
  const factory _FfiMediasCaptionMessageContent({
    required final String caption,
  }) = _$FfiMediasCaptionMessageContentImpl;
  const _FfiMediasCaptionMessageContent._() : super._();

  factory _FfiMediasCaptionMessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiMediasCaptionMessageContentImpl.fromJson;

  @override
  String get caption;

  /// Create a copy of FfiMediasCaptionMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMediasCaptionMessageContentImplCopyWith<
    _$FfiMediasCaptionMessageContentImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
