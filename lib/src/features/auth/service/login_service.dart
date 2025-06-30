import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/utils/log.dart';
import '../../../rust/api/model/login.dart';
import '../../../rust/api/login_api.dart' as rust_login;

part '../../../../generated/src/features/auth/service/login_service.g.dart';

// 使用riverpod的provider简单提供LoginService实例
@riverpod
LoginService loginService(Ref ref) {
  return LoginService();
}

/// 登录API服务
class LoginService {
  /// 获取短信验证码
  ///
  /// [countryCode] 国家代码
  /// [phone] 手机号码
  Future<void> getSmsCode({
    required String countryCode,
    required String phone,
  }) async {
    try {
      Log.info('发送验证码到: +$countryCode $phone');

      // 调用Rust API获取验证码
      await rust_login.getSmsCode(countryCode: countryCode, phone: phone);

      Log.info('验证码发送成功: +$countryCode $phone');
    } catch (e, stackTrace) {
      Log.error('获取验证码异常', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  /// 登录
  ///
  /// [countryCode] 国家代码
  /// [phone] 手机号码
  /// [smsCode] 验证码
  Future<FfiLoginResponse> login({
    required String countryCode,
    required String phone,
    required String smsCode,
  }) async {
    try {
      Log.info('尝试验证码登录: +$countryCode $phone');

      // 调用Rust API登录
      final response = await rust_login.login(
        countryCode: countryCode,
        phone: phone,
        smsCode: smsCode,
      );

      Log.info('登录成功: ${response.user?.nickName}');
      return response;
    } catch (e, stackTrace) {
      Log.error('登录异常', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  /// 密码登录
  ///
  /// [countryCode] 国家代码
  /// [phone] 手机号码
  /// [password] 密码
  Future<FfiLoginResponse> loginWithPassword({
    required String countryCode,
    required String phone,
    required String password,
  }) async {
    try {
      Log.info('尝试密码登录: +$countryCode $phone');

      // 由于Rust API还没有实现密码登录，暂时复用验证码登录的API
      // TODO: 实现密码登录API后替换
      final response = await rust_login.login(
        countryCode: countryCode,
        phone: phone,
        smsCode: password, // 暂时用密码替代验证码
      );

      Log.info('登录成功: ${response.user?.nickName}');
      return response;
    } catch (e, stackTrace) {
      Log.error('密码登录异常', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }
}
