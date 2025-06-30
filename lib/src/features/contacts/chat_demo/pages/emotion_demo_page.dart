import 'package:flutter/material.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/services/emotion_service.dart';
import 'package:openchat_client/src/rust/api/model/ffi_emotion_model.dart';

/// 表情演示页面
class EmotionDemoPage extends StatefulWidget {
  const EmotionDemoPage({super.key});

  @override
  State<EmotionDemoPage> createState() => _EmotionDemoPageState();
}

class _EmotionDemoPageState extends State<EmotionDemoPage> {
  final EmotionService _emotionService = EmotionService();

  List<Map<String, dynamic>> _emoticons = [];
  bool _isLoading = false;
  bool _fromCache = false;
  String _cacheInfo = '';
  String? _error;
  FfiAnimatedGameConfig? _gameGlobalConfig;

  @override
  void initState() {
    super.initState();
    _loadEmoticons();
    _loadGameGlobalConfig();
  }

  /// 加载表情列表（使用自动模式）
  Future<void> _loadEmoticons() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final result = await _emotionService.getEmoticonListAuto();
      setState(() {
        _emoticons = List<Map<String, dynamic>>.from(result['emoticons']);
        _fromCache = result['from_cache'] as bool;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  /// 加载游戏全局配置
  Future<void> _loadGameGlobalConfig() async {
    // final result = await _emotionService.getGameGlobalConfig();
    //   setState(() {
    //     _gameGlobalConfig = result; 
    //   });
  }

  /// 刷新表情列表
  Future<void> _refreshEmoticons() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final result = await _emotionService.refreshEmoticonList();
      setState(() {
        _emoticons = List<Map<String, dynamic>>.from(result['emoticons']);
        _fromCache = result['from_cache'] as bool;
        _isLoading = false;
      });

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('表情列表刷新成功')));
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  /// 清理缓存
  Future<void> _clearCache() async {
    try {
      await _emotionService.clearEmoticonCache();
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('缓存清理成功')));
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('缓存清理失败: $e')));
    }
  }

  /// 获取缓存信息
  Future<void> _getCacheInfo() async {
    try {
      final info = await _emotionService.getCacheInfo();
      setState(() {
        _cacheInfo = info;
      });

      // 显示缓存信息对话框
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              title: const Text('缓存信息'),
              content: SingleChildScrollView(child: Text(_cacheInfo)),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('关闭'),
                ),
              ],
            ),
      );
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('获取缓存信息失败: $e')));
    }
  }

  /// 强制更新表情列表
  Future<void> _forceUpdateEmoticons() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final result = await _emotionService.forceUpdateEmoticonList();
      setState(() {
        _emoticons = List<Map<String, dynamic>>.from(result['emoticons']);
        _fromCache = result['from_cache'] as bool;
        _isLoading = false;
      });

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('表情列表强制更新成功')));
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  /// 获取详细缓存状态
  Future<void> _getCacheStatus() async {
    try {
      final status = await _emotionService.getCacheStatus();

      // 显示缓存状态对话框
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              title: const Text('缓存状态详情'),
              content: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (status.containsKey('error'))
                      Text(
                        '错误: ${status['error']}',
                        style: const TextStyle(color: Colors.red),
                      )
                    else ...[
                      Text('最后更新时间: ${status['last_update_formatted']}'),
                      const SizedBox(height: 8),
                      Text('当前时间: ${status['current_time_formatted']}'),
                      const SizedBox(height: 8),
                      Text(
                        '距离上次更新: ${status['hours_since_update']?.toStringAsFixed(1) ?? 'N/A'} 小时',
                      ),
                      const SizedBox(height: 8),
                      Text('是否需要刷新: ${status['should_refresh'] ? '是' : '否'}'),
                      const SizedBox(height: 16),
                      Text(
                        '缓存文件信息:',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(status['cache_info'] ?? '无信息'),
                    ],
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('关闭'),
                ),
              ],
            ),
      );
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('获取缓存状态失败: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('表情包演示'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _refreshEmoticons,
            tooltip: '刷新表情',
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'cache_info':
                  _getCacheInfo();
                  break;
                case 'clear_cache':
                  _clearCache();
                  break;
                case 'force_update':
                  _forceUpdateEmoticons();
                  break;
                case 'cache_status':
                  _getCacheStatus();
                  break;
              }
            },
            itemBuilder:
                (context) => [
                  const PopupMenuItem(
                    value: 'cache_info',
                    child: Text('查看缓存信息'),
                  ),
                  const PopupMenuItem(
                    value: 'clear_cache',
                    child: Text('清理缓存'),
                  ),
                  const PopupMenuItem(
                    value: 'force_update',
                    child: Text('强制更新表情列表'),
                  ),
                  const PopupMenuItem(
                    value: 'cache_status',
                    child: Text('查看缓存状态'),
                  ),
                ],
          ),
        ],
      ),
      body: Column(
        children: [
          // 状态信息栏
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: Colors.grey[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '表情包数量: ${_emoticons.length}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '数据来源: ${_fromCache ? "缓存" : "服务器"}',
                  style: TextStyle(
                    fontSize: 14,
                    color: _fromCache ? Colors.green : Colors.blue,
                  ),
                ),
                if (_error != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    '错误: $_error',
                    style: const TextStyle(fontSize: 14, color: Colors.red),
                  ),
                ],
              ],
            ),
          ),

          // 表情列表
          Expanded(
            child:
                _isLoading
                    ? const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(height: 16),
                          Text('正在加载表情包...'),
                        ],
                      ),
                    )
                    : _emoticons.isEmpty
                    ? const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.sentiment_dissatisfied,
                            size: 64,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 16),
                          Text(
                            '暂无表情包',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                    )
                    : GridView.builder(
                      padding: const EdgeInsets.all(16),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 1.0,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                          ),
                      itemCount: _emoticons.length,
                      itemBuilder: (context, index) {
                        final emoticon = _emoticons[index];
                        return _buildEmoticonItem(emoticon);
                      },
                    ),
          ),
        ],
      ),
    );
  }

  /// 构建表情包项目
  Widget _buildEmoticonItem(Map<String, dynamic> emoticon) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () => _showEmoticonDetails(emoticon),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: Image.network(
                  emoticon['emoticon_url'] as String,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[200],
                      child: const Icon(Icons.broken_image, color: Colors.grey),
                    );
                  },
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      color: Colors.grey[200],
                      child: const Center(
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
              ),
              child: Text(
                'ID: ${emoticon['emoticon_id']}',
                style: const TextStyle(fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 显示表情包详情
  void _showEmoticonDetails(Map<String, dynamic> emoticon) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text('表情包 ID: ${emoticon['emoticon_id']}'),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    emoticon['emoticon_url'] as String,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 200,
                        color: Colors.grey[200],
                        child: const Icon(
                          Icons.broken_image,
                          size: 64,
                          color: Colors.grey,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  Text('类型: ${emoticon['emotion_type']}'),
                  Text('图片名称: ${emoticon['img_name'] ?? '无'}'),
                  if (emoticon['game_id'] != null)
                    Text('游戏ID: ${emoticon['game_id']}'),
                  Text('游戏图标路径: ${emoticon['game_icon_path'] ?? '无'}'),
                  Text('URL: ${emoticon['emoticon_url']}'),
                  Text('尺寸: ${emoticon['width']} x ${emoticon['height']}'),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('关闭'),
              ),
            ],
          ),
    );
  }
}
