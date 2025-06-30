import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:permission_handler/permission_handler.dart';

/// 图片选择服务
/// 封装微信样式的资源选择器功能
class AssetPickerService {
  
  /// 选择图片（支持多选）
  /// 
  /// [context] - 上下文
  /// [maxAssets] - 最大选择数量，默认9张
  /// [selectedAssets] - 已选择的资源列表
  /// [requestType] - 请求类型（图片、视频、音频等）
  /// [themeColor] - 主题色
  static Future<List<AssetEntity>?> pickImages({
    required BuildContext context,
    int maxAssets = 9,
    List<AssetEntity>? selectedAssets,
    RequestType requestType = RequestType.image,
    Color? themeColor,
  }) async {
    // 检查并请求权限
    // final hasPermission = await _checkAndRequestPermission();
    // if (!hasPermission) {
    //   if (context.mounted) {
    //     _showPermissionDialog(context);
    //   }
    //   return null;
    // }

    try {
      final List<AssetEntity>? result = await AssetPicker.pickAssets(
        context,
        pickerConfig: AssetPickerConfig(
          maxAssets: maxAssets,
          selectedAssets: selectedAssets,
          requestType: requestType,
          themeColor: themeColor ?? const Color(0xFF00BC56),
          // 网格设置
          gridCount: 4,
          pageSize: 80,
          gridThumbnailSize: const ThumbnailSize.square(200),
          pathThumbnailSize: const ThumbnailSize.square(80),
          // 界面文本
          textDelegate: const AssetPickerTextDelegate(),
          // 特殊配置
          specialPickerType: maxAssets == 1 ? SpecialPickerType.noPreview : null,
          keepScrollOffset: true,
        ),
      );
      
      if (result != null && result.isNotEmpty) {
        print('📸 选择了 ${result.length} 张图片');
        for (var i = 0; i < result.length; i++) {
          final asset = result[i];
          print('   图片 ${i + 1}: ${asset.id} (${asset.width}x${asset.height})');
        }
      }
      
      return result;
    } catch (e) {
      print('❌ 选择图片失败: $e');
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('选择图片失败: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
      return null;
    }
  }

  /// 选择单张图片
  static Future<AssetEntity?> pickSingleImage({
    required BuildContext context,
    RequestType requestType = RequestType.image,
    Color? themeColor,
  }) async {
    final result = await pickImages(
      context: context,
      maxAssets: 1,
      requestType: requestType,
      themeColor: themeColor,
    );
    return result?.isNotEmpty == true ? result!.first : null;
  }

  /// 选择视频
  static Future<List<AssetEntity>?> pickVideos({
    required BuildContext context,
    int maxAssets = 9,
    List<AssetEntity>? selectedAssets,
    Color? themeColor,
  }) async {
    return await pickImages(
      context: context,
      maxAssets: maxAssets,
      selectedAssets: selectedAssets,
      requestType: RequestType.video,
      themeColor: themeColor,
    );
  }

  /// 选择图片和视频
  static Future<List<AssetEntity>?> pickImagesAndVideos({
    required BuildContext context,
    int maxAssets = 9,
    List<AssetEntity>? selectedAssets,
    Color? themeColor,
  }) async {
    return await pickImages(
      context: context,
      maxAssets: maxAssets,
      selectedAssets: selectedAssets,
      requestType: RequestType.common,
      themeColor: themeColor,
    );
  }

  /// 检查并请求权限
  static Future<bool> _checkAndRequestPermission() async {
    // iOS/Android 相册权限
    Permission permission = Permission.photos;
    
    // Android 13+ 需要特定权限
    if (await Permission.photos.isPermanentlyDenied) {
      permission = Permission.photos;
    }

    PermissionStatus status = await permission.status;
    
    if (status.isGranted) {
      return true;
    }
    
    if (status.isDenied) {
      status = await permission.request();
      return status.isGranted;
    }
    
    if (status.isPermanentlyDenied) {
      return false;
    }
    
    return status.isGranted;
  }

  /// 显示权限说明对话框
  static void _showPermissionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('需要相册权限'),
        content: const Text(
          '为了选择图片，需要访问您的相册权限。请在设置中开启相册访问权限。',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              openAppSettings();
            },
            child: const Text('去设置'),
          ),
        ],
      ),
    );
  }

  /// 预览已选择的资源
  static Future<void> previewAssets({
    required BuildContext context,
    required List<AssetEntity> assets,
    int initialIndex = 0,
    Color? themeColor,
  }) async {
    if (assets.isEmpty) return;

    try {
      await AssetPickerViewer.pushToViewer(
        context,
        currentIndex: initialIndex,
        previewAssets: assets,
        themeData: ThemeData(
          primarySwatch: _createMaterialColor(themeColor ?? const Color(0xFF00BC56)),
        ),
      );
    } catch (e) {
      print('❌ 预览图片失败: $e');
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('预览图片失败: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  /// 获取资源文件
  static Future<File?> getAssetFile(AssetEntity asset) async {
    try {
      final file = await asset.file;
      if (file != null) {
        print('📁 获取文件成功: ${file.path} (大小: ${await file.length()} bytes)');
      }
      return file;
    } catch (e) {
      print('❌ 获取文件失败: $e');
      return null;
    }
  }

  /// 获取资源字节数据
  static Future<Uint8List?> getAssetBytes(AssetEntity asset) async {
    try {
      final bytes = await asset.originBytes;
      if (bytes != null) {
        print('💾 获取字节数据成功: ${bytes.length} bytes');
      }
      return bytes;
    } catch (e) {
      print('❌ 获取字节数据失败: $e');
      return null;
    }
  }

  /// 创建MaterialColor
  static MaterialColor _createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    
    return MaterialColor(color.value, swatch);
  }
}

/// AssetEntity 扩展方法
extension AssetEntityExtension on AssetEntity {
  /// 获取友好的文件大小描述
  String get friendlySize {
    // AssetEntity没有直接的文件大小属性，需要异步获取
    // 这里返回一个占位符，实际应用中需要异步获取
    return '未知大小';
  }

  /// 异步获取友好的文件大小描述
  Future<String> get friendlySizeAsync async {
    try {
      final file = await this.file;
      if (file == null) return '未知大小';
      
      final fileSizeBytes = await file.length();
      return _formatFileSize(fileSizeBytes);
    } catch (e) {
      return '未知大小';
    }
  }

  /// 格式化文件大小
  static String _formatFileSize(int bytes) {
    if (bytes <= 0) return '0 B';
    
    const List<String> units = ['B', 'KB', 'MB', 'GB'];
    int unitIndex = 0;
    double fileSize = bytes.toDouble();
    
    while (fileSize >= 1024 && unitIndex < units.length - 1) {
      fileSize /= 1024;
      unitIndex++;
    }
    
    return '${fileSize.toStringAsFixed(fileSize < 10 ? 1 : 0)} ${units[unitIndex]}';
  }

  /// 获取友好的时长描述（适用于视频）
  String get friendlyDuration {
    if (duration == 0) return '';
    
    final minutes = duration ~/ 60;
    final seconds = duration % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  /// 是否为图片
  bool get isImage => type == AssetType.image;

  /// 是否为视频
  bool get isVideo => type == AssetType.video;

  /// 是否为音频
  bool get isAudio => type == AssetType.audio;
} 