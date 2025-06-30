// encrypted_file_service.dart
import 'dart:typed_data';
import 'dart:convert';
import 'dart:io';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:http/http.dart' as http;

class EncryptedFileService extends FileService {
  final http.Client _httpClient;
  final String _encryptionKey;

  EncryptedFileService({
    http.Client? httpClient,
    required String encryptionKey,
  }) : _httpClient = httpClient ?? http.Client(),
       _encryptionKey = encryptionKey;

  @override
  Future<FileServiceResponse> get(String url, {Map<String, String>? headers}) async {
    try {
      print('🔽 开始下载加密文件: $url');
      
      // 1. 添加认证头
      final requestHeaders = <String, String>{
        'Authorization': 'Bearer your_token_here',
        'User-Agent': 'Flutter App',
        ...?headers,
      };

      // 2. 发起HTTP请求
      final response = await _httpClient.get(
        Uri.parse(url),
        headers: requestHeaders,
      );

      if (response.statusCode == 200) {
        print('📦 文件下载完成，开始解密...');
        
        // 3. 解密文件数据
        final decryptedData = await _decryptData(response.bodyBytes);
        
        print('🔓 文件解密完成，大小: ${decryptedData.length} bytes');
        
        // 4. 返回解密后的数据
        return EncryptedFileServiceResponse(
          decryptedData,
          response.statusCode,
          validTill: DateTime.now().add(const Duration(days: 7)),
          headers: response.headers,
        );
      } else {
        throw HttpException(
          'Failed to download file: ${response.statusCode}',
          uri: Uri.parse(url),
        );
      }
    } catch (e) {
      print('❌ 下载失败: $e');
      rethrow;
    }
  }

  // 解密数据的方法
  Future<Uint8List> _decryptData(Uint8List encryptedData) async {
    try {
      // 示例：简单的XOR解密
      return await _xorDecrypt(encryptedData, _encryptionKey);
      
      // 或者使用AES解密
      // return await _aesDecrypt(encryptedData, _encryptionKey);
    } catch (e) {
      print('❌ 解密失败: $e');
      rethrow;
    }
  }

  // XOR解密示例
  Future<Uint8List> _xorDecrypt(Uint8List data, String key) async {
    final keyBytes = utf8.encode(key);
    final decrypted = Uint8List(data.length);
    
    for (int i = 0; i < data.length; i++) {
      decrypted[i] = data[i] ^ keyBytes[i % keyBytes.length];
    }
    
    return decrypted;
  }

  // AES解密示例（需要添加 encrypt 包）
  /*
  Future<Uint8List> _aesDecrypt(Uint8List encryptedData, String key) async {
    final encrypter = Encrypter(AES(Key.fromBase64(key)));
    final encrypted = Encrypted(encryptedData);
    final decrypted = encrypter.decryptBytes(encrypted);
    return Uint8List.fromList(decrypted);
  }
  */

  @override
  void dispose() {
    _httpClient.close();
  }
}

// 自定义响应类
class EncryptedFileServiceResponse extends FileServiceResponse {
  final Uint8List _data;
  final int _statusCode;
  final DateTime? _validTill;
  final String? _eTag;
  final String? _fileExtension;

  EncryptedFileServiceResponse(
    this._data,
    this._statusCode, {
    DateTime? validTill,
    String? eTag,
    String? fileExtension,
    Map<String, String>? headers,
  }) : _validTill = validTill,
       _eTag = eTag,
       _fileExtension = fileExtension;

  @override
  Stream<List<int>> get content => Stream.value(_data);

  @override
  int? get contentLength => _data.length;

  @override
  int get statusCode => _statusCode;

  @override
  DateTime get validTill => _validTill ?? DateTime.now().add(const Duration(days: 7));

  @override
  String? get eTag => _eTag;

  @override
  String get fileExtension => _fileExtension ?? '';
}