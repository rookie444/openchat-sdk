import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'progress_image_widget.dart';

/// Progress Image Widget 演示页面
class ProgressImageDemoPage extends ConsumerStatefulWidget {
  const ProgressImageDemoPage({super.key});

  @override
  ConsumerState<ProgressImageDemoPage> createState() =>
      _ProgressImageDemoPageState();
}

class _ProgressImageDemoPageState extends ConsumerState<ProgressImageDemoPage> {
  final List<String> _demoImageUrls = [
    'https://picsum.photos/400/300?random=1',
    'https://picsum.photos/400/300?random=2',
    'https://picsum.photos/400/300?random=3',
    'https://picsum.photos/400/300?random=4',
    'https://picsum.photos/400/300?random=5',
    'https://picsum.photos/400/300?random=6',
  ];

  final Map<String, double> _progressMap = {};
  final Map<String, String> _statusMap = {};
  final List<String> _logs = [];

  @override
  void initState() {
    super.initState();
    // 现在使用autoLoad，不需要手动触发加载
    _addLog('📱 页面初始化完成，图片将自动开始加载');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Image Widget 演示'),
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.clear_all),
            onPressed: _clearLogs,
            tooltip: '清空日志',
          ),
        ],
      ),
      body: Column(
        children: [
          // 状态信息栏
          _buildStatusBar(),

          // 图片网格
          Expanded(flex: 2, child: _buildImageGrid()),

          // 日志区域
          Expanded(flex: 1, child: _buildLogArea()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _refreshAllImages,
        child: const Icon(Icons.refresh),
        tooltip: '刷新所有图片',
      ),
    );
  }

  /// 构建状态信息栏
  Widget _buildStatusBar() {
    final totalImages = _demoImageUrls.length;
    final loadingCount =
        _statusMap.values
            .where((status) => status == '下载中' || status == '解密中')
            .length;
    final successCount =
        _statusMap.values.where((status) => status == '成功').length;
    final errorCount =
        _statusMap.values.where((status) => status.contains('失败')).length;

    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blue[50],
      child: Row(
        children: [
          Icon(Icons.info_outline, color: Colors.blue[600], size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              '总计: $totalImages | 加载中: $loadingCount | 成功: $successCount | 失败: $errorCount',
              style: TextStyle(
                color: Colors.blue[800],
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 构建图片网格
  Widget _buildImageGrid() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.2,
        ),
        itemCount: _demoImageUrls.length,
        itemBuilder: (context, index) {
          return _buildImageCard(index);
        },
      ),
    );
  }

  /// 构建单个图片卡片
  Widget _buildImageCard(int index) {
    final imageUrl = _demoImageUrls[index];
    final progress = _progressMap[imageUrl] ?? 0.0;
    final status = _statusMap[imageUrl] ?? '加载中';
    final isEncrypted = index % 3 == 0; // 每3个图片中有1个是加密的

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 图片区域
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: ProgressImageWidget(
                imageUrl: imageUrl,
                encryptionKey: null, // 暂时都不使用加密，避免破坏图片数据
                fit: BoxFit.cover,
                onProgress: (progress) => _onProgress(imageUrl, progress),
                onError: (error) => _onError(imageUrl, error),
                onSuccess: () => _onSuccess(imageUrl),
              ),
            ),
          ),

          // 信息区域
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      isEncrypted ? Icons.lock : Icons.lock_open,
                      size: 16,
                      color: isEncrypted ? Colors.orange : Colors.green,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        '图片 ${index + 1} ${isEncrypted ? '(模拟加密)' : '(普通)'}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '状态: $status',
                        style: TextStyle(
                          fontSize: 10,
                          color: _getStatusColor(status),
                        ),
                      ),
                    ),
                    Text(
                      '${(progress * 100).toInt()}%',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                LinearProgressIndicator(
                  value: progress,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(
                    isEncrypted ? Colors.orange : Colors.blue,
                  ),
                  minHeight: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 构建日志区域
  Widget _buildLogArea() {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(8),
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.terminal, size: 16, color: Colors.grey[700]),
                const SizedBox(width: 8),
                const Text(
                  '加载日志',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Text(
                  '${_logs.length} 条记录',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: _logs.length,
              reverse: true, // 最新日志在顶部
              itemBuilder: (context, index) {
                final log = _logs[_logs.length - 1 - index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Text(
                    log,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey[700],
                      fontFamily: 'monospace',
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// 获取状态颜色
  Color _getStatusColor(String status) {
    if (status.contains('成功')) return Colors.green;
    if (status.contains('失败')) return Colors.red;
    if (status.contains('下载中') || status.contains('解密中')) return Colors.blue;
    return Colors.grey;
  }

  /// 加载图片
  void _loadImage(String imageUrl, bool isEncrypted) {
    // 现在不需要手动调用startDownload，因为ProgressImageWidget使用autoLoad
    // 这个方法主要用于更新UI状态
    setState(() {
      _statusMap[imageUrl] = '开始加载';
      _progressMap[imageUrl] = 0.0;
    });

    _addLog(
      '🚀 开始加载图片: ${_getImageName(imageUrl)} ${isEncrypted ? '(模拟加密)' : '(普通)'}',
    );
  }

  /// 进度回调
  void _onProgress(String imageUrl, double progress) {
    setState(() {
      _progressMap[imageUrl] = progress;
      if (progress < 0.7) {
        _statusMap[imageUrl] = '下载中';
      } else if (progress < 1.0) {
        _statusMap[imageUrl] = '解密中';
      }
    });

    if (progress == 1.0) {
      _addLog('✅ 图片加载完成: ${_getImageName(imageUrl)} (100%)');
    } else {
      final percentage = (progress * 100).toInt();
      if (percentage % 20 == 0) {
        // 每20%记录一次
        _addLog('📊 加载进度: ${_getImageName(imageUrl)} ($percentage%)');
      }
    }
  }

  /// 错误回调
  void _onError(String imageUrl, String error) {
    setState(() {
      _statusMap[imageUrl] = '加载失败';
      _progressMap[imageUrl] = 0.0;
    });

    _addLog('❌ 图片加载失败: ${_getImageName(imageUrl)} - $error');
  }

  /// 成功回调
  void _onSuccess(String imageUrl) {
    // setState(() {
    //   _statusMap[imageUrl] = '加载成功';
    //   _progressMap[imageUrl] = 1.0;
    // });

    _addLog('🎉 图片加载成功: ${_getImageName(imageUrl)}');
  }

  /// 获取图片名称
  String _getImageName(String imageUrl) {
    final index = _demoImageUrls.indexOf(imageUrl);
    return index >= 0 ? '图片${index + 1}' : '未知图片';
  }

  /// 添加日志
  void _addLog(String message) {
    final timestamp = DateTime.now().toString().substring(11, 19);
    setState(() {
      _logs.add('[$timestamp] $message');
      if (_logs.length > 100) {
        _logs.removeAt(0); // 保持最多100条日志
      }
    });
  }

  /// 清空日志
  void _clearLogs() {
    setState(() {
      _logs.clear();
    });
  }

  /// 刷新所有图片
  void _refreshAllImages() {
    // 清空状态，触发重新构建
    setState(() {
      _progressMap.clear();
      _statusMap.clear();
    });

    _addLog('🔄 开始批量刷新所有图片');

    // 延迟一帧后重新构建，触发autoLoad
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          // 触发重新构建
        });
      }
    });
  }
}
