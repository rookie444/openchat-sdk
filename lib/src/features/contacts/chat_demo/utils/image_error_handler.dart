import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'demo_image_urls.dart';

/// 图片加载错误处理工具类
/// 提供统一的图片加载错误处理和回退机制
class ImageErrorHandler {
  // 私有构造函数，防止实例化
  ImageErrorHandler._();

  /// 处理图片加载错误的回调
  static void handleImageError(
    String imageUrl,
    Object error,
    StackTrace? stackTrace, {
    String? messageId,
    VoidCallback? onRetry,
  }) {
    if (kDebugMode) {
      print('🖼️ 图片加载失败: $imageUrl');
      print('❌ 错误信息: $error');
      if (stackTrace != null) {
        print('📍 堆栈跟踪: $stackTrace');
      }
    }

    // 记录错误统计（可以扩展为发送到分析服务）
    _recordImageError(imageUrl, error.toString());
  }

  /// 获取图片加载错误时的占位符组件
  static Widget buildErrorPlaceholder({
    double? width,
    double? height,
    String? errorMessage,
    VoidCallback? onRetry,
  }) {
    return Container(
      width: width ?? 200,
      height: height ?? 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.broken_image_outlined, size: 48, color: Colors.grey[400]),
          const SizedBox(height: 8),
          Text(
            '图片加载失败',
            style: TextStyle(color: Colors.grey[600], fontSize: 12),
          ),
          if (onRetry != null) ...[
            const SizedBox(height: 8),
            TextButton(
              onPressed: onRetry,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                '重试',
                style: TextStyle(color: Colors.blue[600], fontSize: 11),
              ),
            ),
          ],
        ],
      ),
    );
  }

  /// 获取图片加载中的占位符组件
  static Widget buildLoadingPlaceholder({
    double? width,
    double? height,
    double? progress,
  }) {
    return Container(
      width: width ?? 200,
      height: height ?? 200,
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (progress != null && progress > 0) ...[
            SizedBox(
              width: 40,
              height: 40,
              child: CircularProgressIndicator(
                value: progress,
                strokeWidth: 3,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[600]!),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '${(progress * 100).toInt()}%',
              style: TextStyle(color: Colors.grey[600], fontSize: 12),
            ),
          ] else ...[
            SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[600]!),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '加载中...',
              style: TextStyle(color: Colors.grey[600], fontSize: 12),
            ),
          ],
        ],
      ),
    );
  }

  /// 检查URL是否有效
  static bool isValidImageUrl(String? url) {
    if (url == null || url.isEmpty) return false;

    try {
      final uri = Uri.parse(url);
      return uri.hasScheme && (uri.scheme == 'http' || uri.scheme == 'https');
    } catch (e) {
      return false;
    }
  }

  /// 获取备用图片URL
  static String getFallbackUrl(String originalUrl) {
    // 根据原始URL的特征选择合适的备用URL
    if (originalUrl.contains('avatar') || originalUrl.contains('icon')) {
      return DemoImageUrls.getFallbackAvatarUrl();
    } else if (originalUrl.contains('video') || originalUrl.contains('thumb')) {
      return DemoImageUrls.getFallbackVideoThumbnailUrl();
    } else {
      return DemoImageUrls.getFallbackImageUrl();
    }
  }

  /// 记录图片错误统计
  static void _recordImageError(String url, String error) {
    // 这里可以扩展为发送到分析服务
    if (kDebugMode) {
      print('📊 图片错误统计: URL=$url, Error=$error');
    }
  }

  /// 清理图片错误统计
  static void clearErrorStats() {
    if (kDebugMode) {
      print('🧹 已清理图片错误统计');
    }
  }

  /// 获取图片错误处理的配置
  static Map<String, dynamic> getErrorHandlingConfig() {
    return {
      'maxRetries': 3,
      'retryDelay': const Duration(seconds: 2),
      'timeoutDuration': const Duration(seconds: 10),
      'enableFallback': true,
      'enableErrorReporting': kDebugMode,
    };
  }
}
