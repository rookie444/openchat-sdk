// encrypted_cache_manager.dart
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:openchat_client/src/features/common/service/encrypted_file_service.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class EncryptedCacheManager extends CacheManager with ImageCacheManager {
  static const key = 'encryptedCache';
  static EncryptedCacheManager? _instance;
  
  final String encryptionKey;

  factory EncryptedCacheManager({required String encryptionKey}) {
    _instance ??= EncryptedCacheManager._(encryptionKey);
    return _instance!;
  }

  EncryptedCacheManager._(this.encryptionKey) : super(
    Config(
      key,
      stalePeriod: const Duration(days: 7),
      maxNrOfCacheObjects: 200,
      repo: JsonCacheInfoRepository(databaseName: key),
      fileService: EncryptedFileService(encryptionKey: encryptionKey),
      fileSystem: IOFileSystem(key),
    ),
  );

  // 重写下载方法以添加进度回调
  @override
  Stream<FileResponse> getFileStream(
    String url, {
    String? key,
    Map<String, String>? headers,
    bool withProgress = false,
  }) async* {
    print('🚀 开始获取加密文件流: $url');
    
    // 检查缓存
    final cacheFile = await getFileFromCache(url);
    if (cacheFile != null) {
      print('📂 从缓存获取文件');
      yield FileInfo(
        cacheFile.file,
        FileSource.Cache,
        cacheFile.validTill,
        url,
      );
      return;
    }

    // 显示下载进度
    if (withProgress) {
      yield DownloadProgress(url, 0, 0);
    }

    try {
      // 使用父类的下载方法
      await for (final response in super.getFileStream(url, key: key, headers: headers)) {
        if (response is DownloadProgress && withProgress) {
          yield response;
        } else if (response is FileInfo) {
      print('✅ 加密文件下载并解密完成');
          yield response;
        }
      }
    } catch (e) {
      print('❌ 获取加密文件失败: $e');
      rethrow;
    }
  }
}