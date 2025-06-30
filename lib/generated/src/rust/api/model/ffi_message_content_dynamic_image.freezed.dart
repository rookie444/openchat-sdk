// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_dynamic_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiDynamicImageMessageContent _$FfiDynamicImageMessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiDynamicImageMessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiDynamicImageMessageContent {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get thumbUrl => throw _privateConstructorUsedError;
  int get emoticonId => throw _privateConstructorUsedError;

  /// Serializes this FfiDynamicImageMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiDynamicImageMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiDynamicImageMessageContentCopyWith<FfiDynamicImageMessageContent>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiDynamicImageMessageContentCopyWith<$Res> {
  factory $FfiDynamicImageMessageContentCopyWith(
    FfiDynamicImageMessageContent value,
    $Res Function(FfiDynamicImageMessageContent) then,
  ) =
      _$FfiDynamicImageMessageContentCopyWithImpl<
        $Res,
        FfiDynamicImageMessageContent
      >;
  @useResult
  $Res call({
    int width,
    int height,
    int fileSize,
    String url,
    String thumbUrl,
    int emoticonId,
  });
}

/// @nodoc
class _$FfiDynamicImageMessageContentCopyWithImpl<
  $Res,
  $Val extends FfiDynamicImageMessageContent
>
    implements $FfiDynamicImageMessageContentCopyWith<$Res> {
  _$FfiDynamicImageMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiDynamicImageMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? fileSize = null,
    Object? url = null,
    Object? thumbUrl = null,
    Object? emoticonId = null,
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
            emoticonId:
                null == emoticonId
                    ? _value.emoticonId
                    : emoticonId // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiDynamicImageMessageContentImplCopyWith<$Res>
    implements $FfiDynamicImageMessageContentCopyWith<$Res> {
  factory _$$FfiDynamicImageMessageContentImplCopyWith(
    _$FfiDynamicImageMessageContentImpl value,
    $Res Function(_$FfiDynamicImageMessageContentImpl) then,
  ) = __$$FfiDynamicImageMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int width,
    int height,
    int fileSize,
    String url,
    String thumbUrl,
    int emoticonId,
  });
}

/// @nodoc
class __$$FfiDynamicImageMessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiDynamicImageMessageContentCopyWithImpl<
          $Res,
          _$FfiDynamicImageMessageContentImpl
        >
    implements _$$FfiDynamicImageMessageContentImplCopyWith<$Res> {
  __$$FfiDynamicImageMessageContentImplCopyWithImpl(
    _$FfiDynamicImageMessageContentImpl _value,
    $Res Function(_$FfiDynamicImageMessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiDynamicImageMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? fileSize = null,
    Object? url = null,
    Object? thumbUrl = null,
    Object? emoticonId = null,
  }) {
    return _then(
      _$FfiDynamicImageMessageContentImpl(
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
        emoticonId:
            null == emoticonId
                ? _value.emoticonId
                : emoticonId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiDynamicImageMessageContentImpl
    extends _FfiDynamicImageMessageContent {
  const _$FfiDynamicImageMessageContentImpl({
    required this.width,
    required this.height,
    required this.fileSize,
    required this.url,
    required this.thumbUrl,
    required this.emoticonId,
  }) : super._();

  factory _$FfiDynamicImageMessageContentImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$FfiDynamicImageMessageContentImplFromJson(json);

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
  final int emoticonId;

  @override
  String toString() {
    return 'FfiDynamicImageMessageContent(width: $width, height: $height, fileSize: $fileSize, url: $url, thumbUrl: $thumbUrl, emoticonId: $emoticonId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiDynamicImageMessageContentImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbUrl, thumbUrl) ||
                other.thumbUrl == thumbUrl) &&
            (identical(other.emoticonId, emoticonId) ||
                other.emoticonId == emoticonId));
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
    emoticonId,
  );

  /// Create a copy of FfiDynamicImageMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiDynamicImageMessageContentImplCopyWith<
    _$FfiDynamicImageMessageContentImpl
  >
  get copyWith => __$$FfiDynamicImageMessageContentImplCopyWithImpl<
    _$FfiDynamicImageMessageContentImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiDynamicImageMessageContentImplToJson(this);
  }
}

abstract class _FfiDynamicImageMessageContent
    extends FfiDynamicImageMessageContent {
  const factory _FfiDynamicImageMessageContent({
    required final int width,
    required final int height,
    required final int fileSize,
    required final String url,
    required final String thumbUrl,
    required final int emoticonId,
  }) = _$FfiDynamicImageMessageContentImpl;
  const _FfiDynamicImageMessageContent._() : super._();

  factory _FfiDynamicImageMessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiDynamicImageMessageContentImpl.fromJson;

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
  int get emoticonId;

  /// Create a copy of FfiDynamicImageMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiDynamicImageMessageContentImplCopyWith<
    _$FfiDynamicImageMessageContentImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
