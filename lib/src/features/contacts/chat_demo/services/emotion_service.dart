import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:openchat_client/src/core/utils/log.dart';
import 'package:openchat_client/src/rust/api/download_api.dart'
    as rust_download;
import 'package:openchat_client/src/rust/api/download_api.dart';
import 'package:openchat_client/src/rust/api/emotion_api.dart' as rust_emotion;
import 'package:openchat_client/src/rust/api/model/ffi_emotion_model.dart';

/// 表情包API服务
class EmotionService {
  static final EmotionService _instance = EmotionService._internal();
  factory EmotionService() => _instance;
  EmotionService._internal();

  List<FfiEmoticonBase> emoticonArray = [];
  List<FfiEmoticonBase> allEmoticonArray = [];
  List<FfiAnimatedGameConfig> animatedGameList = [];
  List<FfiAnimatedGameConfig> displayAnimatedGameList = [];

  // GIF内存缓存相关
  final Map<String, Uint8List> _gifMemoryCache = {}; // 缓存GIF文件内容到内存
  final Map<String, DateTime> _cacheTimestamps = {}; // 缓存时间戳
  final Map<String, String> _pathCache = {}; // 文件路径缓存
  final Map<String, String> _gameGifIndex =
      {}; // 游戏GIF索引: "gameId_fileName" -> filePath
  static const Duration _cacheExpiration = Duration(hours: 8); // 内存缓存2小时过期
  static const int _maxCacheSize = 50; // 最大缓存50个文件，避免内存溢出

  FfiAnimatedGameConfig? animatedGame(int? gameId) {
    return animatedGameList.where((game) => game.gameId == gameId).firstOrNull;
  }

  List<FfiAnimatedGameConfig> get visibleAnimatedGameList {
    return animatedGameList.where((game) => game.isDisplay).toList();
  }

  //匹配gameid 返回 FfiAnimatedGameConfig 的iconName
  String? animatedGameIcon(int? gameId) {
    return animatedGame(gameId)?.iconName ?? '';
  }

  String? animatedGameName(int? gameId) {
    return animatedGame(gameId)?.gameName ?? '';
  }

  String? animatedGameCurrentImage(int? gameId, String? currentImage) {
    final game = animatedGame(gameId);
    if (game == null) return null;

    // 这里需要根据实际的FfiAnimatedGameConfig结构来实现
    // 假设有一个方法来获取当前图片路径
    return game.iconName; // 临时实现，需要根据实际结构调整
  }

  Size? animatedGameWH(int? gameId) {
    final game = animatedGame(gameId);
    if (game == null) return null;

    // 返回默认大小，需要根据实际的FfiAnimatedGameConfig结构调整
    return const Size(100, 100); // 临时实现
  }

  /// 检查内存缓存是否过期
  bool _isCacheExpired(String key) {
    final timestamp = _cacheTimestamps[key];
    if (timestamp == null) return true;
    return DateTime.now().difference(timestamp) > _cacheExpiration;
  }

  /// 生成缓存键
  String _generateCacheKey(String filePath) {
    return filePath.hashCode.toString();
  }

  /// 清理过期的内存缓存
  void cleanExpiredMemoryCache() {
    final now = DateTime.now();
    final expiredKeys = <String>[];

    _cacheTimestamps.forEach((key, timestamp) {
      if (now.difference(timestamp) > _cacheExpiration) {
        expiredKeys.add(key);
      }
    });

    for (final key in expiredKeys) {
      final filePath = _pathCache[key];
      _gifMemoryCache.remove(key);
      _cacheTimestamps.remove(key);
      _pathCache.remove(key);

      // 同时清理游戏GIF索引
      if (filePath != null) {
        _cleanupGameGifIndex(filePath);
      }
    }

    if (expiredKeys.isNotEmpty) {
      Log.info('清理过期内存缓存: ${expiredKeys.length} 个文件');
    }
  }

  /// 检查缓存大小并清理最旧的条目
  void _maintainCacheSize() {
    if (_gifMemoryCache.length <= _maxCacheSize) return;

    // 按时间戳排序，删除最旧的条目
    final sortedEntries =
        _cacheTimestamps.entries.toList()
          ..sort((a, b) => a.value.compareTo(b.value));

    final toRemove = sortedEntries.length - _maxCacheSize;
    for (int i = 0; i < toRemove; i++) {
      final key = sortedEntries[i].key;
      final filePath = _pathCache[key];

      _gifMemoryCache.remove(key);
      _cacheTimestamps.remove(key);
      _pathCache.remove(key);

      // 同时清理游戏GIF索引
      if (filePath != null) {
        _cleanupGameGifIndex(filePath);
      }
    }

    Log.info('维护缓存大小: 删除 $toRemove 个最旧的缓存条目');
  }

  /// 清理游戏GIF索引中的指定文件路径
  void _cleanupGameGifIndex(String filePath) {
    final keysToRemove = <String>[];
    _gameGifIndex.forEach((indexKey, path) {
      if (path == filePath) {
        keysToRemove.add(indexKey);
      }
    });

    for (final key in keysToRemove) {
      _gameGifIndex.remove(key);
    }
  }

  /// 生成游戏GIF索引键
  String _generateGameGifIndexKey(int gameId, String fileName) {
    return '${gameId}_$fileName';
  }

  /// 从文件路径提取文件名（不含扩展名）
  String _extractFileName(String filePath) {
    final fileName = filePath.split('/').last;
    final dotIndex = fileName.lastIndexOf('.');
    return dotIndex > 0 ? fileName.substring(0, dotIndex) : fileName;
  }

  /// 从文件路径提取完整文件名（含扩展名）
  String _extractFullFileName(String filePath) {
    return filePath.split('/').last;
  }

  /// 从内存缓存获取GIF数据
  Uint8List? getCachedGifData(String filePath) {
    final key = _generateCacheKey(filePath);

    if (_gifMemoryCache.containsKey(key) && !_isCacheExpired(key)) {
      Log.info('从内存缓存获取GIF: $filePath');
      return _gifMemoryCache[key];
    }

    return null;
  }

  /// 将GIF文件内容缓存到内存
  Future<Uint8List?> loadAndCacheGifFile(String filePath, {int? gameId}) async {
    try {
      // 先检查内存缓存
      final cachedData = getCachedGifData(filePath);
      if (cachedData != null) {
        return cachedData;
      }

      // 检查文件是否存在
      final file = File(filePath);
      if (!file.existsSync()) {
        Log.warning('GIF文件不存在: $filePath');
        return null;
      }

      Log.info('从磁盘加载GIF文件: $filePath');

      // 读取文件内容到内存
      final bytes = await file.readAsBytes();

      // 缓存到内存
      final key = _generateCacheKey(filePath);
      _gifMemoryCache[key] = bytes;
      _cacheTimestamps[key] = DateTime.now();
      _pathCache[key] = filePath;

      // 更新游戏GIF索引
      if (gameId != null) {
        _updateGameGifIndex(gameId, filePath);
      } else {
        // 尝试从路径中提取游戏ID
        final extractedGameId = _extractGameIdFromPath(filePath);
        if (extractedGameId != null) {
          _updateGameGifIndex(extractedGameId, filePath);
        }
      }

      // 维护缓存大小
      _maintainCacheSize();

      Log.info('GIF文件已缓存到内存: $filePath (${bytes.length} bytes)');
      return bytes;
    } catch (e, stackTrace) {
      Log.error('加载GIF文件失败: $filePath, 错误: $e', stackTrace: stackTrace);
      return null;
    }
  }

  /// 更新游戏GIF索引
  void _updateGameGifIndex(int gameId, String filePath) {
    try {
      // 添加不含扩展名的文件名索引
      final fileName = _extractFileName(filePath);
      final indexKey1 = _generateGameGifIndexKey(gameId, fileName);
      _gameGifIndex[indexKey1] = filePath;

      // 添加完整文件名索引
      final fullFileName = _extractFullFileName(filePath);
      final indexKey2 = _generateGameGifIndexKey(gameId, fullFileName);
      _gameGifIndex[indexKey2] = filePath;

      Log.debug('更新游戏GIF索引: $indexKey1 -> $filePath');
      Log.debug('更新游戏GIF索引: $indexKey2 -> $filePath');
    } catch (e) {
      Log.error('更新游戏GIF索引失败: gameId=$gameId, filePath=$filePath, 错误: $e');
    }
  }

  /// 从文件路径中提取游戏ID
  int? _extractGameIdFromPath(String filePath) {
    try {
      // 假设路径格式为: AnimatedGame/{gameId}/...
      final parts = filePath.split('/');
      final animatedGameIndex = parts.lastIndexOf('AnimatedGame');
      if (animatedGameIndex != -1 && animatedGameIndex + 1 < parts.length) {
        return int.tryParse(parts[animatedGameIndex + 1]);
      }
    } catch (e) {
      Log.debug('从路径提取游戏ID失败: $filePath, 错误: $e');
    }
    return null;
  }

  /// 🎯 通过游戏ID和GIF文件名获取缓存数据（新增核心方法）
  Future<Uint8List?> getGameGifByName(int gameId, String fileName) async {
    try {
      // 生成索引键（支持带扩展名和不带扩展名的文件名）
      final indexKey1 = _generateGameGifIndexKey(gameId, fileName);
      final indexKey2 =
          fileName.endsWith('.gif')
              ? _generateGameGifIndexKey(
                gameId,
                fileName.substring(0, fileName.length - 4),
              )
              : _generateGameGifIndexKey(gameId, '$fileName.gif');

      // 查找索引键对应的文件路径
      final filePath = _gameGifIndex[indexKey1] ?? _gameGifIndex[indexKey2];

      if (filePath != null) {
        Log.info(
          '通过索引找到GIF文件: gameId=$gameId, fileName=$fileName -> $filePath',
        );
        return getCachedGifData(filePath);
      }

      // 如果索引中没有找到，尝试直接搜索并缓存
      Log.info('索引中未找到，尝试直接搜索: gameId=$gameId, fileName=$fileName');
      return await _searchAndCacheGameGif(gameId, fileName);
    } catch (e, stackTrace) {
      Log.error(
        '通过游戏ID和文件名获取GIF失败: gameId=$gameId, fileName=$fileName, 错误: $e',
        stackTrace: stackTrace,
      );
      return null;
    }
  }

  /// 搜索并缓存游戏GIF文件
  Future<Uint8List?> _searchAndCacheGameGif(int gameId, String fileName) async {
    try {
      final gifPaths = await getGameGifPaths(gameId);

      // 查找匹配的文件
      String? matchedPath;
      for (final path in gifPaths) {
        final pathFileName = _extractFileName(path);
        final pathFullFileName = _extractFullFileName(path);

        // 支持多种匹配方式
        if (pathFileName == fileName ||
            pathFullFileName == fileName ||
            pathFileName == fileName.replaceAll('.gif', '') ||
            pathFullFileName == '$fileName.gif') {
          matchedPath = path;
          break;
        }
      }

      if (matchedPath != null) {
        Log.info('搜索到匹配的GIF文件: $matchedPath');
        return await loadAndCacheGifFile(matchedPath, gameId: gameId);
      }

      Log.warning('未找到匹配的GIF文件: gameId=$gameId, fileName=$fileName');
      return null;
    } catch (e, stackTrace) {
      Log.error(
        '搜索游戏GIF文件失败: gameId=$gameId, fileName=$fileName, 错误: $e',
        stackTrace: stackTrace,
      );
      return null;
    }
  }

  /// 检查指定游戏的GIF文件是否已缓存
  bool isGameGifCached(int gameId, String fileName) {
    final indexKey1 = _generateGameGifIndexKey(gameId, fileName);
    final indexKey2 =
        fileName.endsWith('.gif')
            ? _generateGameGifIndexKey(
              gameId,
              fileName.substring(0, fileName.length - 4),
            )
            : _generateGameGifIndexKey(gameId, '$fileName.gif');

    final filePath = _gameGifIndex[indexKey1] ?? _gameGifIndex[indexKey2];

    if (filePath != null) {
      final cachedData = getCachedGifData(filePath);
      return cachedData != null;
    }

    return false;
  }

  /// 获取指定游戏已缓存的GIF文件名列表
  List<String> getCachedGameGifNames(int gameId) {
    final gameGifNames = <String>[];

    _gameGifIndex.forEach((indexKey, filePath) {
      if (indexKey.startsWith('${gameId}_')) {
        final fileName = indexKey.substring('${gameId}_'.length);
        if (!gameGifNames.contains(fileName)) {
          gameGifNames.add(fileName);
        }
      }
    });

    return gameGifNames;
  }

  /// 获取游戏GIF的字节数据（优先从内存缓存）
  Future<Uint8List?> getGameGifData(int gameId, String? localFilePath) async {
    if (localFilePath == null || localFilePath.isEmpty) return null;

    try {
      // 规范化文件路径（处理iOS沙盒路径）
      final normalizedPath = await rust_download.normalizeFilePath(
        path: localFilePath,
      );

      return await loadAndCacheGifFile(normalizedPath);
    } catch (e) {
      Log.error('获取游戏GIF数据失败: $e');
      return null;
    }
  }

  /// 预加载游戏GIF到内存缓存
  Future<void> preloadGameGifsToMemory() async {
    try {
      Log.info('开始预加载游戏GIF到内存缓存');

      for (var game in visibleAnimatedGameList) {
        if (game.downUrl.isNotEmpty) {
          // 构建本地文件夹路径
          final dirPath = 'AnimatedGame/${game.gameId}';
          final fileLastPath = game.downUrl.split("/").last;
          final fileName = fileLastPath.split(".").first;
          final baseDirPath = '$dirPath/$fileName';

          // 遍历文件夹找到所有GIF文件
          await _loadGifsFromDirectory(baseDirPath, game.gameId);
        }
      }

      Log.info('游戏GIF预加载完成，缓存数量: ${_gifMemoryCache.length}');
    } catch (e, stackTrace) {
      Log.error('预加载游戏GIF到内存缓存异常', error: e, stackTrace: stackTrace);
    }
  }

  /// 遍历目录加载GIF文件到内存缓存
  Future<void> _loadGifsFromDirectory(String dirPath, int gameId) async {
    try {
      // 先规范化路径以确保iOS兼容性
      final normalizedDirPath = await rust_download.normalizeFilePath(
        path: dirPath,
      );

      final directory = Directory(normalizedDirPath);
      if (!directory.existsSync()) {
        Log.warning('游戏目录不存在: $normalizedDirPath');
        return;
      }

      Log.info('开始遍历游戏目录: $normalizedDirPath');

      // 递归遍历目录
      await _scanDirectoryForGifs(directory, gameId);
    } catch (e, stackTrace) {
      Log.error('遍历目录加载GIF失败: $dirPath, 错误: $e', stackTrace: stackTrace);
    }
  }

  /// 递归扫描目录中的GIF文件
  Future<void> _scanDirectoryForGifs(Directory directory, int gameId) async {
    try {
      final entities = directory.listSync(recursive: true);
      final gifFiles = <File>[];

      for (var entity in entities) {
        if (entity is File) {
          final fileName = entity.path.toLowerCase();
          // 检查是否为GIF文件
          if (fileName.endsWith('.gif')) {
            gifFiles.add(entity);
          }
        }
      }

      Log.info('在目录 ${directory.path} 中找到 ${gifFiles.length} 个GIF文件');

      // 加载所有找到的GIF文件到内存缓存
      for (var gifFile in gifFiles) {
        await loadAndCacheGifFile(gifFile.path, gameId: gameId);
        Log.info('已缓存GIF文件: ${gifFile.path}');
      }
    } catch (e, stackTrace) {
      Log.error(
        '扫描目录GIF文件失败: ${directory.path}, 错误: $e',
        stackTrace: stackTrace,
      );
    }
  }

  /// 获取指定游戏目录下的所有GIF文件路径
  Future<List<String>> getGameGifPaths(int gameId) async {
    try {
      final dirPath = 'AnimatedGame/$gameId';
      final normalizedDirPath = await rust_download.normalizeFilePath(
        path: dirPath,
      );

      final directory = Directory(normalizedDirPath);
      if (!directory.existsSync()) {
        Log.warning('游戏目录不存在: $normalizedDirPath');
        return [];
      }

      final entities = directory.listSync(recursive: true);
      final gifPaths = <String>[];

      for (var entity in entities) {
        if (entity is File && entity.path.toLowerCase().endsWith('.gif')) {
          gifPaths.add(entity.path);
        }
      }

      Log.info('游戏 $gameId 有 ${gifPaths.length} 个GIF文件');
      return gifPaths;
    } catch (e, stackTrace) {
      Log.error('获取游戏GIF路径失败: gameId=$gameId, 错误: $e', stackTrace: stackTrace);
      return [];
    }
  }

  /// 获取指定游戏的随机GIF数据
  Future<Uint8List?> getRandomGameGif(int gameId) async {
    try {
      final gifPaths = await getGameGifPaths(gameId);
      if (gifPaths.isEmpty) {
        return null;
      }

      // 随机选择一个GIF
      final randomIndex =
          DateTime.now().millisecondsSinceEpoch % gifPaths.length;
      final selectedPath = gifPaths[randomIndex];

      return await loadAndCacheGifFile(selectedPath);
    } catch (e) {
      Log.error('获取随机游戏GIF失败: gameId=$gameId, 错误: $e');
      return null;
    }
  }

  /// 预加载指定游戏的所有GIF文件
  Future<void> preloadSingleGameGifs(int gameId) async {
    try {
      Log.info('开始预加载游戏 $gameId 的GIF文件');

      final gifPaths = await getGameGifPaths(gameId);
      if (gifPaths.isEmpty) {
        Log.warning('游戏 $gameId 没有找到GIF文件');
        return;
      }

      // 批量加载到内存缓存
      final futures = gifPaths.map((path) => loadAndCacheGifFile(path));
      await Future.wait(futures);

      Log.info('游戏 $gameId 的 ${gifPaths.length} 个GIF文件已预加载完成');
    } catch (e, stackTrace) {
      Log.error('预加载游戏GIF失败: gameId=$gameId, 错误: $e', stackTrace: stackTrace);
    }
  }

  /// 批量预加载指定路径的GIF文件
  Future<void> preloadGifFiles(List<String> filePaths) async {
    try {
      Log.info('开始批量预加载GIF文件: ${filePaths.length} 个');

      final futures = filePaths.map((path) => loadAndCacheGifFile(path));
      await Future.wait(futures);

      Log.info('批量预加载完成，当前缓存数量: ${_gifMemoryCache.length}');
    } catch (e, stackTrace) {
      Log.error('批量预加载GIF文件异常', error: e, stackTrace: stackTrace);
    }
  }

  /// 获取表情包列表
  ///
  /// 优先从缓存获取，如果缓存不存在或已过期则从服务器获取
  /// 返回表情包列表和是否来自缓存的标识
  Future<List<FfiEmoticonBase>> getEmoticonList() async {
    try {
      Log.info('开始获取表情包列表');
      if (emoticonArray.isNotEmpty) {
        return emoticonArray;
      }
      // 调用Rust API获取表情包列表
      final response = await rust_emotion.getEmoticonList();
      emoticonArray = [...response.emoticons];
      return emoticonArray;
    } catch (e, stackTrace) {
      Log.error('获取表情包列表异常', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  /// 刷新表情包列表
  ///
  /// 强制从服务器重新获取表情列表并更新缓存
  Future<Map<String, dynamic>> refreshEmoticonList() async {
    try {
      Log.info('开始刷新表情包列表');

      // 调用Rust API刷新表情包列表
      final response = await rust_emotion.refreshEmoticonList();

      Log.info('刷新表情包列表成功: ${response.count} 个表情包');

      // 转换为Flutter友好的格式
      final emoticons =
          response.emoticons
              .map(
                (emoticon) => {
                  'emotion_type': _emotionTypeToString(emoticon.emotionType),
                  'img_name': emoticon.imgName,
                  'game_id': emoticon.gameId,
                  'game_icon_path': emoticon.gameIconPath,
                  'emoticon_url': emoticon.emoticonUrl,
                  'emoticon_id': emoticon.emoticonId,
                  'width': emoticon.width,
                  'height': emoticon.height,
                },
              )
              .toList();

      return {
        'emoticons': emoticons,
        'count': response.count,
        'from_cache': false,
      };
    } catch (e, stackTrace) {
      Log.error('刷新表情包列表异常', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  /// 清理表情缓存
  Future<void> clearEmoticonCache() async {
    try {
      Log.info('开始清理表情缓存');

      await rust_emotion.clearEmoticonCache();

      Log.info('表情缓存清理成功');
    } catch (e, stackTrace) {
      Log.error('清理表情缓存异常', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  /// 获取缓存信息
  Future<String> getCacheInfo() async {
    try {
      Log.info('获取表情缓存信息');

      final info = await rust_emotion.getCacheInfo();

      Log.info('获取缓存信息成功');
      return info;
    } catch (e, stackTrace) {
      Log.error('获取缓存信息异常', error: e, stackTrace: stackTrace);
      return '获取缓存信息失败: $e';
    }
  }

  /// 获取表情包列表（自动模式）
  ///
  /// 自动处理缓存和6小时刷新机制：
  /// - 如果缓存有效（未超过6小时），返回缓存数据
  /// - 如果缓存过期，先返回缓存数据，后台自动更新
  /// - 如果无缓存，从服务器获取最新数据
  Future<Map<String, dynamic>> getEmoticonListAuto() async {
    try {
      Log.info('开始获取表情包列表（自动模式）');

      final response = await rust_emotion.getEmoticonListAuto();

      Log.info(
        '获取表情包列表成功（自动模式）: ${response.count} 个表情包, '
        '来自缓存: ${response.fromCache}, '
        '最后更新时间: ${_formatTimestamp(response.lastUpdateTime.toInt())}',
      );

      // 转换为Flutter友好的格式
      final emoticons =
          response.emoticons
              .map(
                (emoticon) => {
                  'emotion_type': _emotionTypeFromEnum(emoticon.emotionType),
                  'img_name': emoticon.imgName,
                  'game_id': emoticon.gameId,
                  'game_icon_path': emoticon.gameIconPath,
                  'emoticon_url': emoticon.emoticonUrl,
                  'emoticon_id': emoticon.emoticonId.toInt(),
                  'width': emoticon.width,
                  'height': emoticon.height,
                },
              )
              .toList();

      return {
        'emoticons': emoticons,
        'count': response.count,
        'from_cache': response.fromCache,
        'last_update_time': response.lastUpdateTime.toInt(),
        'last_update_formatted': _formatTimestamp(
          response.lastUpdateTime.toInt(),
        ),
      };
    } catch (e, stackTrace) {
      Log.error('获取表情包列表异常（自动模式）', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  /// 获取最后更新时间
  Future<int> getLastUpdateTime() async {
    try {
      Log.info('获取最后更新时间');

      final timestamp = await rust_emotion.getLastUpdateTime();

      Log.info('获取最后更新时间成功: ${_formatTimestamp(timestamp.toInt())}');
      return timestamp.toInt();
    } catch (e, stackTrace) {
      Log.error('获取最后更新时间异常', error: e, stackTrace: stackTrace);
      return 0;
    }
  }

  /// 检查是否需要自动刷新
  Future<bool> shouldAutoRefresh() async {
    try {
      Log.info('检查是否需要自动刷新');

      final shouldRefresh = await rust_emotion.shouldAutoRefresh();

      Log.info('是否需要自动刷新: $shouldRefresh');
      return shouldRefresh;
    } catch (e, stackTrace) {
      Log.error('检查刷新状态异常', error: e, stackTrace: stackTrace);
      return true; // 默认需要刷新
    }
  }

  /// 强制更新表情包列表
  ///
  /// 立即从服务器获取最新数据并更新缓存时间
  Future<Map<String, dynamic>> forceUpdateEmoticonList() async {
    try {
      Log.info('开始强制更新表情包列表');

      final response = await rust_emotion.forceUpdateEmoticonList();

      Log.info(
        '强制更新表情包列表成功: ${response.count} 个表情包, '
        '更新时间: ${_formatTimestamp(response.lastUpdateTime.toInt())}',
      );

      // 转换为Flutter友好的格式
      final emoticons =
          response.emoticons
              .map(
                (emoticon) => {
                  'emotion_type': _emotionTypeFromEnum(emoticon.emotionType),
                  'img_name': emoticon.imgName,
                  'game_id': emoticon.gameId,
                  'game_icon_path': emoticon.gameIconPath,
                  'emoticon_url': emoticon.emoticonUrl,
                  'emoticon_id': emoticon.emoticonId.toInt(),
                  'width': emoticon.width,
                  'height': emoticon.height,
                },
              )
              .toList();

      return {
        'emoticons': emoticons,
        'count': response.count,
        'from_cache': false,
        'last_update_time': response.lastUpdateTime.toInt(),
        'last_update_formatted': _formatTimestamp(
          response.lastUpdateTime.toInt(),
        ),
      };
    } catch (e, stackTrace) {
      Log.error('强制更新表情包列表异常', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  /// 获取详细的缓存状态信息
  Future<Map<String, dynamic>> getCacheStatus() async {
    try {
      final lastUpdateTime = await getLastUpdateTime();
      final shouldRefresh = await shouldAutoRefresh();
      final cacheInfo = await getCacheInfo();

      final currentTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      final hoursSinceUpdate =
          lastUpdateTime > 0 ? (currentTime - lastUpdateTime) / 3600 : -1;

      return {
        'last_update_time': lastUpdateTime,
        'last_update_formatted': _formatTimestamp(lastUpdateTime),
        'should_refresh': shouldRefresh,
        'hours_since_update': hoursSinceUpdate,
        'cache_info': cacheInfo,
        'current_time': currentTime,
        'current_time_formatted': _formatTimestamp(currentTime),
      };
    } catch (e, stackTrace) {
      Log.error('获取缓存状态异常', error: e, stackTrace: stackTrace);
      return {'error': e.toString()};
    }
  }

  /// 格式化时间戳为可读字符串
  String _formatTimestamp(int timestamp) {
    if (timestamp == 0) {
      return '从未更新';
    }

    final dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-'
        '${dateTime.day.toString().padLeft(2, '0')} '
        '${dateTime.hour.toString().padLeft(2, '0')}:'
        '${dateTime.minute.toString().padLeft(2, '0')}:'
        '${dateTime.second.toString().padLeft(2, '0')}';
  }

  /// 将表情类型枚举转换为字符串
  String _emotionTypeFromEnum(FfiEmotionInfoType emotionType) {
    switch (emotionType) {
      case FfiEmotionInfoType.normal:
        return '普通表情';
      case FfiEmotionInfoType.add:
        return '添加表情';
      case FfiEmotionInfoType.dice:
        return '骰子';
      case FfiEmotionInfoType.animatedGame:
        return '动画游戏';
    }
  }

  /// 将表情类型数字转换为字符串 (旧版本兼容)
  String _emotionTypeToString(dynamic emotionType) {
    if (emotionType is FfiEmotionInfoType) {
      return _emotionTypeFromEnum(emotionType);
    }

    // 处理整数类型（旧版本兼容）
    final typeNum = emotionType is int ? emotionType : 1;
    switch (typeNum) {
      case 1:
        return '普通表情';
      case 2:
        return '添加表情';
      case 3:
        return '骰子';
      case 4:
        return '动画游戏';
      default:
        return '未知类型($typeNum)';
    }
  }

  // 获取游戏配置
  Future<List<FfiAnimatedGameConfig>> getGameGlobalConfig() async {
    try {
      Log.info('开始获取游戏配置');

      final response = await rust_emotion.getGameGlobalConfig();

      Log.info('获取游戏配置成功');

      for (var config in response) {
        final dirPath = 'AnimatedGame/${config.gameId}'; // 使用相对路径，让Rust处理iOS沙盒
        final fileLastPath = config.downUrl.split("/").last;
        final fileName = fileLastPath.split(".").first;
        final savePath = '$dirPath/$fileName';

        // 先规范化路径以确保iOS兼容性
        final normalizedPath = await rust_download.normalizeFilePath(
          path: savePath,
        );

        if (File(normalizedPath).existsSync()) {
          Log.info('文件已存在: $normalizedPath');
          continue; // 继续处理下一个文件
        } else {
          final downloadResult = await downloadFile(config.downUrl, savePath);
          Log.info('下载文件成功: ${downloadResult.filePath}');
        }
      }
      animatedGameList = [...response];
      // 根据实际响应结构返回数据
      return response;
    } catch (e, stackTrace) {
      Log.error('获取游戏配置异常', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  // 下载文件
  Future<DownloadResult> downloadFile(
    String url,
    String savePath,
  ) async {
    try {
      Log.info('开始下载文件');

      final response = await rust_download.downloadFileHttp(
        url: url,
        savePath: savePath,
        autoUnzip: true,
        customHeaders: null,
      );

      Log.info('下载文件成功');

      // 根据实际响应结构返回数据
      return response;
    } catch (e, stackTrace) {
      Log.error('下载文件异常', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  /// 处理游戏配置中的GIF文件内存缓存
  Future<void> processGameConfigGifs(
    List<FfiAnimatedGameConfig> configs,
  ) async {
    try {
      Log.info('开始处理游戏配置GIF内存缓存');

      for (var config in configs) {
        // 构建本地文件路径
        final dirPath = 'AnimatedGame/${config.gameId}';
        final fileLastPath = config.downUrl.split("/").last;
        final fileName = fileLastPath.split(".").first;
        final localPath = '$dirPath/$fileName';

        // 预加载到内存缓存
        await getGameGifData(config.gameId, localPath);
      }

      Log.info('游戏配置GIF内存缓存处理完成');
    } catch (e, stackTrace) {
      Log.error('处理游戏配置GIF内存缓存异常', error: e, stackTrace: stackTrace);
    }
  }

  /// 预加载所有游戏GIF资源到内存
  Future<void> preloadGameGifs() async {
    try {
      Log.info('开始预加载游戏GIF资源到内存');

      // 获取游戏配置
      final gameConfigs = await getGameGlobalConfig();

      // 处理GIF内存缓存
      await processGameConfigGifs(gameConfigs);

      Log.info('游戏GIF资源预加载完成');
    } catch (e, stackTrace) {
      Log.error('预加载游戏GIF资源异常', error: e, stackTrace: stackTrace);
    }
  }

  /// 获取游戏GIF的本地路径
  String? getGameGifPath(int gameId, String? originalUrl) {
    if (originalUrl == null || originalUrl.isEmpty) return null;

    try {
      // 构建本地文件路径
      final dirPath = 'AnimatedGame/$gameId';
      final fileLastPath = originalUrl.split("/").last;
      final fileName = fileLastPath.split(".").first;
      return '$dirPath/$fileName';
    } catch (e) {
      Log.error('构建游戏GIF路径失败: $e');
      return null;
    }
  }

  //获取一张图片文件 icon.png
  String? getGameIconPath(int gameId, String? originalUrl) {
    if (originalUrl == null || originalUrl.isEmpty) return null;

    try {
      // 构建本地文件路径
      final dirPath = 'AnimatedGame/$gameId';
      final fileLastPath = originalUrl.split("/").last;
      final fileName = fileLastPath.split(".").first;
      return '$dirPath/$fileName/icon.png';
    } catch (e) {
      Log.error('构建游戏GIF路径失败: $e');
      return null;
    }
  }

  // 把emotionlist  和 游戏配置文件 一起下载
  Future<void> downloadEmoticonAndGameConfig() async {
    try {
      Log.info('开始下载表情包和游戏配置');
      allEmoticonArray.clear();
      // 获取表情包列表
      final emotionList = await getEmoticonList();
      Log.info('获取表情包列表成功: ${emotionList.length} 个表情');

      final addEmoticon = FfiEmoticonBase(
        emotionType: FfiEmotionInfoType.add,
        imgName: 'emoticon_add',
        gameId: 0,
        gameIconPath: '',
        emoticonUrl: '',
        emoticonId: 0,
        width: 0,
        height: 0,
      );

      final diceEmoticon = FfiEmoticonBase(
        emotionType: FfiEmotionInfoType.dice,
        imgName: 'chat_dice_one',
        gameId: 0,
        gameIconPath: '',
        emoticonUrl: '',
        emoticonId: 0,
        width: 0,
        height: 0,
      );

      allEmoticonArray.add(addEmoticon);
      allEmoticonArray.add(diceEmoticon);

      // 获取游戏配置列表
      final gameConfigList = await getGameGlobalConfig();
      Log.info('获取游戏配置成功: ${gameConfigList.length} 个游戏');

      //处理文件的isDisplay
      final displayGameList =
          animatedGameList.where((game) => game.isDisplay).toList();
      // 将游戏配置转换为表情包格式并添加到数组中
      for (var config in displayGameList) {
        final gameEmoticon = FfiEmoticonBase(
          emotionType: FfiEmotionInfoType.animatedGame,
          imgName:
              config.iconName.isNotEmpty
                  ? config.iconName
                  : 'default_game_icon',
          gameId: config.gameId,
          gameIconPath: getGameIconPath(config.gameId, config.downUrl) ?? '',
          emoticonUrl: config.downUrl,
          emoticonId: config.gameId,
          width: 100, // 默认宽度
          height: 100, // 默认高度
        );

        allEmoticonArray.add(gameEmoticon);
      }

      allEmoticonArray.addAll(emotionList);

      // 更新游戏配置列表
      animatedGameList = [...gameConfigList];
      displayAnimatedGameList = [...displayGameList];

      // 清理过期的内存缓存
      cleanExpiredMemoryCache();

      Log.info('表情包和游戏配置下载完成，总计: ${emoticonArray.length} 个表情包');
    } catch (e, stackTrace) {
      Log.error('下载表情包和游戏配置异常', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  /// 初始化服务（建议在应用启动时调用）
  Future<void> initialize() async {
    try {
      Log.info('开始初始化EmotionService');

      // 下载表情包和游戏配置
      await downloadEmoticonAndGameConfig();

      // 预加载游戏GIF到内存缓存
      await preloadGameGifsToMemory();

      Log.info('EmotionService初始化完成');
    } catch (e, stackTrace) {
      Log.error('EmotionService初始化失败', error: e, stackTrace: stackTrace);
    }
  }

  /// 获取缓存统计信息
  Map<String, dynamic> getCacheStats() {
    final totalMemorySize = _gifMemoryCache.values.fold<int>(
      0,
      (sum, bytes) => sum + bytes.length,
    );

    return {
      'cached_gifs': _gifMemoryCache.length,
      'cache_timestamps': _cacheTimestamps.length,
      'game_gif_index': _gameGifIndex.length,
      'cache_expiration_hours': _cacheExpiration.inHours,
      'max_cache_size': _maxCacheSize,
      'total_memory_bytes': totalMemorySize,
      'total_memory_mb': (totalMemorySize / (1024 * 1024)).toStringAsFixed(2),
      'emoticon_count': emoticonArray.length,
      'animated_game_count': animatedGameList.length,
      'visible_game_count': displayAnimatedGameList.length,
    };
  }

  String? currentImagePath(
    String? currentImage,
    String? dirPath,
    String? fileName,
  ) {
    if (currentImage == null || currentImage.isEmpty) {
      return null;
    }
    if (currentImage.split(".").length == 2) {
      // 如果已经带有文件扩展，直接使用
      if (fileName != null && fileName.isNotEmpty) {
        return "$dirPath/$fileName/$currentImage";
      } else {
        return "$dirPath/$currentImage";
      }
    }
    // 没有带文件扩展，模式使用.png扩展
    if (fileName != null && fileName.isNotEmpty) {
      return "$dirPath/$fileName/$currentImage.png";
    } else {
      return "$dirPath/$currentImage.png";
    }
  }
}
