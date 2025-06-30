// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_html2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiHtml2MessageContent _$FfiHtml2MessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiHtml2MessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiHtml2MessageContent {
  String get htmlContent => throw _privateConstructorUsedError;

  /// Serializes this FfiHtml2MessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiHtml2MessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiHtml2MessageContentCopyWith<FfiHtml2MessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiHtml2MessageContentCopyWith<$Res> {
  factory $FfiHtml2MessageContentCopyWith(
    FfiHtml2MessageContent value,
    $Res Function(FfiHtml2MessageContent) then,
  ) = _$FfiHtml2MessageContentCopyWithImpl<$Res, FfiHtml2MessageContent>;
  @useResult
  $Res call({String htmlContent});
}

/// @nodoc
class _$FfiHtml2MessageContentCopyWithImpl<
  $Res,
  $Val extends FfiHtml2MessageContent
>
    implements $FfiHtml2MessageContentCopyWith<$Res> {
  _$FfiHtml2MessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiHtml2MessageContent
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
abstract class _$$FfiHtml2MessageContentImplCopyWith<$Res>
    implements $FfiHtml2MessageContentCopyWith<$Res> {
  factory _$$FfiHtml2MessageContentImplCopyWith(
    _$FfiHtml2MessageContentImpl value,
    $Res Function(_$FfiHtml2MessageContentImpl) then,
  ) = __$$FfiHtml2MessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String htmlContent});
}

/// @nodoc
class __$$FfiHtml2MessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiHtml2MessageContentCopyWithImpl<$Res, _$FfiHtml2MessageContentImpl>
    implements _$$FfiHtml2MessageContentImplCopyWith<$Res> {
  __$$FfiHtml2MessageContentImplCopyWithImpl(
    _$FfiHtml2MessageContentImpl _value,
    $Res Function(_$FfiHtml2MessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiHtml2MessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? htmlContent = null}) {
    return _then(
      _$FfiHtml2MessageContentImpl(
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
class _$FfiHtml2MessageContentImpl extends _FfiHtml2MessageContent {
  const _$FfiHtml2MessageContentImpl({required this.htmlContent}) : super._();

  factory _$FfiHtml2MessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiHtml2MessageContentImplFromJson(json);

  @override
  final String htmlContent;

  @override
  String toString() {
    return 'FfiHtml2MessageContent(htmlContent: $htmlContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiHtml2MessageContentImpl &&
            (identical(other.htmlContent, htmlContent) ||
                other.htmlContent == htmlContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, htmlContent);

  /// Create a copy of FfiHtml2MessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiHtml2MessageContentImplCopyWith<_$FfiHtml2MessageContentImpl>
  get copyWith =>
      __$$FfiHtml2MessageContentImplCopyWithImpl<_$FfiHtml2MessageContentImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiHtml2MessageContentImplToJson(this);
  }
}

abstract class _FfiHtml2MessageContent extends FfiHtml2MessageContent {
  const factory _FfiHtml2MessageContent({required final String htmlContent}) =
      _$FfiHtml2MessageContentImpl;
  const _FfiHtml2MessageContent._() : super._();

  factory _FfiHtml2MessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiHtml2MessageContentImpl.fromJson;

  @override
  String get htmlContent;

  /// Create a copy of FfiHtml2MessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiHtml2MessageContentImplCopyWith<_$FfiHtml2MessageContentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
