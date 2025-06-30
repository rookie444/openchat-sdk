import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/utils/log.dart';
import '../../../rust/api/model/user.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert';

part '../../../../generated/src/features/auth/service/auth_service.g.dart';

// 使用riverpod的provider简单提供AuthService实例
@riverpod
AuthService authService(Ref ref) {
  return AuthService();
}

class AuthService {
  final _storage = const FlutterSecureStorage();
  final _userKey = 'user_info';
  final _tokenKey = 'auth_token';
  final _sessionIdKey = 'session_id';

  /// 检查认证状态
  Future<FfiUserBase?> checkAuthStatus() async {
    try {
      final userString = await _storage.read(key: _userKey);
      if (userString == null) {
        return null;
      }

      final Map<String, dynamic> userJson = jsonDecode(userString);
      return FfiUserBase(
        uid: userJson['uid'] as int,
        nickName: userJson['nickName'] as String,
        avatar: userJson['avatar'] as String,
      );
    } catch (e, stackTrace) {
      Log.error('读取用户信息失败', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  /// 获取认证令牌
  Future<String?> getAuthToken() async {
    try {
      return await _storage.read(key: _tokenKey);
    } catch (e, stackTrace) {
      Log.error('读取令牌失败', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  /// 获取会话ID
  Future<String?> getSessionId() async {
    try {
      return await _storage.read(key: _sessionIdKey);
    } catch (e, stackTrace) {
      Log.error('读取会话ID失败', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  /// 保存认证信息
  Future<void> saveAuthInfo(
    FfiUserBase user,
    String token,
    String sessionId,
  ) async {
    try {
      final userJson = {
        'uid': user.uid,
        'nickName': user.nickName,
        'avatar': user.avatar,
      };

      await _storage.write(key: _userKey, value: jsonEncode(userJson));
      await _storage.write(key: _tokenKey, value: token);
      await _storage.write(key: _sessionIdKey, value: sessionId);
      Log.info('保存用户信息成功: ${user.nickName}, sessionId: $sessionId');
    } catch (e, stackTrace) {
      Log.error('保存用户信息失败', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  /// 登出
  Future<void> logout() async {
    try {
      await _storage.delete(key: _userKey);
      await _storage.delete(key: _tokenKey);
      await _storage.delete(key: _sessionIdKey);
      Log.info('用户登出成功');
    } catch (e, stackTrace) {
      Log.error('用户登出失败', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }
}
