import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:openchat_client/module_entry.dart';
import 'package:openchat_client/src/rust/api/model/login.dart';

/// Flutter端方法通道处理器
class MethodChannelHandler {
  static const MethodChannel _channel = MethodChannel(
    'com.example.openchat_client/sdk',
  );

  static void initialize() {
    _channel.setMethodCallHandler(_handleMethodCall);
  }

  static Future<dynamic> _handleMethodCall(MethodCall call) async {
    try {
      switch (call.method) {
        case 'initialize':
          return await _handleInitialize(call.arguments);
        case 'getCurrentUser':
          return await _handleGetCurrentUser();
        case 'logout':
          return await _handleLogout();
        default:
          throw PlatformException(
            code: 'UNSUPPORTED_METHOD',
            message: '不支持的方法: ${call.method}',
          );
      }
    } catch (e) {
      throw PlatformException(code: 'METHOD_CALL_ERROR', message: '方法调用错误: $e');
    }
  }

  /// 处理初始化请求
  static Future<bool> _handleInitialize(dynamic arguments) async {
    try {
      if (arguments is Map) {
        final phone = arguments['phone'] as String? ?? '';
        final password = arguments['password'] as String? ?? '';
        final countryCode = arguments['countryCode'] as String? ?? '';
        final uid = arguments['uid'] as int? ?? 0;
        final customBaseDir = arguments['customBaseDir'] as String?;

        // 创建配置
        final config = await OpenChatModuleHelper.createAndroidConfig(
          phone: phone,
          password: password,
          countryCode: countryCode,
          uid: uid,
          customBaseDir: customBaseDir,
        );

        // 初始化模块
        await OpenChatModule.initialize(config);
        return true;
      } else {
        throw ArgumentError('初始化参数格式错误');
      }
    } catch (e) {
      print('初始化失败: $e');
      return false;
    }
  }

  /// 处理获取当前用户信息请求
  static Future<Map<String, dynamic>?> _handleGetCurrentUser() async {
    try {
      final user = await OpenChatModule.getCurrentUser();
      if (user != null) {
        return {
          'uid': user.user?.uid.toInt ?? 0,
          'sessionId': user.sessionId ?? '',
          'nickName': user.user?.nickName ?? '',
          'avatar': user.user?.avatar ?? '',
        };
      }
      return null;
    } catch (e) {
      print('获取用户信息失败: $e');
      return null;
    }
  }

  /// 处理登出请求
  static Future<bool> _handleLogout() async {
    try {
      await OpenChatModule.logout();
      return true;
    } catch (e) {
      print('登出失败: $e');
      return false;
    }
  }
}
