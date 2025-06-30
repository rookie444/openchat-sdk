// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_group_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiGroupEventMessageContent _$FfiGroupEventMessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiGroupEventMessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiGroupEventMessageContent {
  int get rawMsgType => throw _privateConstructorUsedError;
  String get rawContent => throw _privateConstructorUsedError;

  /// Serializes this FfiGroupEventMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiGroupEventMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiGroupEventMessageContentCopyWith<FfiGroupEventMessageContent>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiGroupEventMessageContentCopyWith<$Res> {
  factory $FfiGroupEventMessageContentCopyWith(
    FfiGroupEventMessageContent value,
    $Res Function(FfiGroupEventMessageContent) then,
  ) =
      _$FfiGroupEventMessageContentCopyWithImpl<
        $Res,
        FfiGroupEventMessageContent
      >;
  @useResult
  $Res call({int rawMsgType, String rawContent});
}

/// @nodoc
class _$FfiGroupEventMessageContentCopyWithImpl<
  $Res,
  $Val extends FfiGroupEventMessageContent
>
    implements $FfiGroupEventMessageContentCopyWith<$Res> {
  _$FfiGroupEventMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiGroupEventMessageContent
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
abstract class _$$FfiGroupEventMessageContentImplCopyWith<$Res>
    implements $FfiGroupEventMessageContentCopyWith<$Res> {
  factory _$$FfiGroupEventMessageContentImplCopyWith(
    _$FfiGroupEventMessageContentImpl value,
    $Res Function(_$FfiGroupEventMessageContentImpl) then,
  ) = __$$FfiGroupEventMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rawMsgType, String rawContent});
}

/// @nodoc
class __$$FfiGroupEventMessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiGroupEventMessageContentCopyWithImpl<
          $Res,
          _$FfiGroupEventMessageContentImpl
        >
    implements _$$FfiGroupEventMessageContentImplCopyWith<$Res> {
  __$$FfiGroupEventMessageContentImplCopyWithImpl(
    _$FfiGroupEventMessageContentImpl _value,
    $Res Function(_$FfiGroupEventMessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiGroupEventMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rawMsgType = null, Object? rawContent = null}) {
    return _then(
      _$FfiGroupEventMessageContentImpl(
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
class _$FfiGroupEventMessageContentImpl extends _FfiGroupEventMessageContent {
  const _$FfiGroupEventMessageContentImpl({
    required this.rawMsgType,
    required this.rawContent,
  }) : super._();

  factory _$FfiGroupEventMessageContentImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$FfiGroupEventMessageContentImplFromJson(json);

  @override
  final int rawMsgType;
  @override
  final String rawContent;

  @override
  String toString() {
    return 'FfiGroupEventMessageContent(rawMsgType: $rawMsgType, rawContent: $rawContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiGroupEventMessageContentImpl &&
            (identical(other.rawMsgType, rawMsgType) ||
                other.rawMsgType == rawMsgType) &&
            (identical(other.rawContent, rawContent) ||
                other.rawContent == rawContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rawMsgType, rawContent);

  /// Create a copy of FfiGroupEventMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiGroupEventMessageContentImplCopyWith<_$FfiGroupEventMessageContentImpl>
  get copyWith => __$$FfiGroupEventMessageContentImplCopyWithImpl<
    _$FfiGroupEventMessageContentImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiGroupEventMessageContentImplToJson(this);
  }
}

abstract class _FfiGroupEventMessageContent
    extends FfiGroupEventMessageContent {
  const factory _FfiGroupEventMessageContent({
    required final int rawMsgType,
    required final String rawContent,
  }) = _$FfiGroupEventMessageContentImpl;
  const _FfiGroupEventMessageContent._() : super._();

  factory _FfiGroupEventMessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiGroupEventMessageContentImpl.fromJson;

  @override
  int get rawMsgType;
  @override
  String get rawContent;

  /// Create a copy of FfiGroupEventMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiGroupEventMessageContentImplCopyWith<_$FfiGroupEventMessageContentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
