import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';
import '../services/emotion_service.dart';

/// GIF游戏演示页面 - 使用GifView组件缓存优化
class GifViewGameDemo extends StatefulWidget {
  const GifViewGameDemo({super.key});

  @override
  State<GifViewGameDemo> createState() => _GifViewGameDemoState();
}

class _GifViewGameDemoState extends State<GifViewGameDemo> {
  // GIF控制器
  GifController? _gifController;

  // 单一状态管理 - 只用一个ValueNotifier
  late final ValueNotifier<String> _gameStatusNotifier;

  // GIF数据缓存
  final Map<String, Uint8List> _gifDataCache = {};

  // GifView组件缓存 - 新增
  final Map<String, Widget> _gifViewCache = {};

  // 游戏配置
  final int _gameId = 1;

  // 简单的内部状态
  String _currentAnimationType = 'idle';
  int _loopCount = 0;

  // 定时器获取结果
  Timer? _resultTimer;
  int _timerCount = 0;

  // 预加载状态 - 使用ValueNotifier管理 (简化后不再需要wait和end的预加载状态)
  late final ValueNotifier<String> _currentAnimationNotifier;

  @override
  void initState() {
    super.initState();

    print('🎮 GifViewGameDemo initState');

    // 初始化所有ValueNotifier
    _gameStatusNotifier = ValueNotifier<String>('准备中...');
    _currentAnimationNotifier = ValueNotifier<String>('idle');

    // 初始化GIF控制器
    _gifController = GifController();

    // 预加载所有GIF数据
    _preloadAllGifData();
  }

  @override
  void dispose() {
    print('🎮 GifViewGameDemo dispose');
    _gifController?.dispose();
    _gifDataCache.clear();
    _gifViewCache.clear(); // 清理GifView缓存
    _gameStatusNotifier.dispose();
    _currentAnimationNotifier.dispose();
    _resultTimer?.cancel(); // 清理定时器
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GIF游戏演示 (简化版)'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.5,
      ),
      backgroundColor: const Color(0xFFF7F7F7),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // 状态显示
            _buildStatusCard(),

            const SizedBox(height: 16),

            // 游戏区域
            _buildGameArea(),

            const SizedBox(height: 16),

            // 控制按钮
            _buildControlButtons(),

            const Spacer(),

            // 说明
            _buildDescription(),
          ],
        ),
      ),
    );
  }

  /// 构建状态卡片
  Widget _buildStatusCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ValueListenableBuilder<String>(
          valueListenable: _gameStatusNotifier,
          builder: (context, status, child) {
            return Row(
              children: [
                Icon(Icons.info, color: Colors.blue[600], size: 20),
                const SizedBox(width: 8),
                Text(
                  '状态: $status',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Text(
                  '循环: $_loopCount',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  /// 构建游戏区域
  Widget _buildGameArea() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ValueListenableBuilder<String>(
          valueListenable: _gameStatusNotifier,
          builder: (context, status, child) {
            return _buildGameContent(status);
          },
        ),
      ),
    );
  }

  /// 构建游戏内容
  Widget _buildGameContent(String status) {
    // 根据状态显示不同内容
    if (status == '准备中...' || status == '加载中...') {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('加载GIF数据中...'),
          ],
        ),
      );
    }

    if (status == '准备就绪') {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.play_circle_outline, size: 64, color: Colors.blue[600]),
          const SizedBox(height: 16),
          const Text(
            '点击开始游戏',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ],
      );
    }

    if (status == '加载失败') {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: Colors.red[600]),
          const SizedBox(height: 16),
          const Text('加载失败'),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: _preloadAllGifData,
            child: const Text('重新加载'),
          ),
        ],
      );
    }

    if (status.contains('播放') ||
        status.contains('等待') ||
        status.contains('结束')) {
      return _buildAnimationView();
    }

    if (status == '游戏完成') {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.emoji_events, size: 64, color: Colors.orange[600]),
          const SizedBox(height: 16),
          const Text(
            '🎉 游戏完成！',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _resetGame,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: const Text('重新开始', style: TextStyle(color: Colors.white)),
          ),
        ],
      );
    }

    return const Center(child: Text('未知状态'));
  }

  /// 构建动画视图
  Widget _buildAnimationView() {
    return Center(
      child: SizedBox(
        width: 200,
        height: 200,
        child: Stack(
          children: [
            // Wait动画层 - 始终循环播放
            _buildWaitLayer(),
            // Start/End动画层 - 按需播放
            _buildStartEndLayer(),
          ],
        ),
      ),
    );
  }

  /// 构建Wait动画层 - 优化版本
  Widget _buildWaitLayer() {
    return ValueListenableBuilder<String>(
      valueListenable: _currentAnimationNotifier,
      builder: (context, currentAnimation, child) {
        final cachedWaitGif = _gifViewCache['wait'];
        if (cachedWaitGif == null) {
          return const SizedBox.shrink();
        }

        return Visibility(
          visible: currentAnimation == 'wait',
          child: cachedWaitGif,
        );
      },
    );
  }

  /// 构建Start/End动画层 - 优化版本
  Widget _buildStartEndLayer() {
    return ValueListenableBuilder<String>(
      valueListenable: _currentAnimationNotifier,
      builder: (context, currentAnimation, child) {
        // 根据当前动画类型决定显示什么
        Widget? displayWidget;
        if (currentAnimation == 'start') {
          displayWidget = _gifViewCache['start'];
        } else if (currentAnimation == 'end') {
          displayWidget = _gifViewCache['end'];
        }

        if (displayWidget == null) {
          return const SizedBox.shrink();
        }

        return Visibility(
          visible: currentAnimation == 'start' || currentAnimation == 'end',
          child: displayWidget,
        );
      },
    );
  }

  /// 构建控制按钮
  Widget _buildControlButtons() {
    return ValueListenableBuilder<String>(
      valueListenable: _gameStatusNotifier,
      builder: (context, status, child) {
        return Column(
          children: [
            // 主要控制按钮
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildControlButton(
                  icon: Icons.play_arrow,
                  label: '开始',
                  onPressed: status == '准备就绪' ? _startGame : null,
                  color: Colors.green,
                ),
                _buildControlButton(
                  icon: Icons.stop,
                  label: '停止',
                  onPressed:
                      (status.contains('播放') || status.contains('等待'))
                          ? _stopGame
                          : null,
                  color: Colors.red,
                ),
                _buildControlButton(
                  icon: Icons.refresh,
                  label: '重置',
                  onPressed: _resetGame,
                  color: Colors.blue,
                ),
              ],
            ),
            const SizedBox(height: 8),
            // 测试按钮
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildControlButton(
                  icon: Icons.play_circle,
                  label: '测试start',
                  onPressed: _testStartAnimation,
                  color: Colors.orange,
                ),
                _buildControlButton(
                  icon: Icons.loop,
                  label: '测试wait',
                  onPressed: _testWaitAnimation,
                  color: Colors.purple,
                ),
                _buildControlButton(
                  icon: Icons.stop_circle,
                  label: '测试end',
                  onPressed: _testEndAnimation,
                  color: Colors.teal,
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  /// 构建控制按钮
  Widget _buildControlButton({
    required IconData icon,
    required String label,
    required VoidCallback? onPressed,
    required Color color,
  }) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: onPressed != null ? color : Colors.grey,
            foregroundColor: Colors.white,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(16),
          ),
          child: Icon(icon, size: 24),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: onPressed != null ? Colors.black87 : Colors.grey,
          ),
        ),
      ],
    );
  }

  /// 构建说明
  Widget _buildDescription() {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.lightbulb, color: Colors.amber[600], size: 20),
                const SizedBox(width: 8),
                const Text(
                  'GifView组件缓存架构说明',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              '• 所有GifView组件在初始化时预创建并缓存\n'
              '• 避免每次ValueListenableBuilder更新时重建组件\n'
              '• 使用Stack双层架构 + Visibility控制显示/隐藏\n'
              '• Wait层：始终循环播放，通过可见性控制显示\n'
              '• Start/End层：按需显示，播放完成后自动切换\n'
              '• 定时器每3秒检查结果，获取到结果后直接切换\n'
              '• 性能优化：无重复构建，无缝动画切换',
              style: TextStyle(fontSize: 12, height: 1.4),
            ),
          ],
        ),
      ),
    );
  }

  /// 预加载所有GIF数据
  Future<void> _preloadAllGifData() async {
    if (!mounted) return;

    print('🔄 开始预加载所有GIF数据');
    _gameStatusNotifier.value = '加载中...';

    try {
      final futures = [
        _loadAndCacheGifData('start'),
        _loadAndCacheGifData('wait'),
        _loadAndCacheGifData('end'),
      ];

      await Future.wait(futures);

      if (mounted) {
        print('✅ 所有GIF数据预加载完成');
        // 预创建所有GifView组件
        _preCreateGifViewComponents();
        _gameStatusNotifier.value = '准备就绪';

        // 预加载完成后，让wait动画开始在后台播放（但不显示）
        // 这样切换到wait时就不会有延迟
        print('🔄 wait动画开始后台预热');
      }
    } catch (e) {
      print('❌ 预加载GIF数据失败: $e');
      if (mounted) {
        _gameStatusNotifier.value = '加载失败';
      }
    }
  }

  /// 预创建所有GifView组件 - 新增方法
  void _preCreateGifViewComponents() {
    print('🏗️ 开始预创建GifView组件');

    // 创建wait组件
    final waitData = _gifDataCache['${_gameId}_wait'];
    if (waitData != null) {
      _gifViewCache['wait'] = GifView.memory(
        key: const ValueKey('cached_wait_gif'),
        waitData,
        height: 200,
        width: 200,
        frameRate: 10,
        loop: true, // 始终循环
        onFrame: (index) {
          if (_currentAnimationType == 'wait' && index % 5 == 0) {
            print('🎞️ wait动画帧: $index');
          }
        },
      );
      print('✅ Wait GifView组件已缓存');
    }

    // 创建start组件
    final startData = _gifDataCache['${_gameId}_start'];
    if (startData != null) {
      _gifViewCache['start'] = GifView.memory(
        key: const ValueKey('cached_start_gif'),
        startData,
        height: 200,
        width: 200,
        frameRate: 10,
        loop: false, // start只播放一次
        onFinish: () => _onGifFinished('start'),
        onFrame: (index) {
          print('🎞️ start动画帧: $index');
        },
      );
      print('✅ Start GifView组件已缓存');
    }

    // 创建end组件
    final endData = _gifDataCache['${_gameId}_end'];
    if (endData != null) {
      _gifViewCache['end'] = GifView.memory(
        key: const ValueKey('cached_end_gif'),
        endData,
        height: 200,
        width: 200,
        frameRate: 8,
        loop: false, // end只播放一次
        onFinish: () => _onGifFinished('end'),
        onFrame: (index) {
          print('🎞️ end动画帧: $index');
        },
      );
      print('✅ End GifView组件已缓存');
    }

    print('🏗️ 所有GifView组件预创建完成');
  }

  /// 加载并缓存GIF数据
  Future<void> _loadAndCacheGifData(String animationType) async {
    if (!mounted) return;

    final dataKey = '${_gameId}_$animationType';
    if (_gifDataCache.containsKey(dataKey)) {
      print('✅ GIF数据已缓存: $animationType');
      return;
    }

    try {
      print('📦 开始加载GIF数据: $animationType');
      final gifData = await EmotionService().getGameGifByName(
        _gameId,
        '$animationType.gif',
      );
      if (gifData != null && mounted) {
        _gifDataCache[dataKey] = gifData;
        print('✅ GIF数据加载完成: $animationType (${gifData.length} bytes)');

        // 检查GIF数据的前几个字节
        if (gifData.length > 10) {
          final header = gifData
              .take(6)
              .map((b) => b.toRadixString(16).padLeft(2, '0'))
              .join(' ');
          print('📊 GIF头部信息: $header');
        }
      } else {
        print('❌ GIF数据为空: $animationType');
      }
    } catch (e) {
      print('❌ 加载GIF数据失败: $animationType - $e');
      rethrow;
    }
  }

  /// 开始游戏
  void _startGame() {
    if (!mounted) return;

    print('🎮 开始游戏');
    _loopCount = 0;
    _timerCount = 0;
    _resultTimer?.cancel(); // 清理之前的定时器
    _playAnimation('start');
  }

  /// 停止游戏
  void _stopGame() {
    if (!mounted) return;

    print('⏹️ 停止游戏');
    _gifController?.stop();
    _resultTimer?.cancel(); // 停止定时器
    _gameStatusNotifier.value = '准备就绪';
  }

  /// 重置游戏
  void _resetGame() {
    if (!mounted) return;

    print('🔄 重置游戏');
    _gifController?.stop();
    _resultTimer?.cancel(); // 停止定时器
    _loopCount = 0;
    _timerCount = 0;
    _currentAnimationType = 'idle';
    _currentAnimationNotifier.value = 'idle';
    _gameStatusNotifier.value = '准备就绪';
  }

  /// 播放指定动画
  void _playAnimation(String animationType) {
    if (!mounted) return;

    final dataKey = '${_gameId}_$animationType';
    if (!_gifDataCache.containsKey(dataKey)) {
      print('❌ GIF数据未加载: $animationType');
      return;
    }

    print('🎬 切换到动画: $animationType');

    // 清理之前的定时器
    _resultTimer?.cancel();

    // 更新动画类型
    _currentAnimationType = animationType;
    _currentAnimationNotifier.value = animationType;

    // 更新状态显示
    switch (animationType) {
      case 'start':
        _gameStatusNotifier.value = '播放开始动画';
        // 在start播放前预加载wait
        _preloadWaitAnimation();
        break;
      case 'wait':
        // _gameStatusNotifier.value = '等待结果中...';
        print('🔄 显示wait动画层');
        // 开始定时器获取结果
        _startResultTimer();
        break;
      case 'end':
        _gameStatusNotifier.value = '播放结束动画';
        break;
    }
  }

  /// 预加载wait动画 - 简化版本
  void _preloadWaitAnimation() {
    print('🔄 预加载wait动画...');
    // 现在组件已经预创建，不需要额外的预加载逻辑
    print('✅ Wait动画预加载完成（组件已缓存）');
  }

  /// 开始结果获取定时器
  void _startResultTimer() {
    _timerCount = 0;
    print('⏰ 开始结果获取定时器');

    _resultTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }

      _timerCount++;
      print('🔍 第 $_timerCount 次获取结果 (${_timerCount * 3}秒)');

      // 模拟获取结果
      final hasResult = _checkForResult(_timerCount);

      if (hasResult) {
        print('✅ 获取到结果！停止定时器，切换到end阶段');
        timer.cancel();

        // 直接切换到end动画
        _playAnimation('end');
      } else {
        // _gameStatusNotifier.value = '等待结果中... (${_timerCount * 3}秒)';
        print('⏳ 暂无结果，继续等待');
      }
    });
  }

  /// 检查是否有结果
  bool _checkForResult(int timerCount) {
    // 第三次定时器（9秒）时返回结果
    if (timerCount >= 1) {
      print('🎲 第三次定时器(9秒)，模拟获取到结果');
      return true;
    }

    // 前两次返回无结果
    print('❌ 第 $timerCount 次检查：暂无结果');
    return false;
  }

  /// GIF播放完成回调
  void _onGifFinished(String animationType) {
    if (!mounted) return;

    print('✅ GIF播放完成: $animationType');

    // 根据当前动画类型决定下一步
    switch (animationType) {
      case 'start':
        print('📊 start完成，切换到wait');
        _playAnimation('wait');
        break;
      case 'end':
        print('🎉 end完成，游戏结束');
        _gameStatusNotifier.value = '游戏完成';
        break;
    }
  }

  /// 测试start动画
  void _testStartAnimation() {
    print('🧪 测试start动画');
    _resultTimer?.cancel();
    _playAnimation('start');
  }

  /// 测试wait动画
  void _testWaitAnimation() {
    print('🧪 测试wait动画');
    _resultTimer?.cancel();
    _playAnimation('wait');
  }

  /// 测试end动画
  void _testEndAnimation() {
    print('🧪 测试end动画');
    _resultTimer?.cancel();
    _playAnimation('end');
  }
}
