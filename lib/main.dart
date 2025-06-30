import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart'; // For kIsWeb
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openchat_client/src/features/connection/blocs/connection_status_bloc.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/services/emotion_service.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'src/core/router/app_router.dart';
import 'src/rust/api/app_api.dart' as rust_app;
import 'src/rust/api/login_api.dart' as rust_login;
import 'src/rust/api/model/client_info.dart'; // Import FfiClientInfo
import 'src/rust/api/model/login.dart'; // Import FfiLoginResponse
import 'src/rust/frb_generated.dart';
import 'src/core/utils/log.dart';
import 'src/features/auth/blocs/auth_bloc_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:openchat_client/src/features/common/utils/emoji_chat/emoji_utils.dart';
import 'package:openchat_client/src/rust/api/model/ffi_init_params.dart';

// 应用相关常量
const String kAppInitializedKey = 'app_initialized';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 使用SharedPreferences替代FlutterSecureStorage
  final prefs = await SharedPreferences.getInstance();

  // 创建一个ProviderContainer以便在runApp之前操作状态
  final container = ProviderContainer();

  // 创建AuthService实例以获取会话信息
  // final authService = AuthService();
  // String? sessionId = await authService.getSessionId();
  // String? token = await authService.getAuthToken();

  // 检查应用是否首次初始化（使用SharedPreferences）
  bool isFirstLaunch = false;
  try {
    final initialized = prefs.getBool(kAppInitializedKey);
    isFirstLaunch = initialized == null || initialized == false;
    debugPrint(isFirstLaunch ? "🆕 应用首次启动" : "♻️ 应用非首次启动");
  } catch (e) {
    debugPrint("⚠️ 无法读取应用初始化状态: $e");
    isFirstLaunch = true; // 如果无法读取，保守地假设是首次启动
  }

  // 收集客户端信息
  final sdkConfig = await _gatherClientInfo();
  String? sessionId = sdkConfig.clientInfo.sessionId;
  String? token = sessionId;

  if (sessionId != null) {
    debugPrint(
      "✅ 发现已存在的会话信息: sessionId=${sessionId.substring(0, min(5, sessionId.length))}...",
    );
  } else {
    debugPrint("⚠️ 未找到现有会话信息");
  }
  // 尝试初始化Rust库
  try {
    // 初始化Rust库
    debugPrint("🚀 正在初始化Rust库...");

    // 注意: 这里使用默认的init，让rust_builder能正常工作
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

    // try {
    //   // 订阅消息流
    //   MessageDispatcher messageDispatcher = MessageDispatcher();
    //   messageDispatcher.getMessageStream();
    //   debugPrint("✅ 订阅消息流完成");
    // } catch (e) {
    //   debugPrint("❌ 订阅消息流失败: $e");
    // }


    await EmojiUtils.preloadEmojiResource();

    // 初始化Rust 应用(App启动后配置的静态信息)
    await rust_app.initApp(clientInfo: sdkConfig.clientInfo, initParams: sdkConfig.initParams, uid: sdkConfig.uid);
    debugPrint("✅ Rust客户端配置完成");
    if (sdkConfig.uid <= 0) {
      // 模拟登录 用户登录成功或切换用户后会变化的内容
      debugPrint("开始账号密码登录");
      final loginResponse = await rust_login.loginByPassword(countryCode: sdkConfig.contryCode, phone: sdkConfig.phone, password: sdkConfig.password);
      debugPrint("🔑 登录成功: ${loginResponse.sessionId}");
      await rust_app.updateUserConfig(uid: loginResponse.user?.uid ?? 0, sessionId: loginResponse.sessionId, urls: loginResponse.urls);
    }
    // 模拟登录
  } catch (e) {
    debugPrint("❌ Rust库初始化失败: $e");
    // 在开发模式下打印详细错误
    if (kDebugMode) {
      print("详细错误信息: $e");
    }
  }


  // 测试环境 获取游戏配置 
  EmotionService().initialize(); 

  // 使用ProviderScope运行应用以继承已初始化的container
  runApp(
    ProviderScope(
      parent: container,
      child: AppInitializer(
        hasSession: sessionId != null && token != null,
        isFirstLaunch: isFirstLaunch,
        prefs: prefs, // 传递prefs实例
      ),
    ),
  );
}

class InitSDKConfig {
  late FfiClientInfo clientInfo;
  late FfiInitParams initParams;
  late int uid;
  late String contryCode;
  late String phone;
  late String password;
}
int min(int a, int b) => a < b ? a : b;

/// 应用初始化器组件，负责一次性初始化操作
class AppInitializer extends StatefulWidget {
  final bool hasSession;
  final bool isFirstLaunch;
  final SharedPreferences prefs;

  const AppInitializer({
    super.key,
    required this.hasSession,
    required this.isFirstLaunch,
    required this.prefs,
  });

  @override
  _AppInitializerState createState() => _AppInitializerState();
}

class _AppInitializerState extends State<AppInitializer> {
  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // 仅在第一次调用时执行初始化
    if (!_initialized) {
      _initialized = true;
      _performBackgroundInitialization();
    }
  }

  /// 执行后台初始化操作
  Future<void> _performBackgroundInitialization() async {
    Log.info('应用启动: 开始后台初始化');

    if (widget.isFirstLaunch) {
      try {
        // 异步初始化表数据
        await rust_app.initTableData();

        // 成功初始化后保存状态（使用SharedPreferences）
        await widget.prefs.setBool(kAppInitializedKey, true);

        Log.info('✅ 表数据初始化完成');
      } catch (e) {
        Log.error('❌ 表数据初始化失败: $e');
      }
    }

    // 初始化全局消息监听
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // 使用Provider.of获取notifier
      if (widget.hasSession) {
        Log.info('应用启动: 检查认证状态');
        final notifier = ProviderScope.containerOf(
          context,
        ).read(authBlocNotifierProvider.notifier);
        notifier.checkAuth();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // 直接返回实际的应用组件
    return MyApp(
      hasSession: widget.hasSession,
      isFirstLaunch: widget.isFirstLaunch,
    );
  }
}

class MyApp extends ConsumerWidget {
  final bool hasSession;
  final bool isFirstLaunch;

  const MyApp({super.key, this.hasSession = false, this.isFirstLaunch = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Log.info('应用启动: 渲染UI(hasSession=$hasSession)');

    // 使用GoRouter，路由逻辑已经在app_router.dart中配置
    final router = ref.watch(goRouterProvider);

    // 正常显示应用程序
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

/// 用于记录导航事件的观察器
class _LoggingNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    Log.info(
      '导航: 推入新路由 ${route.settings.name} (从 ${previousRoute?.settings.name ?? "无"})',
    );
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    Log.info(
      '导航: 弹出路由 ${route.settings.name} (返回到 ${previousRoute?.settings.name ?? "无"})',
    );
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    Log.info('导航: 移除路由 ${route.settings.name}');
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    Log.info(
      '导航: 替换路由 ${oldRoute?.settings.name ?? "无"} 为 ${newRoute?.settings.name ?? "无"}',
    );
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
}

/// Gathers device and app information to create FfiClientInfo.
Future<InitSDKConfig> _gatherClientInfo() async {
  // final packageInfo = await PackageInfo.fromPlatform();
  final deviceInfo = DeviceInfoPlugin();
  int platformType = 0;
  String sysMac = "00:00:00:00:00:00";
  String sysModel = "Unknown Model";

  if (!kIsWeb) {
    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      sysModel = androidInfo.model;
      sysMac = androidInfo.serialNumber;
      platformType = 0;
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;
      sysModel = iosInfo.utsname.machine;
      sysMac = iosInfo.identifierForVendor ?? "00:00:00:00:00:00";
      platformType = 1;
    } else {
      sysModel = Platform.operatingSystemVersion;
      platformType = 4;
    }
  } else {
    final webInfo = await deviceInfo.webBrowserInfo;
    sysModel = webInfo.browserName.toString();
    platformType = 3;
  }

  final languageCodePlaceholder = 2;
  final packageCodePlaceholder = 6666;
  final appVerPlaceholder = 566;

  // return FfiClientInfo(
  //   sessionId: sessionId ?? "",
  //   appVer: appVerPlaceholder,
  //   packageCode: packageCodePlaceholder,
  //   plat: platformType,
  //   language: languageCodePlaceholder,
  //   sysMac: sysMac,
  //   sysModel: sysModel,
  // );
    // sessionId: login.response.sessionID
  

  FfiClientInfo clientInfo = FfiClientInfo(
    sessionId: "",
    appVer: 590,
    packageCode: 1000,
    plat: 0,
    language: languageCodePlaceholder,
    sysMac: "a72c8fdc-c708-38e5-a960-c0299160a18bcoin",
    sysModel: "samsungSM-S9110",
  );
  String secretKeyName = "1bea8b5840e67b2f41cc125a7db1e5af";
  String secretKeyValue = "a4da21a8d75a38e8";
  int uid = 0;// +86 16511111121
  String contryCode = "";
  String phone = "452968081@qq.com";
  String password = "Aa123456";

  // blink  "fra1@test.com", password: "Aa123456"
  // FfiClientInfo clientInfo = FfiClientInfo(
  //   sessionId: "",
  //   appVer: 590,
  //   packageCode: 6666,
  //   plat: 1,
  //   language: 2,
  //   sysMac: "26938f5f28e7dffe4195226f1f52ccad4f95bfda",
  //   sysModel: "iPhone 16 Pro Simulator",
  // );
  // String secretKeyName = "9a5b809c8c81ca4979933aba89ba2285";
  // String secretKeyValue = "ca2400d8b85124a5";
  // int uid = 0;
  // String contryCode = "";
  // String phone = "fra1@test.com";
  // String password = "Ab123456";

   // blink  "a1@test.com", password: "123456"
  // FfiClientInfo clientInfo = FfiClientInfo(
  //   sessionId: "",
  //   appVer: 600,
  //   packageCode: 6666,
  //   plat: 1,
  //   language: 2,
  //   sysMac: "5680fedb52598c5c0fcfd0f316221f6a4e46b90c",
  //   sysModel: "iPhone 16 Simulator",
  // );
  // String secretKeyName = "3facb590b0e9f1a8a165b89cde29d107";
  // String secretKeyValue = "e70f18b4278e053a";
  // int uid = 0;
  // String contryCode = "";
  // String phone = "a1@test.com";
  // String password = "123456";

  // rookie  "452968081@qq.com", password: "Aa123456"
  // FfiClientInfo clientInfo = FfiClientInfo(
  //   sessionId: "",
  //   appVer: 590,
  //   packageCode: 1000,
  //   plat: 0,
  //   language: languageCodePlaceholder,
  //   sysMac: "a72c8fdc-c708-38e5-a960-c0299160a18bcoin",
  //   sysModel: "samsungSM-S9110",
  // );
  // String secretKeyName = "1bea8b5840e67b2f41cc125a7db1e5af";
  // String secretKeyValue = "a4da21a8d75a38e8";
  // int uid = 0;
  // String contryCode = "";
  // String phone = "452968081@qq.com";
  // String password = "Aa123456";

  // 获取应用文档目录路径
    String baseDir;
    if (kIsWeb) {
      // Web平台不需要实际的文件系统路径
      baseDir = "/";
    } else {
      final directory = await getApplicationDocumentsDirectory();
      baseDir = directory.path;
      // final dbDir = path.join(appDocDir.path, "openchat");
      // // 确保目录存在
      // await Directory(dbDir).create(recursive: true);
      // dbPath = path.join(dbDir, "openchat.db");
    }
    debugPrint("📁 沙盒路径: $baseDir");

  InitSDKConfig config = InitSDKConfig();
  config.clientInfo = clientInfo;
  config.initParams = FfiInitParams(
    baseDir: baseDir,
    secretKeyName: secretKeyName,
    secretKeyValue: secretKeyValue,
    embedDomianHost: "http://test-domain-api.68chat.co",
    embedDomainOssUrl: "https://storage.googleapis.com/e68-package-dev/backup_url/test/domain_api_backup_url.txt",
    embedLoginHost: "https://test-login.68chat.co",
    embedLoginOssUrl: "https://storage.googleapis.com/e68-package-dev/backup_url/test/backup2_url.txt",
  );
  config.uid = uid;
  config.contryCode = contryCode;
  config.phone = phone;
  config.password = password;
  return config;
}
