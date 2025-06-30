// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/ffi_message_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FfiMsgContent _$FfiMsgContentFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'text':
      return FfiMsgContent_Text.fromJson(json);
    case 'image':
      return FfiMsgContent_Image.fromJson(json);
    case 'image2':
      return FfiMsgContent_Image2.fromJson(json);
    case 'audio':
      return FfiMsgContent_Audio.fromJson(json);
    case 'video':
      return FfiMsgContent_Video.fromJson(json);
    case 'file':
      return FfiMsgContent_File.fromJson(json);
    case 'card':
      return FfiMsgContent_Card.fromJson(json);
    case 'system':
      return FfiMsgContent_System.fromJson(json);
    case 'dice':
      return FfiMsgContent_Dice.fromJson(json);
    case 'notice':
      return FfiMsgContent_Notice.fromJson(json);
    case 'location':
      return FfiMsgContent_Location.fromJson(json);
    case 'packet':
      return FfiMsgContent_Packet.fromJson(json);
    case 'transfer':
      return FfiMsgContent_Transfer.fromJson(json);
    case 'medias':
      return FfiMsgContent_Medias.fromJson(json);
    case 'game':
      return FfiMsgContent_Game.fromJson(json);
    case 'html':
      return FfiMsgContent_Html.fromJson(json);
    case 'html2':
      return FfiMsgContent_Html2.fromJson(json);
    case 'groupEvent':
      return FfiMsgContent_GroupEvent.fromJson(json);
    case 'unknown':
      return FfiMsgContent_Unknown.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'FfiMsgContent',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$FfiMsgContent {
  Object get field0 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this FfiMsgContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiMsgContentCopyWith<$Res> {
  factory $FfiMsgContentCopyWith(
    FfiMsgContent value,
    $Res Function(FfiMsgContent) then,
  ) = _$FfiMsgContentCopyWithImpl<$Res, FfiMsgContent>;
}

/// @nodoc
class _$FfiMsgContentCopyWithImpl<$Res, $Val extends FfiMsgContent>
    implements $FfiMsgContentCopyWith<$Res> {
  _$FfiMsgContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FfiMsgContent_TextImplCopyWith<$Res> {
  factory _$$FfiMsgContent_TextImplCopyWith(
    _$FfiMsgContent_TextImpl value,
    $Res Function(_$FfiMsgContent_TextImpl) then,
  ) = __$$FfiMsgContent_TextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiTextMessageContent field0});

  $FfiTextMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_TextImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_TextImpl>
    implements _$$FfiMsgContent_TextImplCopyWith<$Res> {
  __$$FfiMsgContent_TextImplCopyWithImpl(
    _$FfiMsgContent_TextImpl _value,
    $Res Function(_$FfiMsgContent_TextImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_TextImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiTextMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiTextMessageContentCopyWith<$Res> get field0 {
    return $FfiTextMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_TextImpl extends FfiMsgContent_Text {
  const _$FfiMsgContent_TextImpl(this.field0, {final String? $type})
    : $type = $type ?? 'text',
      super._();

  factory _$FfiMsgContent_TextImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_TextImplFromJson(json);

  @override
  final FfiTextMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.text(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_TextImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_TextImplCopyWith<_$FfiMsgContent_TextImpl> get copyWith =>
      __$$FfiMsgContent_TextImplCopyWithImpl<_$FfiMsgContent_TextImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return text(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return text?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_TextImplToJson(this);
  }
}

abstract class FfiMsgContent_Text extends FfiMsgContent {
  const factory FfiMsgContent_Text(final FfiTextMessageContent field0) =
      _$FfiMsgContent_TextImpl;
  const FfiMsgContent_Text._() : super._();

  factory FfiMsgContent_Text.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_TextImpl.fromJson;

  @override
  FfiTextMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_TextImplCopyWith<_$FfiMsgContent_TextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_ImageImplCopyWith<$Res> {
  factory _$$FfiMsgContent_ImageImplCopyWith(
    _$FfiMsgContent_ImageImpl value,
    $Res Function(_$FfiMsgContent_ImageImpl) then,
  ) = __$$FfiMsgContent_ImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiImageMessageContent field0});

  $FfiImageMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_ImageImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_ImageImpl>
    implements _$$FfiMsgContent_ImageImplCopyWith<$Res> {
  __$$FfiMsgContent_ImageImplCopyWithImpl(
    _$FfiMsgContent_ImageImpl _value,
    $Res Function(_$FfiMsgContent_ImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_ImageImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiImageMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiImageMessageContentCopyWith<$Res> get field0 {
    return $FfiImageMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_ImageImpl extends FfiMsgContent_Image {
  const _$FfiMsgContent_ImageImpl(this.field0, {final String? $type})
    : $type = $type ?? 'image',
      super._();

  factory _$FfiMsgContent_ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_ImageImplFromJson(json);

  @override
  final FfiImageMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.image(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_ImageImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_ImageImplCopyWith<_$FfiMsgContent_ImageImpl> get copyWith =>
      __$$FfiMsgContent_ImageImplCopyWithImpl<_$FfiMsgContent_ImageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return image(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return image?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_ImageImplToJson(this);
  }
}

abstract class FfiMsgContent_Image extends FfiMsgContent {
  const factory FfiMsgContent_Image(final FfiImageMessageContent field0) =
      _$FfiMsgContent_ImageImpl;
  const FfiMsgContent_Image._() : super._();

  factory FfiMsgContent_Image.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_ImageImpl.fromJson;

  @override
  FfiImageMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_ImageImplCopyWith<_$FfiMsgContent_ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_Image2ImplCopyWith<$Res> {
  factory _$$FfiMsgContent_Image2ImplCopyWith(
    _$FfiMsgContent_Image2Impl value,
    $Res Function(_$FfiMsgContent_Image2Impl) then,
  ) = __$$FfiMsgContent_Image2ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiDynamicImageMessageContent field0});

  $FfiDynamicImageMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_Image2ImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_Image2Impl>
    implements _$$FfiMsgContent_Image2ImplCopyWith<$Res> {
  __$$FfiMsgContent_Image2ImplCopyWithImpl(
    _$FfiMsgContent_Image2Impl _value,
    $Res Function(_$FfiMsgContent_Image2Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_Image2Impl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiDynamicImageMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiDynamicImageMessageContentCopyWith<$Res> get field0 {
    return $FfiDynamicImageMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_Image2Impl extends FfiMsgContent_Image2 {
  const _$FfiMsgContent_Image2Impl(this.field0, {final String? $type})
    : $type = $type ?? 'image2',
      super._();

  factory _$FfiMsgContent_Image2Impl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_Image2ImplFromJson(json);

  @override
  final FfiDynamicImageMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.image2(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_Image2Impl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_Image2ImplCopyWith<_$FfiMsgContent_Image2Impl>
  get copyWith =>
      __$$FfiMsgContent_Image2ImplCopyWithImpl<_$FfiMsgContent_Image2Impl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return image2(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return image2?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (image2 != null) {
      return image2(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return image2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return image2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (image2 != null) {
      return image2(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_Image2ImplToJson(this);
  }
}

abstract class FfiMsgContent_Image2 extends FfiMsgContent {
  const factory FfiMsgContent_Image2(
    final FfiDynamicImageMessageContent field0,
  ) = _$FfiMsgContent_Image2Impl;
  const FfiMsgContent_Image2._() : super._();

  factory FfiMsgContent_Image2.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_Image2Impl.fromJson;

  @override
  FfiDynamicImageMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_Image2ImplCopyWith<_$FfiMsgContent_Image2Impl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_AudioImplCopyWith<$Res> {
  factory _$$FfiMsgContent_AudioImplCopyWith(
    _$FfiMsgContent_AudioImpl value,
    $Res Function(_$FfiMsgContent_AudioImpl) then,
  ) = __$$FfiMsgContent_AudioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiAudioMessageContent field0});

  $FfiAudioMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_AudioImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_AudioImpl>
    implements _$$FfiMsgContent_AudioImplCopyWith<$Res> {
  __$$FfiMsgContent_AudioImplCopyWithImpl(
    _$FfiMsgContent_AudioImpl _value,
    $Res Function(_$FfiMsgContent_AudioImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_AudioImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiAudioMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiAudioMessageContentCopyWith<$Res> get field0 {
    return $FfiAudioMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_AudioImpl extends FfiMsgContent_Audio {
  const _$FfiMsgContent_AudioImpl(this.field0, {final String? $type})
    : $type = $type ?? 'audio',
      super._();

  factory _$FfiMsgContent_AudioImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_AudioImplFromJson(json);

  @override
  final FfiAudioMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.audio(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_AudioImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_AudioImplCopyWith<_$FfiMsgContent_AudioImpl> get copyWith =>
      __$$FfiMsgContent_AudioImplCopyWithImpl<_$FfiMsgContent_AudioImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return audio(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return audio?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (audio != null) {
      return audio(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return audio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return audio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (audio != null) {
      return audio(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_AudioImplToJson(this);
  }
}

abstract class FfiMsgContent_Audio extends FfiMsgContent {
  const factory FfiMsgContent_Audio(final FfiAudioMessageContent field0) =
      _$FfiMsgContent_AudioImpl;
  const FfiMsgContent_Audio._() : super._();

  factory FfiMsgContent_Audio.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_AudioImpl.fromJson;

  @override
  FfiAudioMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_AudioImplCopyWith<_$FfiMsgContent_AudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_VideoImplCopyWith<$Res> {
  factory _$$FfiMsgContent_VideoImplCopyWith(
    _$FfiMsgContent_VideoImpl value,
    $Res Function(_$FfiMsgContent_VideoImpl) then,
  ) = __$$FfiMsgContent_VideoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiVideoMessageContent field0});

  $FfiVideoMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_VideoImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_VideoImpl>
    implements _$$FfiMsgContent_VideoImplCopyWith<$Res> {
  __$$FfiMsgContent_VideoImplCopyWithImpl(
    _$FfiMsgContent_VideoImpl _value,
    $Res Function(_$FfiMsgContent_VideoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_VideoImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiVideoMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiVideoMessageContentCopyWith<$Res> get field0 {
    return $FfiVideoMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_VideoImpl extends FfiMsgContent_Video {
  const _$FfiMsgContent_VideoImpl(this.field0, {final String? $type})
    : $type = $type ?? 'video',
      super._();

  factory _$FfiMsgContent_VideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_VideoImplFromJson(json);

  @override
  final FfiVideoMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.video(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_VideoImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_VideoImplCopyWith<_$FfiMsgContent_VideoImpl> get copyWith =>
      __$$FfiMsgContent_VideoImplCopyWithImpl<_$FfiMsgContent_VideoImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return video(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return video?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_VideoImplToJson(this);
  }
}

abstract class FfiMsgContent_Video extends FfiMsgContent {
  const factory FfiMsgContent_Video(final FfiVideoMessageContent field0) =
      _$FfiMsgContent_VideoImpl;
  const FfiMsgContent_Video._() : super._();

  factory FfiMsgContent_Video.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_VideoImpl.fromJson;

  @override
  FfiVideoMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_VideoImplCopyWith<_$FfiMsgContent_VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_FileImplCopyWith<$Res> {
  factory _$$FfiMsgContent_FileImplCopyWith(
    _$FfiMsgContent_FileImpl value,
    $Res Function(_$FfiMsgContent_FileImpl) then,
  ) = __$$FfiMsgContent_FileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiFileMessageContent field0});

  $FfiFileMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_FileImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_FileImpl>
    implements _$$FfiMsgContent_FileImplCopyWith<$Res> {
  __$$FfiMsgContent_FileImplCopyWithImpl(
    _$FfiMsgContent_FileImpl _value,
    $Res Function(_$FfiMsgContent_FileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_FileImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiFileMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiFileMessageContentCopyWith<$Res> get field0 {
    return $FfiFileMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_FileImpl extends FfiMsgContent_File {
  const _$FfiMsgContent_FileImpl(this.field0, {final String? $type})
    : $type = $type ?? 'file',
      super._();

  factory _$FfiMsgContent_FileImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_FileImplFromJson(json);

  @override
  final FfiFileMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.file(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_FileImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_FileImplCopyWith<_$FfiMsgContent_FileImpl> get copyWith =>
      __$$FfiMsgContent_FileImplCopyWithImpl<_$FfiMsgContent_FileImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return file(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return file?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_FileImplToJson(this);
  }
}

abstract class FfiMsgContent_File extends FfiMsgContent {
  const factory FfiMsgContent_File(final FfiFileMessageContent field0) =
      _$FfiMsgContent_FileImpl;
  const FfiMsgContent_File._() : super._();

  factory FfiMsgContent_File.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_FileImpl.fromJson;

  @override
  FfiFileMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_FileImplCopyWith<_$FfiMsgContent_FileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_CardImplCopyWith<$Res> {
  factory _$$FfiMsgContent_CardImplCopyWith(
    _$FfiMsgContent_CardImpl value,
    $Res Function(_$FfiMsgContent_CardImpl) then,
  ) = __$$FfiMsgContent_CardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiNameCardMessageContent field0});

  $FfiNameCardMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_CardImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_CardImpl>
    implements _$$FfiMsgContent_CardImplCopyWith<$Res> {
  __$$FfiMsgContent_CardImplCopyWithImpl(
    _$FfiMsgContent_CardImpl _value,
    $Res Function(_$FfiMsgContent_CardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_CardImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiNameCardMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiNameCardMessageContentCopyWith<$Res> get field0 {
    return $FfiNameCardMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_CardImpl extends FfiMsgContent_Card {
  const _$FfiMsgContent_CardImpl(this.field0, {final String? $type})
    : $type = $type ?? 'card',
      super._();

  factory _$FfiMsgContent_CardImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_CardImplFromJson(json);

  @override
  final FfiNameCardMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.card(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_CardImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_CardImplCopyWith<_$FfiMsgContent_CardImpl> get copyWith =>
      __$$FfiMsgContent_CardImplCopyWithImpl<_$FfiMsgContent_CardImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return card(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return card?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (card != null) {
      return card(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return card(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return card?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (card != null) {
      return card(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_CardImplToJson(this);
  }
}

abstract class FfiMsgContent_Card extends FfiMsgContent {
  const factory FfiMsgContent_Card(final FfiNameCardMessageContent field0) =
      _$FfiMsgContent_CardImpl;
  const FfiMsgContent_Card._() : super._();

  factory FfiMsgContent_Card.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_CardImpl.fromJson;

  @override
  FfiNameCardMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_CardImplCopyWith<_$FfiMsgContent_CardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_SystemImplCopyWith<$Res> {
  factory _$$FfiMsgContent_SystemImplCopyWith(
    _$FfiMsgContent_SystemImpl value,
    $Res Function(_$FfiMsgContent_SystemImpl) then,
  ) = __$$FfiMsgContent_SystemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiSystemMessageContent field0});

  $FfiSystemMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_SystemImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_SystemImpl>
    implements _$$FfiMsgContent_SystemImplCopyWith<$Res> {
  __$$FfiMsgContent_SystemImplCopyWithImpl(
    _$FfiMsgContent_SystemImpl _value,
    $Res Function(_$FfiMsgContent_SystemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_SystemImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiSystemMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiSystemMessageContentCopyWith<$Res> get field0 {
    return $FfiSystemMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_SystemImpl extends FfiMsgContent_System {
  const _$FfiMsgContent_SystemImpl(this.field0, {final String? $type})
    : $type = $type ?? 'system',
      super._();

  factory _$FfiMsgContent_SystemImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_SystemImplFromJson(json);

  @override
  final FfiSystemMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.system(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_SystemImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_SystemImplCopyWith<_$FfiMsgContent_SystemImpl>
  get copyWith =>
      __$$FfiMsgContent_SystemImplCopyWithImpl<_$FfiMsgContent_SystemImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return system(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return system?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return system(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return system?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_SystemImplToJson(this);
  }
}

abstract class FfiMsgContent_System extends FfiMsgContent {
  const factory FfiMsgContent_System(final FfiSystemMessageContent field0) =
      _$FfiMsgContent_SystemImpl;
  const FfiMsgContent_System._() : super._();

  factory FfiMsgContent_System.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_SystemImpl.fromJson;

  @override
  FfiSystemMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_SystemImplCopyWith<_$FfiMsgContent_SystemImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_DiceImplCopyWith<$Res> {
  factory _$$FfiMsgContent_DiceImplCopyWith(
    _$FfiMsgContent_DiceImpl value,
    $Res Function(_$FfiMsgContent_DiceImpl) then,
  ) = __$$FfiMsgContent_DiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiDiceMessageContent field0});

  $FfiDiceMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_DiceImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_DiceImpl>
    implements _$$FfiMsgContent_DiceImplCopyWith<$Res> {
  __$$FfiMsgContent_DiceImplCopyWithImpl(
    _$FfiMsgContent_DiceImpl _value,
    $Res Function(_$FfiMsgContent_DiceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_DiceImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiDiceMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiDiceMessageContentCopyWith<$Res> get field0 {
    return $FfiDiceMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_DiceImpl extends FfiMsgContent_Dice {
  const _$FfiMsgContent_DiceImpl(this.field0, {final String? $type})
    : $type = $type ?? 'dice',
      super._();

  factory _$FfiMsgContent_DiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_DiceImplFromJson(json);

  @override
  final FfiDiceMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.dice(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_DiceImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_DiceImplCopyWith<_$FfiMsgContent_DiceImpl> get copyWith =>
      __$$FfiMsgContent_DiceImplCopyWithImpl<_$FfiMsgContent_DiceImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return dice(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return dice?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (dice != null) {
      return dice(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return dice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return dice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (dice != null) {
      return dice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_DiceImplToJson(this);
  }
}

abstract class FfiMsgContent_Dice extends FfiMsgContent {
  const factory FfiMsgContent_Dice(final FfiDiceMessageContent field0) =
      _$FfiMsgContent_DiceImpl;
  const FfiMsgContent_Dice._() : super._();

  factory FfiMsgContent_Dice.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_DiceImpl.fromJson;

  @override
  FfiDiceMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_DiceImplCopyWith<_$FfiMsgContent_DiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_NoticeImplCopyWith<$Res> {
  factory _$$FfiMsgContent_NoticeImplCopyWith(
    _$FfiMsgContent_NoticeImpl value,
    $Res Function(_$FfiMsgContent_NoticeImpl) then,
  ) = __$$FfiMsgContent_NoticeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiNoticeMessageContent field0});

  $FfiNoticeMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_NoticeImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_NoticeImpl>
    implements _$$FfiMsgContent_NoticeImplCopyWith<$Res> {
  __$$FfiMsgContent_NoticeImplCopyWithImpl(
    _$FfiMsgContent_NoticeImpl _value,
    $Res Function(_$FfiMsgContent_NoticeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_NoticeImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiNoticeMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiNoticeMessageContentCopyWith<$Res> get field0 {
    return $FfiNoticeMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_NoticeImpl extends FfiMsgContent_Notice {
  const _$FfiMsgContent_NoticeImpl(this.field0, {final String? $type})
    : $type = $type ?? 'notice',
      super._();

  factory _$FfiMsgContent_NoticeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_NoticeImplFromJson(json);

  @override
  final FfiNoticeMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.notice(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_NoticeImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_NoticeImplCopyWith<_$FfiMsgContent_NoticeImpl>
  get copyWith =>
      __$$FfiMsgContent_NoticeImplCopyWithImpl<_$FfiMsgContent_NoticeImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return notice(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return notice?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (notice != null) {
      return notice(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return notice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return notice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (notice != null) {
      return notice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_NoticeImplToJson(this);
  }
}

abstract class FfiMsgContent_Notice extends FfiMsgContent {
  const factory FfiMsgContent_Notice(final FfiNoticeMessageContent field0) =
      _$FfiMsgContent_NoticeImpl;
  const FfiMsgContent_Notice._() : super._();

  factory FfiMsgContent_Notice.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_NoticeImpl.fromJson;

  @override
  FfiNoticeMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_NoticeImplCopyWith<_$FfiMsgContent_NoticeImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_LocationImplCopyWith<$Res> {
  factory _$$FfiMsgContent_LocationImplCopyWith(
    _$FfiMsgContent_LocationImpl value,
    $Res Function(_$FfiMsgContent_LocationImpl) then,
  ) = __$$FfiMsgContent_LocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiLocationMessageContent field0});

  $FfiLocationMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_LocationImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_LocationImpl>
    implements _$$FfiMsgContent_LocationImplCopyWith<$Res> {
  __$$FfiMsgContent_LocationImplCopyWithImpl(
    _$FfiMsgContent_LocationImpl _value,
    $Res Function(_$FfiMsgContent_LocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_LocationImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiLocationMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiLocationMessageContentCopyWith<$Res> get field0 {
    return $FfiLocationMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_LocationImpl extends FfiMsgContent_Location {
  const _$FfiMsgContent_LocationImpl(this.field0, {final String? $type})
    : $type = $type ?? 'location',
      super._();

  factory _$FfiMsgContent_LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_LocationImplFromJson(json);

  @override
  final FfiLocationMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.location(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_LocationImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_LocationImplCopyWith<_$FfiMsgContent_LocationImpl>
  get copyWith =>
      __$$FfiMsgContent_LocationImplCopyWithImpl<_$FfiMsgContent_LocationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return location(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return location?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return location(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return location?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_LocationImplToJson(this);
  }
}

abstract class FfiMsgContent_Location extends FfiMsgContent {
  const factory FfiMsgContent_Location(final FfiLocationMessageContent field0) =
      _$FfiMsgContent_LocationImpl;
  const FfiMsgContent_Location._() : super._();

  factory FfiMsgContent_Location.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_LocationImpl.fromJson;

  @override
  FfiLocationMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_LocationImplCopyWith<_$FfiMsgContent_LocationImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_PacketImplCopyWith<$Res> {
  factory _$$FfiMsgContent_PacketImplCopyWith(
    _$FfiMsgContent_PacketImpl value,
    $Res Function(_$FfiMsgContent_PacketImpl) then,
  ) = __$$FfiMsgContent_PacketImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiRedPacketMessageContent field0});

  $FfiRedPacketMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_PacketImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_PacketImpl>
    implements _$$FfiMsgContent_PacketImplCopyWith<$Res> {
  __$$FfiMsgContent_PacketImplCopyWithImpl(
    _$FfiMsgContent_PacketImpl _value,
    $Res Function(_$FfiMsgContent_PacketImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_PacketImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiRedPacketMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiRedPacketMessageContentCopyWith<$Res> get field0 {
    return $FfiRedPacketMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_PacketImpl extends FfiMsgContent_Packet {
  const _$FfiMsgContent_PacketImpl(this.field0, {final String? $type})
    : $type = $type ?? 'packet',
      super._();

  factory _$FfiMsgContent_PacketImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_PacketImplFromJson(json);

  @override
  final FfiRedPacketMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.packet(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_PacketImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_PacketImplCopyWith<_$FfiMsgContent_PacketImpl>
  get copyWith =>
      __$$FfiMsgContent_PacketImplCopyWithImpl<_$FfiMsgContent_PacketImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return packet(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return packet?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (packet != null) {
      return packet(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return packet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return packet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (packet != null) {
      return packet(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_PacketImplToJson(this);
  }
}

abstract class FfiMsgContent_Packet extends FfiMsgContent {
  const factory FfiMsgContent_Packet(final FfiRedPacketMessageContent field0) =
      _$FfiMsgContent_PacketImpl;
  const FfiMsgContent_Packet._() : super._();

  factory FfiMsgContent_Packet.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_PacketImpl.fromJson;

  @override
  FfiRedPacketMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_PacketImplCopyWith<_$FfiMsgContent_PacketImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_TransferImplCopyWith<$Res> {
  factory _$$FfiMsgContent_TransferImplCopyWith(
    _$FfiMsgContent_TransferImpl value,
    $Res Function(_$FfiMsgContent_TransferImpl) then,
  ) = __$$FfiMsgContent_TransferImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiChatTransferMessageContent field0});

  $FfiChatTransferMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_TransferImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_TransferImpl>
    implements _$$FfiMsgContent_TransferImplCopyWith<$Res> {
  __$$FfiMsgContent_TransferImplCopyWithImpl(
    _$FfiMsgContent_TransferImpl _value,
    $Res Function(_$FfiMsgContent_TransferImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_TransferImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiChatTransferMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiChatTransferMessageContentCopyWith<$Res> get field0 {
    return $FfiChatTransferMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_TransferImpl extends FfiMsgContent_Transfer {
  const _$FfiMsgContent_TransferImpl(this.field0, {final String? $type})
    : $type = $type ?? 'transfer',
      super._();

  factory _$FfiMsgContent_TransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_TransferImplFromJson(json);

  @override
  final FfiChatTransferMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.transfer(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_TransferImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_TransferImplCopyWith<_$FfiMsgContent_TransferImpl>
  get copyWith =>
      __$$FfiMsgContent_TransferImplCopyWithImpl<_$FfiMsgContent_TransferImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return transfer(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return transfer?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (transfer != null) {
      return transfer(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return transfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return transfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (transfer != null) {
      return transfer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_TransferImplToJson(this);
  }
}

abstract class FfiMsgContent_Transfer extends FfiMsgContent {
  const factory FfiMsgContent_Transfer(
    final FfiChatTransferMessageContent field0,
  ) = _$FfiMsgContent_TransferImpl;
  const FfiMsgContent_Transfer._() : super._();

  factory FfiMsgContent_Transfer.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_TransferImpl.fromJson;

  @override
  FfiChatTransferMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_TransferImplCopyWith<_$FfiMsgContent_TransferImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_MediasImplCopyWith<$Res> {
  factory _$$FfiMsgContent_MediasImplCopyWith(
    _$FfiMsgContent_MediasImpl value,
    $Res Function(_$FfiMsgContent_MediasImpl) then,
  ) = __$$FfiMsgContent_MediasImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiMediasCaptionMessageContent field0});

  $FfiMediasCaptionMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_MediasImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_MediasImpl>
    implements _$$FfiMsgContent_MediasImplCopyWith<$Res> {
  __$$FfiMsgContent_MediasImplCopyWithImpl(
    _$FfiMsgContent_MediasImpl _value,
    $Res Function(_$FfiMsgContent_MediasImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_MediasImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiMediasCaptionMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiMediasCaptionMessageContentCopyWith<$Res> get field0 {
    return $FfiMediasCaptionMessageContentCopyWith<$Res>(_value.field0, (
      value,
    ) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_MediasImpl extends FfiMsgContent_Medias {
  const _$FfiMsgContent_MediasImpl(this.field0, {final String? $type})
    : $type = $type ?? 'medias',
      super._();

  factory _$FfiMsgContent_MediasImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_MediasImplFromJson(json);

  @override
  final FfiMediasCaptionMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.medias(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_MediasImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_MediasImplCopyWith<_$FfiMsgContent_MediasImpl>
  get copyWith =>
      __$$FfiMsgContent_MediasImplCopyWithImpl<_$FfiMsgContent_MediasImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return medias(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return medias?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (medias != null) {
      return medias(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return medias(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return medias?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (medias != null) {
      return medias(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_MediasImplToJson(this);
  }
}

abstract class FfiMsgContent_Medias extends FfiMsgContent {
  const factory FfiMsgContent_Medias(
    final FfiMediasCaptionMessageContent field0,
  ) = _$FfiMsgContent_MediasImpl;
  const FfiMsgContent_Medias._() : super._();

  factory FfiMsgContent_Medias.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_MediasImpl.fromJson;

  @override
  FfiMediasCaptionMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_MediasImplCopyWith<_$FfiMsgContent_MediasImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_GameImplCopyWith<$Res> {
  factory _$$FfiMsgContent_GameImplCopyWith(
    _$FfiMsgContent_GameImpl value,
    $Res Function(_$FfiMsgContent_GameImpl) then,
  ) = __$$FfiMsgContent_GameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiAnmatedMessageContent field0});

  $FfiAnmatedMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_GameImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_GameImpl>
    implements _$$FfiMsgContent_GameImplCopyWith<$Res> {
  __$$FfiMsgContent_GameImplCopyWithImpl(
    _$FfiMsgContent_GameImpl _value,
    $Res Function(_$FfiMsgContent_GameImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_GameImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiAnmatedMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiAnmatedMessageContentCopyWith<$Res> get field0 {
    return $FfiAnmatedMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_GameImpl extends FfiMsgContent_Game {
  const _$FfiMsgContent_GameImpl(this.field0, {final String? $type})
    : $type = $type ?? 'game',
      super._();

  factory _$FfiMsgContent_GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_GameImplFromJson(json);

  @override
  final FfiAnmatedMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.game(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_GameImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_GameImplCopyWith<_$FfiMsgContent_GameImpl> get copyWith =>
      __$$FfiMsgContent_GameImplCopyWithImpl<_$FfiMsgContent_GameImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return game(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return game?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (game != null) {
      return game(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return game(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return game?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (game != null) {
      return game(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_GameImplToJson(this);
  }
}

abstract class FfiMsgContent_Game extends FfiMsgContent {
  const factory FfiMsgContent_Game(final FfiAnmatedMessageContent field0) =
      _$FfiMsgContent_GameImpl;
  const FfiMsgContent_Game._() : super._();

  factory FfiMsgContent_Game.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_GameImpl.fromJson;

  @override
  FfiAnmatedMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_GameImplCopyWith<_$FfiMsgContent_GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_HtmlImplCopyWith<$Res> {
  factory _$$FfiMsgContent_HtmlImplCopyWith(
    _$FfiMsgContent_HtmlImpl value,
    $Res Function(_$FfiMsgContent_HtmlImpl) then,
  ) = __$$FfiMsgContent_HtmlImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiHtmlMessageContent field0});

  $FfiHtmlMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_HtmlImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_HtmlImpl>
    implements _$$FfiMsgContent_HtmlImplCopyWith<$Res> {
  __$$FfiMsgContent_HtmlImplCopyWithImpl(
    _$FfiMsgContent_HtmlImpl _value,
    $Res Function(_$FfiMsgContent_HtmlImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_HtmlImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiHtmlMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiHtmlMessageContentCopyWith<$Res> get field0 {
    return $FfiHtmlMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_HtmlImpl extends FfiMsgContent_Html {
  const _$FfiMsgContent_HtmlImpl(this.field0, {final String? $type})
    : $type = $type ?? 'html',
      super._();

  factory _$FfiMsgContent_HtmlImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_HtmlImplFromJson(json);

  @override
  final FfiHtmlMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.html(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_HtmlImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_HtmlImplCopyWith<_$FfiMsgContent_HtmlImpl> get copyWith =>
      __$$FfiMsgContent_HtmlImplCopyWithImpl<_$FfiMsgContent_HtmlImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return html(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return html?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (html != null) {
      return html(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return html(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return html?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (html != null) {
      return html(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_HtmlImplToJson(this);
  }
}

abstract class FfiMsgContent_Html extends FfiMsgContent {
  const factory FfiMsgContent_Html(final FfiHtmlMessageContent field0) =
      _$FfiMsgContent_HtmlImpl;
  const FfiMsgContent_Html._() : super._();

  factory FfiMsgContent_Html.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_HtmlImpl.fromJson;

  @override
  FfiHtmlMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_HtmlImplCopyWith<_$FfiMsgContent_HtmlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_Html2ImplCopyWith<$Res> {
  factory _$$FfiMsgContent_Html2ImplCopyWith(
    _$FfiMsgContent_Html2Impl value,
    $Res Function(_$FfiMsgContent_Html2Impl) then,
  ) = __$$FfiMsgContent_Html2ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiHtml2MessageContent field0});

  $FfiHtml2MessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_Html2ImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_Html2Impl>
    implements _$$FfiMsgContent_Html2ImplCopyWith<$Res> {
  __$$FfiMsgContent_Html2ImplCopyWithImpl(
    _$FfiMsgContent_Html2Impl _value,
    $Res Function(_$FfiMsgContent_Html2Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_Html2Impl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiHtml2MessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiHtml2MessageContentCopyWith<$Res> get field0 {
    return $FfiHtml2MessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_Html2Impl extends FfiMsgContent_Html2 {
  const _$FfiMsgContent_Html2Impl(this.field0, {final String? $type})
    : $type = $type ?? 'html2',
      super._();

  factory _$FfiMsgContent_Html2Impl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_Html2ImplFromJson(json);

  @override
  final FfiHtml2MessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.html2(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_Html2Impl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_Html2ImplCopyWith<_$FfiMsgContent_Html2Impl> get copyWith =>
      __$$FfiMsgContent_Html2ImplCopyWithImpl<_$FfiMsgContent_Html2Impl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return html2(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return html2?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (html2 != null) {
      return html2(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return html2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return html2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (html2 != null) {
      return html2(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_Html2ImplToJson(this);
  }
}

abstract class FfiMsgContent_Html2 extends FfiMsgContent {
  const factory FfiMsgContent_Html2(final FfiHtml2MessageContent field0) =
      _$FfiMsgContent_Html2Impl;
  const FfiMsgContent_Html2._() : super._();

  factory FfiMsgContent_Html2.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_Html2Impl.fromJson;

  @override
  FfiHtml2MessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_Html2ImplCopyWith<_$FfiMsgContent_Html2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_GroupEventImplCopyWith<$Res> {
  factory _$$FfiMsgContent_GroupEventImplCopyWith(
    _$FfiMsgContent_GroupEventImpl value,
    $Res Function(_$FfiMsgContent_GroupEventImpl) then,
  ) = __$$FfiMsgContent_GroupEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiGroupEventMessageContent field0});

  $FfiGroupEventMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_GroupEventImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_GroupEventImpl>
    implements _$$FfiMsgContent_GroupEventImplCopyWith<$Res> {
  __$$FfiMsgContent_GroupEventImplCopyWithImpl(
    _$FfiMsgContent_GroupEventImpl _value,
    $Res Function(_$FfiMsgContent_GroupEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_GroupEventImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiGroupEventMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiGroupEventMessageContentCopyWith<$Res> get field0 {
    return $FfiGroupEventMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_GroupEventImpl extends FfiMsgContent_GroupEvent {
  const _$FfiMsgContent_GroupEventImpl(this.field0, {final String? $type})
    : $type = $type ?? 'groupEvent',
      super._();

  factory _$FfiMsgContent_GroupEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_GroupEventImplFromJson(json);

  @override
  final FfiGroupEventMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.groupEvent(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_GroupEventImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_GroupEventImplCopyWith<_$FfiMsgContent_GroupEventImpl>
  get copyWith => __$$FfiMsgContent_GroupEventImplCopyWithImpl<
    _$FfiMsgContent_GroupEventImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return groupEvent(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return groupEvent?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (groupEvent != null) {
      return groupEvent(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return groupEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return groupEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (groupEvent != null) {
      return groupEvent(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_GroupEventImplToJson(this);
  }
}

abstract class FfiMsgContent_GroupEvent extends FfiMsgContent {
  const factory FfiMsgContent_GroupEvent(
    final FfiGroupEventMessageContent field0,
  ) = _$FfiMsgContent_GroupEventImpl;
  const FfiMsgContent_GroupEvent._() : super._();

  factory FfiMsgContent_GroupEvent.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_GroupEventImpl.fromJson;

  @override
  FfiGroupEventMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_GroupEventImplCopyWith<_$FfiMsgContent_GroupEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FfiMsgContent_UnknownImplCopyWith<$Res> {
  factory _$$FfiMsgContent_UnknownImplCopyWith(
    _$FfiMsgContent_UnknownImpl value,
    $Res Function(_$FfiMsgContent_UnknownImpl) then,
  ) = __$$FfiMsgContent_UnknownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FfiUnknownMessageContent field0});

  $FfiUnknownMessageContentCopyWith<$Res> get field0;
}

/// @nodoc
class __$$FfiMsgContent_UnknownImplCopyWithImpl<$Res>
    extends _$FfiMsgContentCopyWithImpl<$Res, _$FfiMsgContent_UnknownImpl>
    implements _$$FfiMsgContent_UnknownImplCopyWith<$Res> {
  __$$FfiMsgContent_UnknownImplCopyWithImpl(
    _$FfiMsgContent_UnknownImpl _value,
    $Res Function(_$FfiMsgContent_UnknownImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? field0 = null}) {
    return _then(
      _$FfiMsgContent_UnknownImpl(
        null == field0
            ? _value.field0
            : field0 // ignore: cast_nullable_to_non_nullable
                as FfiUnknownMessageContent,
      ),
    );
  }

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiUnknownMessageContentCopyWith<$Res> get field0 {
    return $FfiUnknownMessageContentCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FfiMsgContent_UnknownImpl extends FfiMsgContent_Unknown {
  const _$FfiMsgContent_UnknownImpl(this.field0, {final String? $type})
    : $type = $type ?? 'unknown',
      super._();

  factory _$FfiMsgContent_UnknownImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfiMsgContent_UnknownImplFromJson(json);

  @override
  final FfiUnknownMessageContent field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FfiMsgContent.unknown(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiMsgContent_UnknownImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiMsgContent_UnknownImplCopyWith<_$FfiMsgContent_UnknownImpl>
  get copyWith =>
      __$$FfiMsgContent_UnknownImplCopyWithImpl<_$FfiMsgContent_UnknownImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FfiTextMessageContent field0) text,
    required TResult Function(FfiImageMessageContent field0) image,
    required TResult Function(FfiDynamicImageMessageContent field0) image2,
    required TResult Function(FfiAudioMessageContent field0) audio,
    required TResult Function(FfiVideoMessageContent field0) video,
    required TResult Function(FfiFileMessageContent field0) file,
    required TResult Function(FfiNameCardMessageContent field0) card,
    required TResult Function(FfiSystemMessageContent field0) system,
    required TResult Function(FfiDiceMessageContent field0) dice,
    required TResult Function(FfiNoticeMessageContent field0) notice,
    required TResult Function(FfiLocationMessageContent field0) location,
    required TResult Function(FfiRedPacketMessageContent field0) packet,
    required TResult Function(FfiChatTransferMessageContent field0) transfer,
    required TResult Function(FfiMediasCaptionMessageContent field0) medias,
    required TResult Function(FfiAnmatedMessageContent field0) game,
    required TResult Function(FfiHtmlMessageContent field0) html,
    required TResult Function(FfiHtml2MessageContent field0) html2,
    required TResult Function(FfiGroupEventMessageContent field0) groupEvent,
    required TResult Function(FfiUnknownMessageContent field0) unknown,
  }) {
    return unknown(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FfiTextMessageContent field0)? text,
    TResult? Function(FfiImageMessageContent field0)? image,
    TResult? Function(FfiDynamicImageMessageContent field0)? image2,
    TResult? Function(FfiAudioMessageContent field0)? audio,
    TResult? Function(FfiVideoMessageContent field0)? video,
    TResult? Function(FfiFileMessageContent field0)? file,
    TResult? Function(FfiNameCardMessageContent field0)? card,
    TResult? Function(FfiSystemMessageContent field0)? system,
    TResult? Function(FfiDiceMessageContent field0)? dice,
    TResult? Function(FfiNoticeMessageContent field0)? notice,
    TResult? Function(FfiLocationMessageContent field0)? location,
    TResult? Function(FfiRedPacketMessageContent field0)? packet,
    TResult? Function(FfiChatTransferMessageContent field0)? transfer,
    TResult? Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult? Function(FfiAnmatedMessageContent field0)? game,
    TResult? Function(FfiHtmlMessageContent field0)? html,
    TResult? Function(FfiHtml2MessageContent field0)? html2,
    TResult? Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult? Function(FfiUnknownMessageContent field0)? unknown,
  }) {
    return unknown?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FfiTextMessageContent field0)? text,
    TResult Function(FfiImageMessageContent field0)? image,
    TResult Function(FfiDynamicImageMessageContent field0)? image2,
    TResult Function(FfiAudioMessageContent field0)? audio,
    TResult Function(FfiVideoMessageContent field0)? video,
    TResult Function(FfiFileMessageContent field0)? file,
    TResult Function(FfiNameCardMessageContent field0)? card,
    TResult Function(FfiSystemMessageContent field0)? system,
    TResult Function(FfiDiceMessageContent field0)? dice,
    TResult Function(FfiNoticeMessageContent field0)? notice,
    TResult Function(FfiLocationMessageContent field0)? location,
    TResult Function(FfiRedPacketMessageContent field0)? packet,
    TResult Function(FfiChatTransferMessageContent field0)? transfer,
    TResult Function(FfiMediasCaptionMessageContent field0)? medias,
    TResult Function(FfiAnmatedMessageContent field0)? game,
    TResult Function(FfiHtmlMessageContent field0)? html,
    TResult Function(FfiHtml2MessageContent field0)? html2,
    TResult Function(FfiGroupEventMessageContent field0)? groupEvent,
    TResult Function(FfiUnknownMessageContent field0)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FfiMsgContent_Text value) text,
    required TResult Function(FfiMsgContent_Image value) image,
    required TResult Function(FfiMsgContent_Image2 value) image2,
    required TResult Function(FfiMsgContent_Audio value) audio,
    required TResult Function(FfiMsgContent_Video value) video,
    required TResult Function(FfiMsgContent_File value) file,
    required TResult Function(FfiMsgContent_Card value) card,
    required TResult Function(FfiMsgContent_System value) system,
    required TResult Function(FfiMsgContent_Dice value) dice,
    required TResult Function(FfiMsgContent_Notice value) notice,
    required TResult Function(FfiMsgContent_Location value) location,
    required TResult Function(FfiMsgContent_Packet value) packet,
    required TResult Function(FfiMsgContent_Transfer value) transfer,
    required TResult Function(FfiMsgContent_Medias value) medias,
    required TResult Function(FfiMsgContent_Game value) game,
    required TResult Function(FfiMsgContent_Html value) html,
    required TResult Function(FfiMsgContent_Html2 value) html2,
    required TResult Function(FfiMsgContent_GroupEvent value) groupEvent,
    required TResult Function(FfiMsgContent_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FfiMsgContent_Text value)? text,
    TResult? Function(FfiMsgContent_Image value)? image,
    TResult? Function(FfiMsgContent_Image2 value)? image2,
    TResult? Function(FfiMsgContent_Audio value)? audio,
    TResult? Function(FfiMsgContent_Video value)? video,
    TResult? Function(FfiMsgContent_File value)? file,
    TResult? Function(FfiMsgContent_Card value)? card,
    TResult? Function(FfiMsgContent_System value)? system,
    TResult? Function(FfiMsgContent_Dice value)? dice,
    TResult? Function(FfiMsgContent_Notice value)? notice,
    TResult? Function(FfiMsgContent_Location value)? location,
    TResult? Function(FfiMsgContent_Packet value)? packet,
    TResult? Function(FfiMsgContent_Transfer value)? transfer,
    TResult? Function(FfiMsgContent_Medias value)? medias,
    TResult? Function(FfiMsgContent_Game value)? game,
    TResult? Function(FfiMsgContent_Html value)? html,
    TResult? Function(FfiMsgContent_Html2 value)? html2,
    TResult? Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult? Function(FfiMsgContent_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FfiMsgContent_Text value)? text,
    TResult Function(FfiMsgContent_Image value)? image,
    TResult Function(FfiMsgContent_Image2 value)? image2,
    TResult Function(FfiMsgContent_Audio value)? audio,
    TResult Function(FfiMsgContent_Video value)? video,
    TResult Function(FfiMsgContent_File value)? file,
    TResult Function(FfiMsgContent_Card value)? card,
    TResult Function(FfiMsgContent_System value)? system,
    TResult Function(FfiMsgContent_Dice value)? dice,
    TResult Function(FfiMsgContent_Notice value)? notice,
    TResult Function(FfiMsgContent_Location value)? location,
    TResult Function(FfiMsgContent_Packet value)? packet,
    TResult Function(FfiMsgContent_Transfer value)? transfer,
    TResult Function(FfiMsgContent_Medias value)? medias,
    TResult Function(FfiMsgContent_Game value)? game,
    TResult Function(FfiMsgContent_Html value)? html,
    TResult Function(FfiMsgContent_Html2 value)? html2,
    TResult Function(FfiMsgContent_GroupEvent value)? groupEvent,
    TResult Function(FfiMsgContent_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FfiMsgContent_UnknownImplToJson(this);
  }
}

abstract class FfiMsgContent_Unknown extends FfiMsgContent {
  const factory FfiMsgContent_Unknown(final FfiUnknownMessageContent field0) =
      _$FfiMsgContent_UnknownImpl;
  const FfiMsgContent_Unknown._() : super._();

  factory FfiMsgContent_Unknown.fromJson(Map<String, dynamic> json) =
      _$FfiMsgContent_UnknownImpl.fromJson;

  @override
  FfiUnknownMessageContent get field0;

  /// Create a copy of FfiMsgContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiMsgContent_UnknownImplCopyWith<_$FfiMsgContent_UnknownImpl>
  get copyWith => throw _privateConstructorUsedError;
}
