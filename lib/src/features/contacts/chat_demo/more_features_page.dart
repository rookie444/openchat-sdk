import 'package:flutter/material.dart';
import 'widgets/gif_view_game_demo.dart';
import 'package:openchat_client/src/rust/api/download_api.dart' as download_api;

/// 更多功能页面
/// 包含从主功能区移除的功能，如骰子、自动发消息、设置、状态管理等
class MoreFeaturesPage extends StatelessWidget {
  // 消息发送功能
  final VoidCallback onDiceMessage;
  final VoidCallback onAutoMessage;

  // 演示功能
  final VoidCallback onProgressImageDemo;
  final VoidCallback onSimpleImageTest;

  // 设置功能
  final VoidCallback onSettings;
  final VoidCallback onHelp;
  final VoidCallback onAbout;

  // 状态管理功能
  final VoidCallback onMarkAllRead;
  final VoidCallback onDeleteLast;
  final VoidCallback onReset;

  // 缓存管理功能
  final VoidCallback onClearCache;
  final VoidCallback onClearMemory;
  final VoidCallback onClearDisk;

  // 性能监控功能
  final VoidCallback onPerformanceReport;
  final VoidCallback onClearStats;
  final VoidCallback onOptimizationTips;

  const MoreFeaturesPage({
    super.key,
    required this.onDiceMessage,
    required this.onAutoMessage,
    required this.onProgressImageDemo,
    required this.onSimpleImageTest,
    required this.onSettings,
    required this.onHelp,
    required this.onAbout,
    required this.onMarkAllRead,
    required this.onDeleteLast,
    required this.onReset,
    required this.onClearCache,
    required this.onClearMemory,
    required this.onClearDisk,
    required this.onPerformanceReport,
    required this.onClearStats,
    required this.onOptimizationTips,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('更多功能'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.5,
      ),
      backgroundColor: const Color(0xFFF7F7F7),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // 消息功能区
          _buildSectionCard(
            title: '消息功能',
            icon: Icons.message,
            children: [
              _buildFeatureRow([
                _buildFeatureItem(Icons.casino, '骰子', onDiceMessage),
                _buildFeatureItem(Icons.auto_awesome, '自动发消息', onAutoMessage),
              ]),
            ],
          ),

          const SizedBox(height: 16),

          // 演示功能区
          _buildSectionCard(
            title: '演示功能',
            icon: Icons.science,
            children: [
              _buildFeatureRow([
                _buildFeatureItem(Icons.image, '图片组件演示', onProgressImageDemo),
                _buildFeatureItem(
                  Icons.image_outlined,
                  '简单图片测试',
                  onSimpleImageTest,
                ),
              ]),
              const SizedBox(height: 8),
              _buildFeatureRow([
                _buildFeatureItem(
                  Icons.gif_box,
                  'GIF游戏演示',
                  () => _openGifGameDemo(context),
                ),
                _buildFeatureItem(
                  Icons.folder_open,
                  '路径服务演示',
                  () => _openMessagePathDemo(context),
                ),
              ]),
            ],
          ),

          const SizedBox(height: 16),

          // 设置功能区
          _buildSectionCard(
            title: '设置功能',
            icon: Icons.settings,
            children: [
              _buildFeatureRow([
                _buildFeatureItem(Icons.settings, '设置', onSettings),
                _buildFeatureItem(Icons.help, '帮助', onHelp),
                _buildFeatureItem(Icons.info, '关于', onAbout),
              ]),
            ],
          ),

          const SizedBox(height: 16),

          // 状态管理区
          _buildSectionCard(
            title: '状态管理',
            icon: Icons.manage_accounts,
            children: [
              _buildFeatureRow([
                _buildFeatureItem(Icons.mark_email_read, '全部已读', onMarkAllRead),
                _buildFeatureItem(Icons.delete, '删除最后', onDeleteLast),
                _buildFeatureItem(Icons.refresh, '重置', onReset),
              ]),
            ],
          ),

          const SizedBox(height: 16),

          // 缓存管理区
          _buildSectionCard(
            title: '缓存管理',
            icon: Icons.storage,
            children: [
              _buildFeatureRow([
                _buildFeatureItem(Icons.clear_all, '清理缓存', onClearCache),
                _buildFeatureItem(Icons.memory, '清内存', onClearMemory),
                _buildFeatureItem(Icons.storage, '清磁盘', onClearDisk),
              ]),
            ],
          ),

          const SizedBox(height: 16),

          // 性能监控区
          _buildSectionCard(
            title: '性能监控',
            icon: Icons.analytics,
            children: [
              _buildFeatureRow([
                _buildFeatureItem(Icons.analytics, '性能报告', onPerformanceReport),
                _buildFeatureItem(
                  Icons.cleaning_services,
                  '清除统计',
                  onClearStats,
                ),
                _buildFeatureItem(Icons.lightbulb, '优化建议', onOptimizationTips),
              ]),
            ],
          ),

          const SizedBox(height: 16),

          // 性能监控区
          _buildSectionCard(
            title: '下载测试',
            icon: Icons.download,
            children: [
              _buildFeatureRow([
                _buildFeatureItem(Icons.download, '下载测试', () => _openDownloadTest(context)),
              ]),
            ],
          ),
        ],
      ),
    );
  }

  /// 打开GIF游戏演示页面
  void _openGifGameDemo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const GifViewGameDemo()),
    );
  }

  /// 打开消息路径服务演示页面
  void _openMessagePathDemo(BuildContext context) {
    
  }

  /// 打开GIF游戏演示页面
  void _openDownloadTest(BuildContext context) {
     

    //  //下载文件
    //  download_api.messageFileDownloadSimple(    
    //   originUrl: 'https://fastly.picsum.photos/id/1018/400/300.jpg?hmac=ia2G_9l0hP4-__G9SGtm-oB8obLBzgA2FTo45jndKDo',
    //   filePath: 'test.jpg',
    //  );

  }

  /// 构建功能区卡片
  Widget _buildSectionCard({
    required String title,
    required IconData icon,
    required List<Widget> children,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.blue[600], size: 20),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }

  /// 构建功能行
  Widget _buildFeatureRow(List<Widget> items) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: items.map((item) => Expanded(child: item)).toList(),
    );
  }

  /// 构建功能项
  Widget _buildFeatureItem(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey[200]!),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.grey[600], size: 24),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
