// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content_notice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiNoticeMessageContent _$FfiNoticeMessageContentFromJson(
  Map<String, dynamic> json,
) {
  return _FfiNoticeMessageContent.fromJson(json);
}

/// @nodoc
mixin _$FfiNoticeMessageContent {
  String get content => throw _privateConstructorUsedError;
  int get noticeId => throw _privateConstructorUsedError;
  bool get showNotify => throw _privateConstructorUsedError;

  /// Serializes this FfiNoticeMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfiNoticeMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiNoticeMessageContentCopyWith<FfiNoticeMessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiNoticeMessageContentCopyWith<$Res> {
  factory $FfiNoticeMessageContentCopyWith(
    FfiNoticeMessageContent value,
    $Res Function(FfiNoticeMessageContent) then,
  ) = _$FfiNoticeMessageContentCopyWithImpl<$Res, FfiNoticeMessageContent>;
  @useResult
  $Res call({String content, int noticeId, bool showNotify});
}

/// @nodoc
class _$FfiNoticeMessageContentCopyWithImpl<
  $Res,
  $Val extends FfiNoticeMessageContent
>
    implements $FfiNoticeMessageContentCopyWith<$Res> {
  _$FfiNoticeMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiNoticeMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? noticeId = null,
    Object? showNotify = null,
  }) {
    return _then(
      _value.copyWith(
            content:
                null == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String,
            noticeId:
                null == noticeId
                    ? _value.noticeId
                    : noticeId // ignore: cast_nullable_to_non_nullable
                        as int,
            showNotify:
                null == showNotify
                    ? _value.showNotify
                    : showNotify // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiNoticeMessageContentImplCopyWith<$Res>
    implements $FfiNoticeMessageContentCopyWith<$Res> {
  factory _$$FfiNoticeMessageContentImplCopyWith(
    _$FfiNoticeMessageContentImpl value,
    $Res Function(_$FfiNoticeMessageContentImpl) then,
  ) = __$$FfiNoticeMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, int noticeId, bool showNotify});
}

/// @nodoc
class __$$FfiNoticeMessageContentImplCopyWithImpl<$Res>
    extends
        _$FfiNoticeMessageContentCopyWithImpl<
          $Res,
          _$FfiNoticeMessageContentImpl
        >
    implements _$$FfiNoticeMessageContentImplCopyWith<$Res> {
  __$$FfiNoticeMessageContentImplCopyWithImpl(
    _$FfiNoticeMessageContentImpl _value,
    $Res Function(_$FfiNoticeMessageContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiNoticeMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? noticeId = null,
    Object? showNotify = null,
  }) {
    return _then(
      _$FfiNoticeMessageContentImpl(
        content:
            null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String,
        noticeId:
            null == noticeId
                ? _value.noticeId
                : noticeId // ignore: cast_nullable_to_non_nullable
                    as int,
        showNotify:
            null == showNotify
                ? _value.showNotify
                : showNotify // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiNoticeMessageContentImpl extends _FfiNoticeMessageContent {
  const _$FfiNoticeMessageContentImpl({
    required this.content,
    required this.noticeId,
    required this.showNotify,
  }) : super._();

  factory _$FfiNoticeMessageContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiNoticeMessageContentImplFromJson(json);

  @override
  final String content;
  @override
  final int noticeId;
  @override
  final bool showNotify;

  @override
  String toString() {
    return 'FfiNoticeMessageContent(content: $content, noticeId: $noticeId, showNotify: $showNotify)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiNoticeMessageContentImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.noticeId, noticeId) ||
                other.noticeId == noticeId) &&
            (identical(other.showNotify, showNotify) ||
                other.showNotify == showNotify));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, noticeId, showNotify);

  /// Create a copy of FfiNoticeMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiNoticeMessageContentImplCopyWith<_$FfiNoticeMessageContentImpl>
  get copyWith => __$$FfiNoticeMessageContentImplCopyWithImpl<
    _$FfiNoticeMessageContentImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiNoticeMessageContentImplToJson(this);
  }
}

abstract class _FfiNoticeMessageContent extends FfiNoticeMessageContent {
  const factory _FfiNoticeMessageContent({
    required final String content,
    required final int noticeId,
    required final bool showNotify,
  }) = _$FfiNoticeMessageContentImpl;
  const _FfiNoticeMessageContent._() : super._();

  factory _FfiNoticeMessageContent.fromJson(Map<String, dynamic> json) =
      _$FfiNoticeMessageContentImpl.fromJson;

  @override
  String get content;
  @override
  int get noticeId;
  @override
  bool get showNotify;

  /// Create a copy of FfiNoticeMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiNoticeMessageContentImplCopyWith<_$FfiNoticeMessageContentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
