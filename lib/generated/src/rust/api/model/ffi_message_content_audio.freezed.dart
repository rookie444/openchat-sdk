// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_audio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiAudioMessageContent _$FfiAudioMessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiAudioMessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiAudioMessageContent {
  int get duration => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get waveData => throw _privateConstructorUsedError;

  /// Serializes this FfiAudioMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiAudioMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiAudioMessageContentCopyWith<FfiAudioMessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiAudioMessageContentCopyWith<$Res> {
  factory $FfiAudioMessageContentCopyWith(
    FfiAudioMessageContent value,
    $Res Function(FfiAudioMessageContent) then,
  ) = _$FfiAudioMessageContentCopyWithImpl<$Res, FfiAudioMessageContent>;
  @useResult
  $Res call({int duration, int fileSize, String url, String waveData});
}

/// @nodoc
class _$FfiAudioMessageContentCopyWithImpl<
  $Res,
  $Val extends FfiAudioMessageContent
>
    implements $FfiAudioMessageContentCopyWith<$Res> {
  _$FfiAudioMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiAudioMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? fileSize = null,
    Object? url = null,
    Object? waveData = null,
  }) {
    return _then(
      _value.copyWith(
            duration:
                null == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
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
            waveData:
                null == waveData
                    ? _value.waveData
                    : waveData // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiAudioMessageContentImplCopyWith<$Res>
    implements $FfiAudioMessageContentCopyWith<$Res> {
  factory _$$FfiAudioMessageContentImplCopyWith(
    _$FfiAudioMessageContentImpl value,
    $Res Function(_$FfiAudioMessageContentImpl) then,
  ) = __$$FfiAudioMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration, int fileSize, String url, String waveData});
}

/// @nodoc
class __$$FfiAudioMessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiAudioMessageContentCopyWithImpl<$Res, _$FfiAudioMessageContentImpl>
    implements _$$FfiAudioMessageContentImplCopyWith<$Res> {
  __$$FfiAudioMessageContentImplCopyWithImpl(
    _$FfiAudioMessageContentImpl _value,
    $Res Function(_$FfiAudioMessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiAudioMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? fileSize = null,
    Object? url = null,
    Object? waveData = null,
  }) {
    return _then(
      _$FfiAudioMessageContentImpl(
        duration:
            null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
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
        waveData:
            null == waveData
                ? _value.waveData
                : waveData // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiAudioMessageContentImpl extends _FfiAudioMessageContent {
  const _$FfiAudioMessageContentImpl({
    required this.duration,
    required this.fileSize,
    required this.url,
    required this.waveData,
  }) : super._();

  factory _$FfiAudioMessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiAudioMessageContentImplFromJson(json);

  @override
  final int duration;
  @override
  final int fileSize;
  @override
  final String url;
  @override
  final String waveData;

  @override
  String toString() {
    return 'FfiAudioMessageContent(duration: $duration, fileSize: $fileSize, url: $url, waveData: $waveData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiAudioMessageContentImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.waveData, waveData) ||
                other.waveData == waveData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, duration, fileSize, url, waveData);

  /// Create a copy of FfiAudioMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiAudioMessageContentImplCopyWith<_$FfiAudioMessageContentImpl>
  get copyWith =>
      __$$FfiAudioMessageContentImplCopyWithImpl<_$FfiAudioMessageContentImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiAudioMessageContentImplToJson(this);
  }
}

abstract class _FfiAudioMessageContent extends FfiAudioMessageContent {
  const factory _FfiAudioMessageContent({
    required final int duration,
    required final int fileSize,
    required final String url,
    required final String waveData,
  }) = _$FfiAudioMessageContentImpl;
  const _FfiAudioMessageContent._() : super._();

  factory _FfiAudioMessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiAudioMessageContentImpl.fromJson;

  @override
  int get duration;
  @override
  int get fileSize;
  @override
  String get url;
  @override
  String get waveData;

  /// Create a copy of FfiAudioMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiAudioMessageContentImplCopyWith<_$FfiAudioMessageContentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
