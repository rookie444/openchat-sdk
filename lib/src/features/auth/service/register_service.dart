import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/utils/log.dart';
import '../../../rust/api/model/login.dart';
import '../../../rust/api/login_api.dart' as rust_login;
import '../../../rust/pb/common.dart';

part '../../../../generated/src/features/auth/service/register_service.g.dart';

// 使用riverpod的provider简单提供RegisterService实例
@riverpod
RegisterService registerService(Ref ref) {
  return RegisterService();
}

/// 注册API服务
class RegisterService {
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

  /// 发送短信验证码
  ///
  /// [countryCode] 国家代码
  /// [phone] 手机号码
  /// 返回发送是否成功
  Future<bool> sendSMSCode({
    required String countryCode,
    required String phone,
  }) async {
    try {
      Log.info('发送验证码: +$countryCode $phone');

      // 调用验证码接口
      await getSmsCode(countryCode: countryCode, phone: phone);

      Log.info('验证码发送成功');
      return true;
    } catch (e) {
      Log.error('发送验证码异常', error: e);
      return false;
    }
  }

  /// 注册
  ///
  /// [countryCode] 国家代码
  /// [phone] 手机号码
  /// [smsCode] 验证码
  Future<FfiRegResponse> register({
    required String countryCode,
    required String phone,
    required String smsCode,
  }) async {
    try {
      Log.info('尝试注册: +$countryCode $phone');

      // 调用Rust API注册
      final response = await rust_login.register(
        countryCode: countryCode,
        account: phone,
        accountType: AccountType.mobile,
        smsCode: smsCode,
      );

      Log.info('注册成功: ${response.user?.nickName}');
      return response;
    } catch (e, stackTrace) {
      Log.error('注册异常', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }
}
