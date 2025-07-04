// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.9.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'user.dart';
part '../../../../generated/src/rust/api/model/login.freezed.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `clone`, `clone`, `fmt`, `fmt`, `fmt`

/// Simplified login response for FFI.
@freezed
class FfiLoginResponse with _$FfiLoginResponse {
  const factory FfiLoginResponse({
    FfiUserBase? user,
    required String sessionId,
    FfiUrlInfo? urls,
    required PlatformInt64 serverTime,
    required String token,
    required String inviteCode,
  }) = _FfiLoginResponse;
}

/// Simplified registration response for FFI.
@freezed
class FfiRegResponse with _$FfiRegResponse {
  const factory FfiRegResponse({
    FfiUserBase? user,
    required String sessionId,
    FfiUrlInfo? urls,
    required PlatformInt64 serverTime,
    required String token,
    required String inviteCode,
    required int keyVersion,
  }) = _FfiRegResponse;
}

/// Essential URL information needed by the client immediately after login.
@freezed
class FfiUrlInfo with _$FfiUrlInfo {
  const factory FfiUrlInfo({
    required String biz,
    required String session,
    required String friend,
    required String group,
    required String staticMap,
    required String download,
    required String login,
    required String config,
    required String wss,
    required int socketProtocol,
    required int uploadServer,
    required String uploadUrl,
    required String walletUrl,
    required String newsUrl,
    required String otcUrl,
    required String redPacketUrl,
    required String paymentUrl,
  }) = _FfiUrlInfo;
}
