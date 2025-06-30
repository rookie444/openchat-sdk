// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../src/rust/api/model/group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FfiGroupBase {
  int get groupId => throw _privateConstructorUsedError;
  int get hostId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get pic => throw _privateConstructorUsedError;
  bool get bfJoinCheck => throw _privateConstructorUsedError;
  int get createTime => throw _privateConstructorUsedError;
  int get memberCount => throw _privateConstructorUsedError;
  bool get bfJoinFriend => throw _privateConstructorUsedError;
  bool get bfShutup => throw _privateConstructorUsedError;
  bool get bfGroupReadCancel => throw _privateConstructorUsedError;
  int get groupMsgCancelTime => throw _privateConstructorUsedError;
  bool get bfBanned => throw _privateConstructorUsedError;
  String get groupAliasName => throw _privateConstructorUsedError;

  /// Create a copy of FfiGroupBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiGroupBaseCopyWith<FfiGroupBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiGroupBaseCopyWith<$Res> {
  factory $FfiGroupBaseCopyWith(
    FfiGroupBase value,
    $Res Function(FfiGroupBase) then,
  ) = _$FfiGroupBaseCopyWithImpl<$Res, FfiGroupBase>;
  @useResult
  $Res call({
    int groupId,
    int hostId,
    String name,
    String pic,
    bool bfJoinCheck,
    int createTime,
    int memberCount,
    bool bfJoinFriend,
    bool bfShutup,
    bool bfGroupReadCancel,
    int groupMsgCancelTime,
    bool bfBanned,
    String groupAliasName,
  });
}

/// @nodoc
class _$FfiGroupBaseCopyWithImpl<$Res, $Val extends FfiGroupBase>
    implements $FfiGroupBaseCopyWith<$Res> {
  _$FfiGroupBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiGroupBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? hostId = null,
    Object? name = null,
    Object? pic = null,
    Object? bfJoinCheck = null,
    Object? createTime = null,
    Object? memberCount = null,
    Object? bfJoinFriend = null,
    Object? bfShutup = null,
    Object? bfGroupReadCancel = null,
    Object? groupMsgCancelTime = null,
    Object? bfBanned = null,
    Object? groupAliasName = null,
  }) {
    return _then(
      _value.copyWith(
            groupId:
                null == groupId
                    ? _value.groupId
                    : groupId // ignore: cast_nullable_to_non_nullable
                        as int,
            hostId:
                null == hostId
                    ? _value.hostId
                    : hostId // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            pic:
                null == pic
                    ? _value.pic
                    : pic // ignore: cast_nullable_to_non_nullable
                        as String,
            bfJoinCheck:
                null == bfJoinCheck
                    ? _value.bfJoinCheck
                    : bfJoinCheck // ignore: cast_nullable_to_non_nullable
                        as bool,
            createTime:
                null == createTime
                    ? _value.createTime
                    : createTime // ignore: cast_nullable_to_non_nullable
                        as int,
            memberCount:
                null == memberCount
                    ? _value.memberCount
                    : memberCount // ignore: cast_nullable_to_non_nullable
                        as int,
            bfJoinFriend:
                null == bfJoinFriend
                    ? _value.bfJoinFriend
                    : bfJoinFriend // ignore: cast_nullable_to_non_nullable
                        as bool,
            bfShutup:
                null == bfShutup
                    ? _value.bfShutup
                    : bfShutup // ignore: cast_nullable_to_non_nullable
                        as bool,
            bfGroupReadCancel:
                null == bfGroupReadCancel
                    ? _value.bfGroupReadCancel
                    : bfGroupReadCancel // ignore: cast_nullable_to_non_nullable
                        as bool,
            groupMsgCancelTime:
                null == groupMsgCancelTime
                    ? _value.groupMsgCancelTime
                    : groupMsgCancelTime // ignore: cast_nullable_to_non_nullable
                        as int,
            bfBanned:
                null == bfBanned
                    ? _value.bfBanned
                    : bfBanned // ignore: cast_nullable_to_non_nullable
                        as bool,
            groupAliasName:
                null == groupAliasName
                    ? _value.groupAliasName
                    : groupAliasName // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FfiGroupBaseImplCopyWith<$Res>
    implements $FfiGroupBaseCopyWith<$Res> {
  factory _$$FfiGroupBaseImplCopyWith(
    _$FfiGroupBaseImpl value,
    $Res Function(_$FfiGroupBaseImpl) then,
  ) = __$$FfiGroupBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int groupId,
    int hostId,
    String name,
    String pic,
    bool bfJoinCheck,
    int createTime,
    int memberCount,
    bool bfJoinFriend,
    bool bfShutup,
    bool bfGroupReadCancel,
    int groupMsgCancelTime,
    bool bfBanned,
    String groupAliasName,
  });
}

/// @nodoc
class __$$FfiGroupBaseImplCopyWithImpl<$Res>
    extends _$FfiGroupBaseCopyWithImpl<$Res, _$FfiGroupBaseImpl>
    implements _$$FfiGroupBaseImplCopyWith<$Res> {
  __$$FfiGroupBaseImplCopyWithImpl(
    _$FfiGroupBaseImpl _value,
    $Res Function(_$FfiGroupBaseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiGroupBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? hostId = null,
    Object? name = null,
    Object? pic = null,
    Object? bfJoinCheck = null,
    Object? createTime = null,
    Object? memberCount = null,
    Object? bfJoinFriend = null,
    Object? bfShutup = null,
    Object? bfGroupReadCancel = null,
    Object? groupMsgCancelTime = null,
    Object? bfBanned = null,
    Object? groupAliasName = null,
  }) {
    return _then(
      _$FfiGroupBaseImpl(
        groupId:
            null == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                    as int,
        hostId:
            null == hostId
                ? _value.hostId
                : hostId // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        pic:
            null == pic
                ? _value.pic
                : pic // ignore: cast_nullable_to_non_nullable
                    as String,
        bfJoinCheck:
            null == bfJoinCheck
                ? _value.bfJoinCheck
                : bfJoinCheck // ignore: cast_nullable_to_non_nullable
                    as bool,
        createTime:
            null == createTime
                ? _value.createTime
                : createTime // ignore: cast_nullable_to_non_nullable
                    as int,
        memberCount:
            null == memberCount
                ? _value.memberCount
                : memberCount // ignore: cast_nullable_to_non_nullable
                    as int,
        bfJoinFriend:
            null == bfJoinFriend
                ? _value.bfJoinFriend
                : bfJoinFriend // ignore: cast_nullable_to_non_nullable
                    as bool,
        bfShutup:
            null == bfShutup
                ? _value.bfShutup
                : bfShutup // ignore: cast_nullable_to_non_nullable
                    as bool,
        bfGroupReadCancel:
            null == bfGroupReadCancel
                ? _value.bfGroupReadCancel
                : bfGroupReadCancel // ignore: cast_nullable_to_non_nullable
                    as bool,
        groupMsgCancelTime:
            null == groupMsgCancelTime
                ? _value.groupMsgCancelTime
                : groupMsgCancelTime // ignore: cast_nullable_to_non_nullable
                    as int,
        bfBanned:
            null == bfBanned
                ? _value.bfBanned
                : bfBanned // ignore: cast_nullable_to_non_nullable
                    as bool,
        groupAliasName:
            null == groupAliasName
                ? _value.groupAliasName
                : groupAliasName // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$FfiGroupBaseImpl implements _FfiGroupBase {
  const _$FfiGroupBaseImpl({
    required this.groupId,
    required this.hostId,
    required this.name,
    required this.pic,
    required this.bfJoinCheck,
    required this.createTime,
    required this.memberCount,
    required this.bfJoinFriend,
    required this.bfShutup,
    required this.bfGroupReadCancel,
    required this.groupMsgCancelTime,
    required this.bfBanned,
    required this.groupAliasName,
  });

  @override
  final int groupId;
  @override
  final int hostId;
  @override
  final String name;
  @override
  final String pic;
  @override
  final bool bfJoinCheck;
  @override
  final int createTime;
  @override
  final int memberCount;
  @override
  final bool bfJoinFriend;
  @override
  final bool bfShutup;
  @override
  final bool bfGroupReadCancel;
  @override
  final int groupMsgCancelTime;
  @override
  final bool bfBanned;
  @override
  final String groupAliasName;

  @override
  String toString() {
    return 'FfiGroupBase(groupId: $groupId, hostId: $hostId, name: $name, pic: $pic, bfJoinCheck: $bfJoinCheck, createTime: $createTime, memberCount: $memberCount, bfJoinFriend: $bfJoinFriend, bfShutup: $bfShutup, bfGroupReadCancel: $bfGroupReadCancel, groupMsgCancelTime: $groupMsgCancelTime, bfBanned: $bfBanned, groupAliasName: $groupAliasName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiGroupBaseImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.hostId, hostId) || other.hostId == hostId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.bfJoinCheck, bfJoinCheck) ||
                other.bfJoinCheck == bfJoinCheck) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.bfJoinFriend, bfJoinFriend) ||
                other.bfJoinFriend == bfJoinFriend) &&
            (identical(other.bfShutup, bfShutup) ||
                other.bfShutup == bfShutup) &&
            (identical(other.bfGroupReadCancel, bfGroupReadCancel) ||
                other.bfGroupReadCancel == bfGroupReadCancel) &&
            (identical(other.groupMsgCancelTime, groupMsgCancelTime) ||
                other.groupMsgCancelTime == groupMsgCancelTime) &&
            (identical(other.bfBanned, bfBanned) ||
                other.bfBanned == bfBanned) &&
            (identical(other.groupAliasName, groupAliasName) ||
                other.groupAliasName == groupAliasName));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    groupId,
    hostId,
    name,
    pic,
    bfJoinCheck,
    createTime,
    memberCount,
    bfJoinFriend,
    bfShutup,
    bfGroupReadCancel,
    groupMsgCancelTime,
    bfBanned,
    groupAliasName,
  );

  /// Create a copy of FfiGroupBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiGroupBaseImplCopyWith<_$FfiGroupBaseImpl> get copyWith =>
      __$$FfiGroupBaseImplCopyWithImpl<_$FfiGroupBaseImpl>(this, _$identity);
}

abstract class _FfiGroupBase implements FfiGroupBase {
  const factory _FfiGroupBase({
    required final int groupId,
    required final int hostId,
    required final String name,
    required final String pic,
    required final bool bfJoinCheck,
    required final int createTime,
    required final int memberCount,
    required final bool bfJoinFriend,
    required final bool bfShutup,
    required final bool bfGroupReadCancel,
    required final int groupMsgCancelTime,
    required final bool bfBanned,
    required final String groupAliasName,
  }) = _$FfiGroupBaseImpl;

  @override
  int get groupId;
  @override
  int get hostId;
  @override
  String get name;
  @override
  String get pic;
  @override
  bool get bfJoinCheck;
  @override
  int get createTime;
  @override
  int get memberCount;
  @override
  bool get bfJoinFriend;
  @override
  bool get bfShutup;
  @override
  bool get bfGroupReadCancel;
  @override
  int get groupMsgCancelTime;
  @override
  bool get bfBanned;
  @override
  String get groupAliasName;

  /// Create a copy of FfiGroupBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiGroupBaseImplCopyWith<_$FfiGroupBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FfiGroupDetailResponse {
  FfiGroupBase? get group => throw _privateConstructorUsedError;
  String get groupNickName => throw _privateConstructorUsedError;
  bool get bfTop => throw _privateConstructorUsedError;
  bool get bfStar => throw _privateConstructorUsedError;
  bool get bfDisturb => throw _privateConstructorUsedError;
  bool get bfAddress => throw _privateConstructorUsedError;
  int get memberType => throw _privateConstructorUsedError;
  bool get bfMember => throw _privateConstructorUsedError;
  String get qrUrl => throw _privateConstructorUsedError;
  int get qrExpire => throw _privateConstructorUsedError;
  bool get bfResetQrcode => throw _privateConstructorUsedError;

  /// Create a copy of FfiGroupDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfiGroupDetailResponseCopyWith<FfiGroupDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfiGroupDetailResponseCopyWith<$Res> {
  factory $FfiGroupDetailResponseCopyWith(
    FfiGroupDetailResponse value,
    $Res Function(FfiGroupDetailResponse) then,
  ) = _$FfiGroupDetailResponseCopyWithImpl<$Res, FfiGroupDetailResponse>;
  @useResult
  $Res call({
    FfiGroupBase? group,
    String groupNickName,
    bool bfTop,
    bool bfStar,
    bool bfDisturb,
    bool bfAddress,
    int memberType,
    bool bfMember,
    String qrUrl,
    int qrExpire,
    bool bfResetQrcode,
  });

  $FfiGroupBaseCopyWith<$Res>? get group;
}

/// @nodoc
class _$FfiGroupDetailResponseCopyWithImpl<
  $Res,
  $Val extends FfiGroupDetailResponse
>
    implements $FfiGroupDetailResponseCopyWith<$Res> {
  _$FfiGroupDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfiGroupDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = freezed,
    Object? groupNickName = null,
    Object? bfTop = null,
    Object? bfStar = null,
    Object? bfDisturb = null,
    Object? bfAddress = null,
    Object? memberType = null,
    Object? bfMember = null,
    Object? qrUrl = null,
    Object? qrExpire = null,
    Object? bfResetQrcode = null,
  }) {
    return _then(
      _value.copyWith(
            group:
                freezed == group
                    ? _value.group
                    : group // ignore: cast_nullable_to_non_nullable
                        as FfiGroupBase?,
            groupNickName:
                null == groupNickName
                    ? _value.groupNickName
                    : groupNickName // ignore: cast_nullable_to_non_nullable
                        as String,
            bfTop:
                null == bfTop
                    ? _value.bfTop
                    : bfTop // ignore: cast_nullable_to_non_nullable
                        as bool,
            bfStar:
                null == bfStar
                    ? _value.bfStar
                    : bfStar // ignore: cast_nullable_to_non_nullable
                        as bool,
            bfDisturb:
                null == bfDisturb
                    ? _value.bfDisturb
                    : bfDisturb // ignore: cast_nullable_to_non_nullable
                        as bool,
            bfAddress:
                null == bfAddress
                    ? _value.bfAddress
                    : bfAddress // ignore: cast_nullable_to_non_nullable
                        as bool,
            memberType:
                null == memberType
                    ? _value.memberType
                    : memberType // ignore: cast_nullable_to_non_nullable
                        as int,
            bfMember:
                null == bfMember
                    ? _value.bfMember
                    : bfMember // ignore: cast_nullable_to_non_nullable
                        as bool,
            qrUrl:
                null == qrUrl
                    ? _value.qrUrl
                    : qrUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            qrExpire:
                null == qrExpire
                    ? _value.qrExpire
                    : qrExpire // ignore: cast_nullable_to_non_nullable
                        as int,
            bfResetQrcode:
                null == bfResetQrcode
                    ? _value.bfResetQrcode
                    : bfResetQrcode // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of FfiGroupDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FfiGroupBaseCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $FfiGroupBaseCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FfiGroupDetailResponseImplCopyWith<$Res>
    implements $FfiGroupDetailResponseCopyWith<$Res> {
  factory _$$FfiGroupDetailResponseImplCopyWith(
    _$FfiGroupDetailResponseImpl value,
    $Res Function(_$FfiGroupDetailResponseImpl) then,
  ) = __$$FfiGroupDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    FfiGroupBase? group,
    String groupNickName,
    bool bfTop,
    bool bfStar,
    bool bfDisturb,
    bool bfAddress,
    int memberType,
    bool bfMember,
    String qrUrl,
    int qrExpire,
    bool bfResetQrcode,
  });

  @override
  $FfiGroupBaseCopyWith<$Res>? get group;
}

/// @nodoc
class __$$FfiGroupDetailResponseImplCopyWithImpl<$Res>
    extends
        _$FfiGroupDetailResponseCopyWithImpl<$Res, _$FfiGroupDetailResponseImpl>
    implements _$$FfiGroupDetailResponseImplCopyWith<$Res> {
  __$$FfiGroupDetailResponseImplCopyWithImpl(
    _$FfiGroupDetailResponseImpl _value,
    $Res Function(_$FfiGroupDetailResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FfiGroupDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = freezed,
    Object? groupNickName = null,
    Object? bfTop = null,
    Object? bfStar = null,
    Object? bfDisturb = null,
    Object? bfAddress = null,
    Object? memberType = null,
    Object? bfMember = null,
    Object? qrUrl = null,
    Object? qrExpire = null,
    Object? bfResetQrcode = null,
  }) {
    return _then(
      _$FfiGroupDetailResponseImpl(
        group:
            freezed == group
                ? _value.group
                : group // ignore: cast_nullable_to_non_nullable
                    as FfiGroupBase?,
        groupNickName:
            null == groupNickName
                ? _value.groupNickName
                : groupNickName // ignore: cast_nullable_to_non_nullable
                    as String,
        bfTop:
            null == bfTop
                ? _value.bfTop
                : bfTop // ignore: cast_nullable_to_non_nullable
                    as bool,
        bfStar:
            null == bfStar
                ? _value.bfStar
                : bfStar // ignore: cast_nullable_to_non_nullable
                    as bool,
        bfDisturb:
            null == bfDisturb
                ? _value.bfDisturb
                : bfDisturb // ignore: cast_nullable_to_non_nullable
                    as bool,
        bfAddress:
            null == bfAddress
                ? _value.bfAddress
                : bfAddress // ignore: cast_nullable_to_non_nullable
                    as bool,
        memberType:
            null == memberType
                ? _value.memberType
                : memberType // ignore: cast_nullable_to_non_nullable
                    as int,
        bfMember:
            null == bfMember
                ? _value.bfMember
                : bfMember // ignore: cast_nullable_to_non_nullable
                    as bool,
        qrUrl:
            null == qrUrl
                ? _value.qrUrl
                : qrUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        qrExpire:
            null == qrExpire
                ? _value.qrExpire
                : qrExpire // ignore: cast_nullable_to_non_nullable
                    as int,
        bfResetQrcode:
            null == bfResetQrcode
                ? _value.bfResetQrcode
                : bfResetQrcode // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$FfiGroupDetailResponseImpl implements _FfiGroupDetailResponse {
  const _$FfiGroupDetailResponseImpl({
    this.group,
    required this.groupNickName,
    required this.bfTop,
    required this.bfStar,
    required this.bfDisturb,
    required this.bfAddress,
    required this.memberType,
    required this.bfMember,
    required this.qrUrl,
    required this.qrExpire,
    required this.bfResetQrcode,
  });

  @override
  final FfiGroupBase? group;
  @override
  final String groupNickName;
  @override
  final bool bfTop;
  @override
  final bool bfStar;
  @override
  final bool bfDisturb;
  @override
  final bool bfAddress;
  @override
  final int memberType;
  @override
  final bool bfMember;
  @override
  final String qrUrl;
  @override
  final int qrExpire;
  @override
  final bool bfResetQrcode;

  @override
  String toString() {
    return 'FfiGroupDetailResponse(group: $group, groupNickName: $groupNickName, bfTop: $bfTop, bfStar: $bfStar, bfDisturb: $bfDisturb, bfAddress: $bfAddress, memberType: $memberType, bfMember: $bfMember, qrUrl: $qrUrl, qrExpire: $qrExpire, bfResetQrcode: $bfResetQrcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfiGroupDetailResponseImpl &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.groupNickName, groupNickName) ||
                other.groupNickName == groupNickName) &&
            (identical(other.bfTop, bfTop) || other.bfTop == bfTop) &&
            (identical(other.bfStar, bfStar) || other.bfStar == bfStar) &&
            (identical(other.bfDisturb, bfDisturb) ||
                other.bfDisturb == bfDisturb) &&
            (identical(other.bfAddress, bfAddress) ||
                other.bfAddress == bfAddress) &&
            (identical(other.memberType, memberType) ||
                other.memberType == memberType) &&
            (identical(other.bfMember, bfMember) ||
                other.bfMember == bfMember) &&
            (identical(other.qrUrl, qrUrl) || other.qrUrl == qrUrl) &&
            (identical(other.qrExpire, qrExpire) ||
                other.qrExpire == qrExpire) &&
            (identical(other.bfResetQrcode, bfResetQrcode) ||
                other.bfResetQrcode == bfResetQrcode));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    group,
    groupNickName,
    bfTop,
    bfStar,
    bfDisturb,
    bfAddress,
    memberType,
    bfMember,
    qrUrl,
    qrExpire,
    bfResetQrcode,
  );

  /// Create a copy of FfiGroupDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfiGroupDetailResponseImplCopyWith<_$FfiGroupDetailResponseImpl>
  get copyWith =>
      __$$FfiGroupDetailResponseImplCopyWithImpl<_$FfiGroupDetailResponseImpl>(
        this,
        _$identity,
      );
}

abstract class _FfiGroupDetailResponse implements FfiGroupDetailResponse {
  const factory _FfiGroupDetailResponse({
    final FfiGroupBase? group,
    required final String groupNickName,
    required final bool bfTop,
    required final bool bfStar,
    required final bool bfDisturb,
    required final bool bfAddress,
    required final int memberType,
    required final bool bfMember,
    required final String qrUrl,
    required final int qrExpire,
    required final bool bfResetQrcode,
  }) = _$FfiGroupDetailResponseImpl;

  @override
  FfiGroupBase? get group;
  @override
  String get groupNickName;
  @override
  bool get bfTop;
  @override
  bool get bfStar;
  @override
  bool get bfDisturb;
  @override
  bool get bfAddress;
  @override
  int get memberType;
  @override
  bool get bfMember;
  @override
  String get qrUrl;
  @override
  int get qrExpire;
  @override
  bool get bfResetQrcode;

  /// Create a copy of FfiGroupDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfiGroupDetailResponseImplCopyWith<_$FfiGroupDetailResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
