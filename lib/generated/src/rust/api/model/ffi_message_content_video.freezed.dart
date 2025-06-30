// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiVideoMessageContent _$FfiVideoMessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiVideoMessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiVideoMessageContent {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get thumbUrl => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  /// Serializes this FfiVideoMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiVideoMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiVideoMessageContentCopyWith<FfiVideoMessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiVideoMessageContentCopyWith<$Res> {
  factory $FfiVideoMessageContentCopyWith(
    FfiVideoMessageContent value,
    $Res Function(FfiVideoMessageContent) then,
  ) = _$FfiVideoMessageContentCopyWithImpl<$Res, FfiVideoMessageContent>;
  @useResult
  $Res call({
    int width,
    int height,
    int fileSize,
    String url,
    String thumbUrl,
    int duration,
  });
}

/// @nodoc
class _$FfiVideoMessageContentCopyWithImpl<
  $Res,
  $Val extends FfiVideoMessageContent
>
    implements $FfiVideoMessageContentCopyWith<$Res> {
  _$FfiVideoMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiVideoMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? fileSize = null,
    Object? url = null,
    Object? thumbUrl = null,
    Object? duration = null,
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
            duration:
                null == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiVideoMessageContentImplCopyWith<$Res>
    implements $FfiVideoMessageContentCopyWith<$Res> {
  factory _$$FfiVideoMessageContentImplCopyWith(
    _$FfiVideoMessageContentImpl value,
    $Res Function(_$FfiVideoMessageContentImpl) then,
  ) = __$$FfiVideoMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int width,
    int height,
    int fileSize,
    String url,
    String thumbUrl,
    int duration,
  });
}

/// @nodoc
class __$$FfiVideoMessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiVideoMessageContentCopyWithImpl<$Res, _$FfiVideoMessageContentImpl>
    implements _$$FfiVideoMessageContentImplCopyWith<$Res> {
  __$$FfiVideoMessageContentImplCopyWithImpl(
    _$FfiVideoMessageContentImpl _value,
    $Res Function(_$FfiVideoMessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiVideoMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? fileSize = null,
    Object? url = null,
    Object? thumbUrl = null,
    Object? duration = null,
  }) {
    return _then(
      _$FfiVideoMessageContentImpl(
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
        duration:
            null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiVideoMessageContentImpl extends _FfiVideoMessageContent {
  const _$FfiVideoMessageContentImpl({
    required this.width,
    required this.height,
    required this.fileSize,
    required this.url,
    required this.thumbUrl,
    required this.duration,
  }) : super._();

  factory _$FfiVideoMessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiVideoMessageContentImplFromJson(json);

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
  final int duration;

  @override
  String toString() {
    return 'FfiVideoMessageContent(width: $width, height: $height, fileSize: $fileSize, url: $url, thumbUrl: $thumbUrl, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiVideoMessageContentImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbUrl, thumbUrl) ||
                other.thumbUrl == thumbUrl) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
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
    duration,
  );

  /// Create a copy of FfiVideoMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiVideoMessageContentImplCopyWith<_$FfiVideoMessageContentImpl>
  get copyWith =>
      __$$FfiVideoMessageContentImplCopyWithImpl<_$FfiVideoMessageContentImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiVideoMessageContentImplToJson(this);
  }
}

abstract class _FfiVideoMessageContent extends FfiVideoMessageContent {
  const factory _FfiVideoMessageContent({
    required final int width,
    required final int height,
    required final int fileSize,
    required final String url,
    required final String thumbUrl,
    required final int duration,
  }) = _$FfiVideoMessageContentImpl;
  const _FfiVideoMessageContent._() : super._();

  factory _FfiVideoMessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiVideoMessageContentImpl.fromJson;

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
  int get duration;

  /// Create a copy of FfiVideoMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiVideoMessageContentImplCopyWith<_$FfiVideoMessageContentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
