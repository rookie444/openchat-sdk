import 'dart:async';
import 'dart:developer' as developer;
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

import '../../rust/api/app_api.dart' as rust_app;

/// 日志服务
class Log {
  static late final Logger _logger;
  static File? _logFile;
  static bool _logInitialized = false;
  static final _fileLock = Object();
  StreamSubscription<String>? _logSubscription;
  bool _initialized = false;
  final Level _level = Level.info;
  static final DateFormat _dateFormat = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');

  Log() {
    _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 0,
        errorMethodCount: 5,
        lineLength: 120,
        colors: false,
        printEmojis: true,
        noBoxingByDefault: true,
      ),
      level: _level,
      output: MultiOutput([
        ConsoleOutput(),
        // 使用自定义的文件输出,不使用StreamSink
        SimpleFileOutput(_writeToLogFile),
      ]),
    );
  }

  /// 将日志直接写入文件，使用简单的文件IO而不是StreamSink
  static void _writeToLogFile(List<String> lines) {
    // 避免并发问题
    if (!_logInitialized) {
      _tryInitLogFile();
    }

    if (_logFile == null) return;

    try {
      // 直接使用同步文件写入，避免流绑定问题
      final logContent = lines.join('\n') + '\n';
      _logFile!.writeAsStringSync(
        logContent,
        mode: FileMode.append,
        flush: true,
      );
    } catch (e) {
      // 只在Debug模式下打印错误
      if (kDebugMode) {
        print('写入日志文件失败: $e');
      }
      // 标记为未初始化，下次将重新创建
      _logInitialized = false;
    }
  }

  /// 尝试初始化日志文件
  static void _tryInitLogFile() {
    if (_logInitialized) return;

    try {
      // 获取临时目录作为备用选项
      final tempDir = Directory.systemTemp;
      final logDir = Directory('${tempDir.path}/openchat_logs');
      if (!logDir.existsSync()) {
        logDir.createSync(recursive: true);
      }

      final today = DateFormat('yyyy-MM-dd').format(DateTime.now());
      _logFile = File('${logDir.path}/openchat_$today.log');
      _logInitialized = true;

      if (kDebugMode) {
        print('日志文件初始化成功(临时目录): ${_logFile!.path}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('初始化日志文件失败: $e');
      }
      _logInitialized = false;
    }
  }

  /// 记录来自Rust的日志
  void _logFromRust(String message) {
    try {
      // Rust日志已包含时间戳，清理可能的ANSI颜色代码
      message = message.replaceAll(RegExp(r'\^\[\[[0-9;]+m'), '');

      // 提取日志级别
      final level = _determineLogLevel(message);

      // 使用相应的日志级别进行记录 - 不使用tag以避免重复
      switch (level) {
        case Level.debug:
          _logger.d(message);
          break;
        case Level.info:
          _logger.i(message);
          break;
        case Level.warning:
          _logger.w(message);
          break;
        case Level.error:
          _logger.e(message);
          break;
        case Level.fatal:
          _logger.f('❌ FATAL: $message');
          break;
        default:
          // 不处理这些级别
          break;
      }

      // 同时输出到开发者控制台
      if (kDebugMode) {
        developer.log(message, name: level.name.toUpperCase());
      }
    } catch (e) {
      // 保底处理，确保解析日志级别出错时仍能输出日志
      _logger.i(message);
      if (kDebugMode) {
        developer.log('解析日志失败: $e\n原始日志: $message', name: 'LOG_ERROR');
      }
    }
  }

  /// 确定Rust日志的级别
  Level _determineLogLevel(String message) {
    message = message.toLowerCase();
    if (message.contains('fatal') || message.contains('panic')) {
      return Level.fatal;
    } else if (message.contains('error')) {
      return Level.error;
    } else if (message.contains('warn')) {
      return Level.warning;
    } else if (message.contains('info')) {
      return Level.info;
    } else if (message.contains('debug')) {
      return Level.debug;
    } else {
      return Level.trace;
    }
  }

  /// 获取日志文件路径
  static Future<String> getLogFilePath() async {
    if (_logFile != null) {
      return _logFile!.path;
    }

    // 尝试异步获取应用目录中的日志路径
    try {
      Directory? appDir;
      if (Platform.isAndroid) {
        appDir = await getExternalStorageDirectory();
      } else if (Platform.isIOS) {
        appDir = await getApplicationDocumentsDirectory();
      } else {
        appDir = await getApplicationDocumentsDirectory();
      }

      if (appDir == null) {
        return '未能获取应用目录';
      }

      final logDir = Directory('${appDir.path}/logs');
      final today = DateFormat('yyyy-MM-dd').format(DateTime.now());
      return '${logDir.path}/openchat_$today.log';
    } catch (e) {
      return '获取日志路径失败: $e';
    }
  }

  /// 读取日志文件内容
  static Future<String> readLogContent() async {
    try {
      // 如果已有日志文件实例，直接使用
      if (_logFile != null && _logFile!.existsSync()) {
        return _logFile!.readAsStringSync();
      }

      // 否则，尝试通过正常路径获取
      final path = await getLogFilePath();
      final file = File(path);
      if (await file.exists()) {
        return await file.readAsString();
      }

      // 尝试从临时目录读取
      final tempDir = Directory.systemTemp;
      final today = DateFormat('yyyy-MM-dd').format(DateTime.now());
      final tempFile = File(
        '${tempDir.path}/openchat_logs/openchat_$today.log',
      );
      if (tempFile.existsSync()) {
        return tempFile.readAsStringSync();
      }

      return '日志文件未找到';
    } catch (e) {
      return '读取日志失败: $e';
    }
  }

  /// 详细日志 (最低级别)
  static void trace(String message, {String? tag}) {
    _log(Level.trace, message, tag: tag);
  }

  /// 调试日志
  static void debug(String message, {String? tag}) {
    _log(Level.debug, message, tag: tag);
  }

  /// 信息日志
  static void info(String message, {String? tag}) {
    _log(Level.info, message, tag: tag);
  }

  /// 警告日志
  static void warning(String message, {String? tag}) {
    _log(Level.warning, message, tag: tag);
  }

  /// 错误日志
  static void error(
    String message, {
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _log(Level.error, message, tag: tag, error: error, stackTrace: stackTrace);
  }

  /// 严重错误日志
  static void fatal(
    String message, {
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _log(Level.fatal, message, tag: tag, error: error, stackTrace: stackTrace);
  }

  /// 内部日志方法
  static void _log(
    Level level,
    String message, {
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    // 添加时间戳
    final timestamp = _dateFormat.format(DateTime.now());

    // 添加标签
    final taggedMessage =
        tag != null ? '[$timestamp] [$tag] $message' : '[$timestamp] $message';

    // 使用logger包记录
    switch (level) {
      case Level.trace:
        _logger.t(taggedMessage);
        break;
      case Level.debug:
        _logger.d(taggedMessage);
        break;
      case Level.info:
        _logger.i(taggedMessage);
        break;
      case Level.warning:
        _logger.w(taggedMessage);
        break;
      case Level.error:
        _logger.e(taggedMessage, error: error, stackTrace: stackTrace);
        break;
      case Level.fatal:
        _logger.f(taggedMessage, error: error, stackTrace: stackTrace);
        break;
      default:
        // 不处理这些级别
        break;
    }

    // 同时使用开发者控制台记录，以便在DevTools中查看
    if (kDebugMode) {
      developer.log(
        taggedMessage,
        name: level.name.toUpperCase(),
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> initLogger() async {
    if (_initialized) return;

    try {
      // 异步初始化日志文件
      await _initLogFile();

      info('开始初始化Rust日志系统, level: ${_level.name}');
      // 创建日志流
      final logStream = rust_app.initLogger();
      rust_app.setLoggerLevel(level: _level.name);

      _logSubscription = logStream.listen(
        (message) {
          _logFromRust(message);
        },
        onError: (error) {
          error('日志流错误', error: error);
        },
      );
      _initialized = true;
      info('Rust日志系统初始化完成，日志文件路径: ${_logFile?.path}');
    } catch (e, stackTrace) {
      error('Rust日志系统初始化失败', error: e, stackTrace: stackTrace);
    }
  }

  /// 初始化日志文件 (异步版本)
  Future<void> _initLogFile() async {
    try {
      Directory? appDir;
      if (Platform.isAndroid) {
        appDir = await getExternalStorageDirectory();
      } else if (Platform.isIOS) {
        appDir = await getApplicationDocumentsDirectory();
      } else {
        appDir = await getApplicationDocumentsDirectory();
      }

      if (appDir == null) {
        warning('无法获取应用程序目录，日志将使用临时目录');
        _tryInitLogFile(); // 使用临时目录作为备选
        return;
      }

      // 创建日志目录
      final logDir = Directory('${appDir.path}/logs');
      if (!await logDir.exists()) {
        await logDir.create(recursive: true);
      }

      // 使用日期作为文件名
      final today = DateFormat('yyyy-MM-dd').format(DateTime.now());
      _logFile = File('${logDir.path}/openchat_$today.log');
      _logInitialized = true;

      info('日志文件初始化成功: ${_logFile!.path}');
    } catch (e, stackTrace) {
      error('初始化日志文件失败', error: e, stackTrace: stackTrace);
      // 尝试使用临时目录
      _tryInitLogFile();
    }
  }

  /// 关闭日志服务
  void dispose() async {
    _logSubscription?.cancel();
    _logSubscription = null;
  }
}

/// 自定义日志输出实现，使用简单的文件写入
class SimpleFileOutput extends LogOutput {
  final Function(List<String>) writeCallback;

  SimpleFileOutput(this.writeCallback);

  @override
  void output(OutputEvent event) {
    writeCallback(event.lines);
  }
}

/// 多输出实现，同时输出到多个目标
class MultiOutput extends LogOutput {
  final List<LogOutput> outputs;

  MultiOutput(this.outputs);

  @override
  void output(OutputEvent event) {
    for (var output in outputs) {
      output.output(event);
    }
  }
}
