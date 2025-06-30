// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiFileMessageContent _$FfiFileMessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiFileMessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiFileMessageContent {
  int get size => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;

  /// Serializes this FfiFileMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiFileMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiFileMessageContentCopyWith<FfiFileMessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiFileMessageContentCopyWith<$Res> {
  factory $FfiFileMessageContentCopyWith(
    FfiFileMessageContent value,
    $Res Function(FfiFileMessageContent) then,
  ) = _$FfiFileMessageContentCopyWithImpl<$Res, FfiFileMessageContent>;
  @useResult
  $Res call({int size, String fileUrl, String name, String mimeType});
}

/// @nodoc
class _$FfiFileMessageContentCopyWithImpl<
  $Res,
  $Val extends FfiFileMessageContent
>
    implements $FfiFileMessageContentCopyWith<$Res> {
  _$FfiFileMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiFileMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? fileUrl = null,
    Object? name = null,
    Object? mimeType = null,
  }) {
    return _then(
      _value.copyWith(
            size:
                null == size
                    ? _value.size
                    : size // ignore: cast_nullable_to_non_nullable
                        as int,
            fileUrl:
                null == fileUrl
                    ? _value.fileUrl
                    : fileUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            mimeType:
                null == mimeType
                    ? _value.mimeType
                    : mimeType // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiFileMessageContentImplCopyWith<$Res>
    implements $FfiFileMessageContentCopyWith<$Res> {
  factory _$$FfiFileMessageContentImplCopyWith(
    _$FfiFileMessageContentImpl value,
    $Res Function(_$FfiFileMessageContentImpl) then,
  ) = __$$FfiFileMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int size, String fileUrl, String name, String mimeType});
}

/// @nodoc
class __$$FfiFileMessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiFileMessageContentCopyWithImpl<$Res, _$FfiFileMessageContentImpl>
    implements _$$FfiFileMessageContentImplCopyWith<$Res> {
  __$$FfiFileMessageContentImplCopyWithImpl(
    _$FfiFileMessageContentImpl _value,
    $Res Function(_$FfiFileMessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiFileMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? fileUrl = null,
    Object? name = null,
    Object? mimeType = null,
  }) {
    return _then(
      _$FfiFileMessageContentImpl(
        size:
            null == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                    as int,
        fileUrl:
            null == fileUrl
                ? _value.fileUrl
                : fileUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        mimeType:
            null == mimeType
                ? _value.mimeType
                : mimeType // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiFileMessageContentImpl extends _FfiFileMessageContent {
  const _$FfiFileMessageContentImpl({
    required this.size,
    required this.fileUrl,
    required this.name,
    required this.mimeType,
  }) : super._();

  factory _$FfiFileMessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiFileMessageContentImplFromJson(json);

  @override
  final int size;
  @override
  final String fileUrl;
  @override
  final String name;
  @override
  final String mimeType;

  @override
  String toString() {
    return 'FfiFileMessageContent(size: $size, fileUrl: $fileUrl, name: $name, mimeType: $mimeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiFileMessageContentImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, size, fileUrl, name, mimeType);

  /// Create a copy of FfiFileMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiFileMessageContentImplCopyWith<_$FfiFileMessageContentImpl>
  get copyWith =>
      __$$FfiFileMessageContentImplCopyWithImpl<_$FfiFileMessageContentImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiFileMessageContentImplToJson(this);
  }
}

abstract class _FfiFileMessageContent extends FfiFileMessageContent {
  const factory _FfiFileMessageContent({
    required final int size,
    required final String fileUrl,
    required final String name,
    required final String mimeType,
  }) = _$FfiFileMessageContentImpl;
  const _FfiFileMessageContent._() : super._();

  factory _FfiFileMessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiFileMessageContentImpl.fromJson;

  @override
  int get size;
  @override
  String get fileUrl;
  @override
  String get name;
  @override
  String get mimeType;

  /// Create a copy of FfiFileMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiFileMessageContentImplCopyWith<_$FfiFileMessageContentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
