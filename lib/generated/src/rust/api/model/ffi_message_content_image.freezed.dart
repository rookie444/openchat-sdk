// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiImageMessageContent _$FfiImageMessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiImageMessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiImageMessageContent {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get thumbUrl => throw _privateConstructorUsedError;
  int get sizeType => throw _privateConstructorUsedError;

  /// Serializes this FfiImageMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiImageMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiImageMessageContentCopyWith<FfiImageMessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiImageMessageContentCopyWith<$Res> {
  factory $FfiImageMessageContentCopyWith(
    FfiImageMessageContent value,
    $Res Function(FfiImageMessageContent) then,
  ) = _$FfiImageMessageContentCopyWithImpl<$Res, FfiImageMessageContent>;
  @useResult
  $Res call({
    int width,
    int height,
    int fileSize,
    String url,
    String thumbUrl,
    int sizeType,
  });
}

/// @nodoc
class _$FfiImageMessageContentCopyWithImpl<
  $Res,
  $Val extends FfiImageMessageContent
>
    implements $FfiImageMessageContentCopyWith<$Res> {
  _$FfiImageMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiImageMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? fileSize = null,
    Object? url = null,
    Object? thumbUrl = null,
    Object? sizeType = null,
  }) {
    return _then(
      _value.copyWith(
            width:
                null == width
                    ? _value.width
                    : width // ignore: cast_nullable_to_non_nullable
                        as int,
            height:
                null == height
                    ? _value.height
                    : height // ignore: cast_nullable_to_non_nullable
                        as int,
            fileSize:
                null == fileSize
                    ? _value.fileSize
                    : fileSize // ignore: cast_nullable_to_non_nullable
                        as int,
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
            thumbUrl:
                null == thumbUrl
                    ? _value.thumbUrl
                    : thumbUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            sizeType:
                null == sizeType
                    ? _value.sizeType
                    : sizeType // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiImageMessageContentImplCopyWith<$Res>
    implements $FfiImageMessageContentCopyWith<$Res> {
  factory _$$FfiImageMessageContentImplCopyWith(
    _$FfiImageMessageContentImpl value,
    $Res Function(_$FfiImageMessageContentImpl) then,
  ) = __$$FfiImageMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int width,
    int height,
    int fileSize,
    String url,
    String thumbUrl,
    int sizeType,
  });
}

/// @nodoc
class __$$FfiImageMessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiImageMessageContentCopyWithImpl<$Res, _$FfiImageMessageContentImpl>
    implements _$$FfiImageMessageContentImplCopyWith<$Res> {
  __$$FfiImageMessageContentImplCopyWithImpl(
    _$FfiImageMessageContentImpl _value,
    $Res Function(_$FfiImageMessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiImageMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? fileSize = null,
    Object? url = null,
    Object? thumbUrl = null,
    Object? sizeType = null,
  }) {
    return _then(
      _$FfiImageMessageContentImpl(
        width:
            null == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                    as int,
        height:
            null == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                    as int,
        fileSize:
            null == fileSize
                ? _value.fileSize
                : fileSize // ignore: cast_nullable_to_non_nullable
                    as int,
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
        thumbUrl:
            null == thumbUrl
                ? _value.thumbUrl
                : thumbUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        sizeType:
            null == sizeType
                ? _value.sizeType
                : sizeType // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiImageMessageContentImpl extends _FfiImageMessageContent {
  const _$FfiImageMessageContentImpl({
    required this.width,
    required this.height,
    required this.fileSize,
    required this.url,
    required this.thumbUrl,
    required this.sizeType,
  }) : super._();

  factory _$FfiImageMessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiImageMessageContentImplFromJson(json);

  @override
  final int width;
  @override
  final int height;
  @override
  final int fileSize;
  @override
  final String url;
  @override
  final String thumbUrl;
  @override
  final int sizeType;

  @override
  String toString() {
    return 'FfiImageMessageContent(width: $width, height: $height, fileSize: $fileSize, url: $url, thumbUrl: $thumbUrl, sizeType: $sizeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiImageMessageContentImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbUrl, thumbUrl) ||
                other.thumbUrl == thumbUrl) &&
            (identical(other.sizeType, sizeType) ||
                other.sizeType == sizeType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    width,
    height,
    fileSize,
    url,
    thumbUrl,
    sizeType,
  );

  /// Create a copy of FfiImageMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiImageMessageContentImplCopyWith<_$FfiImageMessageContentImpl>
  get copyWith =>
      __$$FfiImageMessageContentImplCopyWithImpl<_$FfiImageMessageContentImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiImageMessageContentImplToJson(this);
  }
}

abstract class _FfiImageMessageContent extends FfiImageMessageContent {
  const factory _FfiImageMessageContent({
    required final int width,
    required final int height,
    required final int fileSize,
    required final String url,
    required final String thumbUrl,
    required final int sizeType,
  }) = _$FfiImageMessageContentImpl;
  const _FfiImageMessageContent._() : super._();

  factory _FfiImageMessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiImageMessageContentImpl.fromJson;

  @override
  int get width;
  @override
  int get height;
  @override
  int get fileSize;
  @override
  String get url;
  @override
  String get thumbUrl;
  @override
  int get sizeType;

  /// Create a copy of FfiImageMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiImageMessageContentImplCopyWith<_$FfiImageMessageContentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
