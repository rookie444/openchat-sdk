import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openchat_client/src/core/router/app_router.dart';
import 'package:openchat_client/src/rust/api/app_api.dart' as rust_app;
import 'package:openchat_client/src/rust/api/login_api.dart' as rust_login;
import 'package:openchat_client/src/rust/api/model/client_info.dart';
import 'package:openchat_client/src/rust/api/model/login.dart';
import 'package:openchat_client/src/rust/frb_generated.dart';
import 'package:openchat_client/src/core/utils/log.dart';
import 'package:openchat_client/src/features/common/utils/emoji_chat/emoji_utils.dart';
import 'package:openchat_client/src/rust/api/model/ffi_init_params.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:openchat_client/src/core/platform/method_channel_handler.dart';

/// OpenChat模块配置类
class OpenChatModuleConfig {
  final String baseDir;
  final String secretKeyName;
  final String secretKeyValue;
  final String embedDomianHost;
  final String embedDomainOssUrl;
  final String embedLoginHost;
  final String embedLoginOssUrl;
  final String countryCode;
  final String phone;
  final String password;
  final int uid;
  final FfiClientInfo clientInfo;

  OpenChatModuleConfig({
    required this.baseDir,
    required this.secretKeyName,
    required this.secretKeyValue,
    required this.embedDomianHost,
    required this.embedDomainOssUrl,
    required this.embedLoginHost,
    required this.embedLoginOssUrl,
    required this.countryCode,
    required this.phone,
    required this.password,
    this.uid = 0,
    required this.clientInfo,
  });
}

/// OpenChat模块管理类
class OpenChatModule {
  static bool _isInitialized = false;
  static OpenChatModuleConfig? _config;

  /// 初始化OpenChat模块
  static Future<void> initialize(OpenChatModuleConfig config) async {
    if (_isInitialized) {
      debugPrint("OpenChat模块已经初始化");
      return;
    }

    _config = config;

    try {
      // 初始化方法通道
      MethodChannelHandler.initialize();

      // 初始化Rust库
      debugPrint("🚀 正在初始化Rust库...");
      await RustLib.init();
      debugPrint("✅ Rust库初始化成功");

      // 初始化Rust日志服务
      try {
        debugPrint("🚀 正在初始化Rust日志服务...");
        Log appLog = Log();
        await appLog.initLogger();
        debugPrint("✅ Rust日志服务初始化完成");
      } catch (e) {
        debugPrint("❌ Rust日志服务初始化失败: $e");
      }

      // 预加载表情资源
      await EmojiUtils.preloadEmojiResource();

      // 初始化Rust应用
      await rust_app.initApp(
        clientInfo: config.clientInfo,
        initParams: FfiInitParams(
          baseDir: config.baseDir,
          secretKeyName: config.secretKeyName,
          secretKeyValue: config.secretKeyValue,
          embedDomianHost: config.embedDomianHost,
          embedDomainOssUrl: config.embedDomainOssUrl,
          embedLoginHost: config.embedLoginHost,
          embedLoginOssUrl: config.embedLoginOssUrl,
        ),
        uid: config.uid,
      );
      debugPrint("✅ Rust客户端配置完成");

      // 如果uid为0，进行登录
      if (config.uid <= 0) {
        debugPrint("开始账号密码登录");
        final loginResponse = await rust_login.loginByPassword(
          countryCode: config.countryCode,
          phone: config.phone,
          password: config.password,
        );
        debugPrint("🔑 登录成功: ${loginResponse.sessionId}");
        await rust_app.updateUserConfig(
          uid: loginResponse.user?.uid ?? 0,
          sessionId: loginResponse.sessionId,
          urls: loginResponse.urls,
        );
      }

      _isInitialized = true;
      debugPrint("✅ OpenChat模块初始化完成");
    } catch (e) {
      debugPrint("❌ OpenChat模块初始化失败: $e");
      rethrow;
    }
  }

  /// 检查模块是否已初始化
  static bool get isInitialized => _isInitialized;

  /// 获取模块配置
  static OpenChatModuleConfig? get config => _config;

  /// 创建OpenChat应用Widget
  static Widget createApp({
    Key? key,
    String initialRoute = '/',
    bool enableDebugLog = false,
  }) {
    if (!_isInitialized) {
      throw StateError("OpenChat模块未初始化，请先调用 OpenChatModule.initialize()");
    }

    return ProviderScope(
      child: OpenChatApp(
        key: key,
        initialRoute: initialRoute,
        enableDebugLog: enableDebugLog,
      ),
    );
  }

  /// 获取当前用户信息
  static Future<FfiLoginResponse?> getCurrentUser() async {
    if (!_isInitialized) {
      throw StateError("OpenChat模块未初始化");
    }

    // 这里可以根据需要实现获取当前用户信息的逻辑
    return null;
  }

  /// 登出
  static Future<void> logout() async {
    if (!_isInitialized) {
      throw StateError("OpenChat模块未初始化");
    }

    // 实现登出逻辑
    _isInitialized = false;
    _config = null;
  }
}

/// OpenChat应用Widget
class OpenChatApp extends ConsumerWidget {
  final String initialRoute;
  final bool enableDebugLog;

  const OpenChatApp({
    super.key,
    this.initialRoute = '/',
    this.enableDebugLog = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Log.info('OpenChat应用启动: 渲染UI');

    // 使用GoRouter，路由逻辑已经在app_router.dart中配置
    final router = ref.watch(goRouterProvider);

    return MaterialApp.router(
      title: 'OpenChat',
      routerConfig: router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      builder: (context, child) {
        return child!;
      },
    );
  }
}

/// 工具类：创建默认配置
class OpenChatModuleHelper {
  /// 创建Android平台的默认配置
  static Future<OpenChatModuleConfig> createAndroidConfig({
    required String phone,
    required String password,
    String countryCode = "",
    int uid = 0,
    String? customBaseDir,
  }) async {
    final directory = await getApplicationDocumentsDirectory();
    final baseDir = customBaseDir ?? directory.path;

    final clientInfo = FfiClientInfo(
      sessionId: "",
      appVer: 590,
      packageCode: 1000,
      plat: 0, // Android平台
      language: 2,
      sysMac: "a72c8fdc-c708-38e5-a960-c0299160a18bcoin",
      sysModel: "samsungSM-S9110",
    );

    return OpenChatModuleConfig(
      baseDir: baseDir,
      secretKeyName: "1bea8b5840e67b2f41cc125a7db1e5af",
      secretKeyValue: "a4da21a8d75a38e8",
      embedDomianHost: "http://test-domain-api.68chat.co",
      embedDomainOssUrl:
          "https://storage.googleapis.com/e68-package-dev/backup_url/test/domain_api_backup_url.txt",
      embedLoginHost: "https://test-login.68chat.co",
      embedLoginOssUrl:
          "https://storage.googleapis.com/e68-package-dev/backup_url/test/backup2_url.txt",
      countryCode: countryCode,
      phone: phone,
      password: password,
      uid: uid,
      clientInfo: clientInfo,
    );
  }
}
