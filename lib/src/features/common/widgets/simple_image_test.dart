import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'progress_image_widget.dart';

/// 简单的图片测试页面
class SimpleImageTestPage extends ConsumerWidget {
  const SimpleImageTestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('大图片进度测试'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '大图片进度监听测试',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              '使用高分辨率大图片测试进度监听效果',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // 1. 普通大图片测试
            const Text(
              '1. ProgressImageWidget - 普通大图片 (4K):',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ProgressImageWidget(
                  imageUrl: 'https://picsum.photos/3840/2160?random=1', // 4K图片
                  fit: BoxFit.cover,
                  showProgress: true,
                  enableProgressTracking: true,
                  onProgress: (progress) {
                    print(
                      '📊 普通大图片进度: ${(progress * 100).toStringAsFixed(1)}%',
                    );
                  },
                  onError: (error) {
                    print('❌ 普通大图片错误: $error');
                  },
                  onSuccess: () {
                    print('✅ 普通大图片加载成功');
                  },
                ),
              ),
            ),

            const SizedBox(height: 32),

            // 2. 加密大图片测试
            const Text(
              '2. ProgressImageWidget - 加密大图片 (4K):',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ProgressImageWidget(
                  imageUrl: 'https://picsum.photos/3840/2160?random=2', // 4K图片
                  isEncrypted: true,
                  encryptionKey: 'test_big_image_key_123',
                  fit: BoxFit.cover,
                  showProgress: true,
                  enableProgressTracking: true,
                  onProgress: (progress) {
                    print(
                      '🔐 加密大图片总进度: ${(progress * 100).toStringAsFixed(1)}%',
                    );
                  },
                  onError: (error) {
                    print('❌ 加密大图片错误: $error');
                  },
                  onSuccess: () {
                    print('✅ 加密大图片加载成功');
                  },
                ),
              ),
            ),

            const SizedBox(height: 32),

            // 3. 超大图片测试
            const Text(
              '3. ProgressImageWidget - 超大图片 (8K):',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ProgressImageWidget(
                  imageUrl: 'https://picsum.photos/7680/4320?random=3', // 8K图片
                  fit: BoxFit.cover,
                  showProgress: true,
                  enableProgressTracking: true,
                  onProgress: (progress) {
                    print('🚀 超大图片进度: ${(progress * 100).toStringAsFixed(1)}%');
                  },
                  onError: (error) {
                    print('❌ 超大图片错误: $error');
                  },
                  onSuccess: () {
                    print('✅ 超大图片加载成功');
                  },
                ),
              ),
            ),

            const SizedBox(height: 32),

            // 4. 加密超大图片测试
            const Text(
              '4. ProgressImageWidget - 加密超大图片 (8K):',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ProgressImageWidget(
                  imageUrl: 'https://picsum.photos/7680/4320?random=4', // 8K图片
                  isEncrypted: true,
                  encryptionKey: 'test_super_big_image_key_456',
                  fit: BoxFit.cover,
                  showProgress: true,
                  enableProgressTracking: true,
                  onProgress: (progress) {
                    print(
                      '🔐🚀 加密超大图片总进度: ${(progress * 100).toStringAsFixed(1)}%',
                    );
                  },
                  onError: (error) {
                    print('❌ 加密超大图片错误: $error');
                  },
                  onSuccess: () {
                    print('✅ 加密超大图片加载成功');
                  },
                ),
              ),
            ),

            const SizedBox(height: 32),

            // 操作按钮
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // 清理所有缓存，重新测试
                      print('🧹 清理缓存，准备重新测试...');
                      // 这里可以添加清理缓存的逻辑
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('清理缓存重测'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      print('📊 查看控制台获取详细进度信息');
                    },
                    icon: const Icon(Icons.analytics),
                    label: const Text('查看进度日志'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '📋 测试说明：',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• 第1个：4K普通图片 (3840×2160) - 蓝色边框\n'
                    '• 第2个：4K加密图片 (3840×2160) - 橙色边框\n'
                    '• 第3个：8K普通图片 (7680×4320) - 紫色边框\n'
                    '• 第4个：8K加密图片 (7680×4320) - 红色边框\n\n'
                    '🔍 观察要点：\n'
                    '• 普通图片：只显示下载进度\n'
                    '• 加密图片：显示下载(70%) + 解密(30%)进度\n'
                    '• 进度条颜色：普通图片蓝色，加密图片橙色\n'
                    '• 加密图片右下角有锁图标\n\n'
                    '📱 查看控制台输出获取详细的进度信息和状态变化。',
                    style: TextStyle(fontSize: 13, color: Colors.black87),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
