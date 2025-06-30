// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_unknown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiUnknownMessageContent _$FfiUnknownMessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiUnknownMessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiUnknownMessageContent {
  int get rawMsgType => throw _privateConstructorUsedError;
  String get rawContent => throw _privateConstructorUsedError;

  /// Serializes this FfiUnknownMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiUnknownMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiUnknownMessageContentCopyWith<FfiUnknownMessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiUnknownMessageContentCopyWith<$Res> {
  factory $FfiUnknownMessageContentCopyWith(
    FfiUnknownMessageContent value,
    $Res Function(FfiUnknownMessageContent) then,
  ) = _$FfiUnknownMessageContentCopyWithImpl<$Res, FfiUnknownMessageContent>;
  @useResult
  $Res call({int rawMsgType, String rawContent});
}

/// @nodoc
class _$FfiUnknownMessageContentCopyWithImpl<
  $Res,
  $Val extends FfiUnknownMessageContent
>
    implements $FfiUnknownMessageContentCopyWith<$Res> {
  _$FfiUnknownMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiUnknownMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rawMsgType = null, Object? rawContent = null}) {
    return _then(
      _value.copyWith(
            rawMsgType:
                null == rawMsgType
                    ? _value.rawMsgType
                    : rawMsgType // ignore: cast_nullable_to_non_nullable
                        as int,
            rawContent:
                null == rawContent
                    ? _value.rawContent
                    : rawContent // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiUnknownMessageContentImplCopyWith<$Res>
    implements $FfiUnknownMessageContentCopyWith<$Res> {
  factory _$$FfiUnknownMessageContentImplCopyWith(
    _$FfiUnknownMessageContentImpl value,
    $Res Function(_$FfiUnknownMessageContentImpl) then,
  ) = __$$FfiUnknownMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rawMsgType, String rawContent});
}

/// @nodoc
class __$$FfiUnknownMessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiUnknownMessageContentCopyWithImpl<
          $Res,
          _$FfiUnknownMessageContentImpl
        >
    implements _$$FfiUnknownMessageContentImplCopyWith<$Res> {
  __$$FfiUnknownMessageContentImplCopyWithImpl(
    _$FfiUnknownMessageContentImpl _value,
    $Res Function(_$FfiUnknownMessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiUnknownMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rawMsgType = null, Object? rawContent = null}) {
    return _then(
      _$FfiUnknownMessageContentImpl(
        rawMsgType:
            null == rawMsgType
                ? _value.rawMsgType
                : rawMsgType // ignore: cast_nullable_to_non_nullable
                    as int,
        rawContent:
            null == rawContent
                ? _value.rawContent
                : rawContent // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiUnknownMessageContentImpl extends _FfiUnknownMessageContent {
  const _$FfiUnknownMessageContentImpl({
    required this.rawMsgType,
    required this.rawContent,
  }) : super._();

  factory _$FfiUnknownMessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiUnknownMessageContentImplFromJson(json);

  @override
  final int rawMsgType;
  @override
  final String rawContent;

  @override
  String toString() {
    return 'FfiUnknownMessageContent(rawMsgType: $rawMsgType, rawContent: $rawContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiUnknownMessageContentImpl &&
            (identical(other.rawMsgType, rawMsgType) ||
                other.rawMsgType == rawMsgType) &&
            (identical(other.rawContent, rawContent) ||
                other.rawContent == rawContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rawMsgType, rawContent);

  /// Create a copy of FfiUnknownMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiUnknownMessageContentImplCopyWith<_$FfiUnknownMessageContentImpl>
  get copyWith => __$$FfiUnknownMessageContentImplCopyWithImpl<
    _$FfiUnknownMessageContentImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiUnknownMessageContentImplToJson(this);
  }
}

abstract class _FfiUnknownMessageContent extends FfiUnknownMessageContent {
  const factory _FfiUnknownMessageContent({
    required final int rawMsgType,
    required final String rawContent,
  }) = _$FfiUnknownMessageContentImpl;
  const _FfiUnknownMessageContent._() : super._();

  factory _FfiUnknownMessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiUnknownMessageContentImpl.fromJson;

  @override
  int get rawMsgType;
  @override
  String get rawContent;

  /// Create a copy of FfiUnknownMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiUnknownMessageContentImplCopyWith<_$FfiUnknownMessageContentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
