// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_html.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiHtmlMessageContent _$FfiHtmlMessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiHtmlMessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiHtmlMessageContent {
  String get htmlContent => throw _privateConstructorUsedError;

  /// Serializes this FfiHtmlMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiHtmlMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiHtmlMessageContentCopyWith<FfiHtmlMessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiHtmlMessageContentCopyWith<$Res> {
  factory $FfiHtmlMessageContentCopyWith(
    FfiHtmlMessageContent value,
    $Res Function(FfiHtmlMessageContent) then,
  ) = _$FfiHtmlMessageContentCopyWithImpl<$Res, FfiHtmlMessageContent>;
  @useResult
  $Res call({String htmlContent});
}

/// @nodoc
class _$FfiHtmlMessageContentCopyWithImpl<
  $Res,
  $Val extends FfiHtmlMessageContent
>
    implements $FfiHtmlMessageContentCopyWith<$Res> {
  _$FfiHtmlMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiHtmlMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? htmlContent = null}) {
    return _then(
      _value.copyWith(
            htmlContent:
                null == htmlContent
                    ? _value.htmlContent
                    : htmlContent // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiHtmlMessageContentImplCopyWith<$Res>
    implements $FfiHtmlMessageContentCopyWith<$Res> {
  factory _$$FfiHtmlMessageContentImplCopyWith(
    _$FfiHtmlMessageContentImpl value,
    $Res Function(_$FfiHtmlMessageContentImpl) then,
  ) = __$$FfiHtmlMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String htmlContent});
}

/// @nodoc
class __$$FfiHtmlMessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiHtmlMessageContentCopyWithImpl<$Res, _$FfiHtmlMessageContentImpl>
    implements _$$FfiHtmlMessageContentImplCopyWith<$Res> {
  __$$FfiHtmlMessageContentImplCopyWithImpl(
    _$FfiHtmlMessageContentImpl _value,
    $Res Function(_$FfiHtmlMessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiHtmlMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? htmlContent = null}) {
    return _then(
      _$FfiHtmlMessageContentImpl(
        htmlContent:
            null == htmlContent
                ? _value.htmlContent
                : htmlContent // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiHtmlMessageContentImpl extends _FfiHtmlMessageContent {
  const _$FfiHtmlMessageContentImpl({required this.htmlContent}) : super._();

  factory _$FfiHtmlMessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiHtmlMessageContentImplFromJson(json);

  @override
  final String htmlContent;

  @override
  String toString() {
    return 'FfiHtmlMessageContent(htmlContent: $htmlContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiHtmlMessageContentImpl &&
            (identical(other.htmlContent, htmlContent) ||
                other.htmlContent == htmlContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, htmlContent);

  /// Create a copy of FfiHtmlMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiHtmlMessageContentImplCopyWith<_$FfiHtmlMessageContentImpl>
  get copyWith =>
      __$$FfiHtmlMessageContentImplCopyWithImpl<_$FfiHtmlMessageContentImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiHtmlMessageContentImplToJson(this);
  }
}

abstract class _FfiHtmlMessageContent extends FfiHtmlMessageContent {
  const factory _FfiHtmlMessageContent({required final String htmlContent}) =
      _$FfiHtmlMessageContentImpl;
  const _FfiHtmlMessageContent._() : super._();

  factory _FfiHtmlMessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiHtmlMessageContentImpl.fromJson;

  @override
  String get htmlContent;

  /// Create a copy of FfiHtmlMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiHtmlMessageContentImplCopyWith<_$FfiHtmlMessageContentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
