// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_dice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiDiceMessageContent _$FfiDiceMessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiDiceMessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiDiceMessageContent {
  int get setImageId => throw _privateConstructorUsedError;
  int get imageSize => throw _privateConstructorUsedError;
  int get currentImage => throw _privateConstructorUsedError;

  /// Serializes this FfiDiceMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiDiceMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiDiceMessageContentCopyWith<FfiDiceMessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiDiceMessageContentCopyWith<$Res> {
  factory $FfiDiceMessageContentCopyWith(
    FfiDiceMessageContent value,
    $Res Function(FfiDiceMessageContent) then,
  ) = _$FfiDiceMessageContentCopyWithImpl<$Res, FfiDiceMessageContent>;
  @useResult
  $Res call({int setImageId, int imageSize, int currentImage});
}

/// @nodoc
class _$FfiDiceMessageContentCopyWithImpl<
  $Res,
  $Val extends FfiDiceMessageContent
>
    implements $FfiDiceMessageContentCopyWith<$Res> {
  _$FfiDiceMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiDiceMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setImageId = null,
    Object? imageSize = null,
    Object? currentImage = null,
  }) {
    return _then(
      _value.copyWith(
            setImageId:
                null == setImageId
                    ? _value.setImageId
                    : setImageId // ignore: cast_nullable_to_non_nullable
                        as int,
            imageSize:
                null == imageSize
                    ? _value.imageSize
                    : imageSize // ignore: cast_nullable_to_non_nullable
                        as int,
            currentImage:
                null == currentImage
                    ? _value.currentImage
                    : currentImage // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiDiceMessageContentImplCopyWith<$Res>
    implements $FfiDiceMessageContentCopyWith<$Res> {
  factory _$$FfiDiceMessageContentImplCopyWith(
    _$FfiDiceMessageContentImpl value,
    $Res Function(_$FfiDiceMessageContentImpl) then,
  ) = __$$FfiDiceMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int setImageId, int imageSize, int currentImage});
}

/// @nodoc
class __$$FfiDiceMessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiDiceMessageContentCopyWithImpl<$Res, _$FfiDiceMessageContentImpl>
    implements _$$FfiDiceMessageContentImplCopyWith<$Res> {
  __$$FfiDiceMessageContentImplCopyWithImpl(
    _$FfiDiceMessageContentImpl _value,
    $Res Function(_$FfiDiceMessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiDiceMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setImageId = null,
    Object? imageSize = null,
    Object? currentImage = null,
  }) {
    return _then(
      _$FfiDiceMessageContentImpl(
        setImageId:
            null == setImageId
                ? _value.setImageId
                : setImageId // ignore: cast_nullable_to_non_nullable
                    as int,
        imageSize:
            null == imageSize
                ? _value.imageSize
                : imageSize // ignore: cast_nullable_to_non_nullable
                    as int,
        currentImage:
            null == currentImage
                ? _value.currentImage
                : currentImage // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiDiceMessageContentImpl extends _FfiDiceMessageContent {
  const _$FfiDiceMessageContentImpl({
    required this.setImageId,
    required this.imageSize,
    required this.currentImage,
  }) : super._();

  factory _$FfiDiceMessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiDiceMessageContentImplFromJson(json);

  @override
  final int setImageId;
  @override
  final int imageSize;
  @override
  final int currentImage;

  @override
  String toString() {
    return 'FfiDiceMessageContent(setImageId: $setImageId, imageSize: $imageSize, currentImage: $currentImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiDiceMessageContentImpl &&
            (identical(other.setImageId, setImageId) ||
                other.setImageId == setImageId) &&
            (identical(other.imageSize, imageSize) ||
                other.imageSize == imageSize) &&
            (identical(other.currentImage, currentImage) ||
                other.currentImage == currentImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, setImageId, imageSize, currentImage);

  /// Create a copy of FfiDiceMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiDiceMessageContentImplCopyWith<_$FfiDiceMessageContentImpl>
  get copyWith =>
      __$$FfiDiceMessageContentImplCopyWithImpl<_$FfiDiceMessageContentImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiDiceMessageContentImplToJson(this);
  }
}

abstract class _FfiDiceMessageContent extends FfiDiceMessageContent {
  const factory _FfiDiceMessageContent({
    required final int setImageId,
    required final int imageSize,
    required final int currentImage,
  }) = _$FfiDiceMessageContentImpl;
  const _FfiDiceMessageContent._() : super._();

  factory _FfiDiceMessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiDiceMessageContentImpl.fromJson;

  @override
  int get setImageId;
  @override
  int get imageSize;
  @override
  int get currentImage;

  /// Create a copy of FfiDiceMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiDiceMessageContentImplCopyWith<_$FfiDiceMessageContentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
