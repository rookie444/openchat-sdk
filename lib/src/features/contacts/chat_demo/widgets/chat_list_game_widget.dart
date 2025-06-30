import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';
import 'package:openchat_client/src/rust/api/download_api.dart'
    as rust_download;
import '../services/emotion_service.dart';
import '../models/chat_message_game.dart';
import 'dart:math';

/// 游戏消息Widget - 使用gif库实现动画播放
class ChatListGameWidget extends StatefulWidget {
  final ChatMessageGameModel message;
  final Function()? onAnimationComplete;
  final Function()? onGameRestart;
  final Function(int waitLoopCount)? onWaitLoopComplete;

  const ChatListGameWidget({
    super.key,
    required this.message,
    this.onAnimationComplete,
    this.onGameRestart,
    this.onWaitLoopComplete,
  });

  @override
  State<ChatListGameWidget> createState() => _ChatListGameWidgetState();
}

class _ChatListGameWidgetState extends State<ChatListGameWidget>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  // 核心：使用gif_view库的GifController
  GifController? _gifController;

  // GifView组件缓存 - 移植自gif_view_game_demo
  final Map<String, Widget> _gifViewCache = {};

  // 当前播放状态
  String? _currentAnimationType;
  bool _isPlaying = false;

  // GIF数据缓存
  final Map<String, Uint8List> _gifDataCache = {};

  // 游戏状态管理 - 使用更具体的状态标识
  late final ValueNotifier<String> _gameStatusNotifier;

  // 当前动画状态通知器 - 用于控制双层架构显示
  late final ValueNotifier<String> _currentAnimationNotifier;

  // 内部状态 - 不触发重建
  String? _currentResultImage; // 内部结果图片

  // 定时器用于模拟播放完成回调
  Timer? _resultTimer;
  int _timerCount = 0;

  // 播放状态控制 - 防止重复播放
  bool _isStartPlaying = false;
  bool _isWaitPlaying = false;
  bool _isEndPlaying = false;
  bool _isResultTimerRunning = false;

  // 游戏ID缓存
  int get _gameId => widget.message.gameId;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    try {
      // 初始化所有ValueNotifier
      _gameStatusNotifier = ValueNotifier<String>('准备中...');
      _currentAnimationNotifier = ValueNotifier<String>('idle');
      _currentResultImage = widget.message.gameContent.currentImage;

      if (_currentResultImage != null && _currentResultImage!.isNotEmpty) {
        if (!widget.message.isRead && !widget.message.isMe) {
          // 初始化GIF控制器 - 使用gif_view库的方式
          _gifController = GifController();

          // 异步预加载GIF数据
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              _preloadAllGifData();
            }
          });
        } else {
          _gameStatusNotifier.value = '游戏完成';
          print('🎮 游戏已完成，直接显示结果');
        }
      } else {
        // 初始化GIF控制器 - 使用gif_view库的方式
        _gifController = GifController();

        // 异步预加载GIF数据
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) {
            _preloadAllGifData();
          }
        });
      }
    } catch (e) {
      print('❌ ChatListGameWidget initState 失败: $e');
    }
  }

  @override
  void dispose() {
    print('🎮 ChatListGameWidget dispose - 游戏ID: ${widget.message.gameId}');

    // 清理定时器
    _resultTimer?.cancel();

    // 清理GIF控制器
    _gifController?.dispose();
    _gameStatusNotifier.dispose();
    _currentAnimationNotifier.dispose();
    _gifDataCache.clear();
    _gifViewCache.clear(); // 清理GifView缓存

    // 清理播放状态
    _currentAnimationType = null;
    _isPlaying = false;
    _isStartPlaying = false;
    _isWaitPlaying = false;
    _isEndPlaying = false;
    _isResultTimerRunning = false;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final gameId = widget.message.gameId;
    print(
      '🎮 ChatListGameWidget build - 游戏ID: $gameId, 当前状态: ${_gameStatusNotifier.value}',
    );

    return Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: ValueListenableBuilder<String>(
        valueListenable: _gameStatusNotifier,
        builder: (context, state, child) {
          return _buildGameContent(state);
        },
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

    // 具体的动画播放状态
    if (status == 'start_playing' ||
        status == 'wait_playing' ||
        status == 'end_playing') {
      return _buildAnimationView();
    }

    if (status == '游戏完成') {
      return _buildResultState();
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

  /// 构建Wait动画层
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

  /// 构建Start/End动画层
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

  /// 构建结果状态 - 直接使用内部状态
  Widget _buildResultState() {
    return FutureBuilder<String?>(
      future: _getResultImagePath(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return _buildLoadingIndicator();
        }

        final imagePath = snapshot.data;
        if (imagePath == null || imagePath.isEmpty) {
          return _buildDefaultResult();
        }

        return _buildResultImage(imagePath);
      },
    );
  }

  /// 构建结果图片
  Widget _buildResultImage(String imagePath) {
    return Stack(
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.file(
              File(imagePath),
              width: 160,
              height: 160,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                print('❌ 结果图片加载失败: $imagePath - $error');
                return _buildDefaultResult();
              },
            ),
          ),
        ),
      ],
    );
  }

  /// 构建默认结果
  Widget _buildDefaultResult() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.casino, size: 48, color: Colors.orange.shade600),
        const SizedBox(height: 8),
        const Text(
          '游戏完成',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue.shade600,
            foregroundColor: Colors.white,
          ),
          child: const Text('重新开始'),
        ),
      ],
    );
  }

  /// 构建加载指示器
  Widget _buildLoadingIndicator() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 16),
          Text('加载中...', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  /// 预加载所有GIF数据 - 添加预创建组件逻辑
  Future<void> _preloadAllGifData() async {
    if (!mounted) {
      print('⚠️ Widget已dispose，跳过预加载');
      return;
    }

    final gameId = widget.message.gameId;
    print('🔄 开始预加载所有GIF数据 - 游戏ID: $gameId');

    try {
      // 预加载所有需要的GIF数据
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

        // 检查是否已经在播放start动画，避免重复播放
        if (!_isStartPlaying && _gameStatusNotifier.value != 'start_playing') {
          //开始播放start动画
          _playAnimation('start');
        }

        print('🎮 游戏组件已准备就绪');
      }
    } catch (e) {
      print('❌ 预加载GIF数据失败: $e');
      // 错误时设置为错误状态
      _gameStatusNotifier.value = '加载失败';
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
        frameRate: 15,
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

  /// 开始结果获取定时器
  void _startResultTimer() {
    // 防止重复启动定时器
    if (_isResultTimerRunning) {
      print('⚠️ 定时器已在运行，跳过启动');
      return;
    }

    _timerCount = 0;
    _isResultTimerRunning = true;
    print('⏰ 开始结果获取定时器');

    _resultTimer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (!mounted) {
        timer.cancel();
        _isResultTimerRunning = false;
        return;
      }

      _timerCount++;
      print('🔍 第 $_timerCount 次获取结果 (${_timerCount * 2}秒)');

      widget.message.updateCurrentResultImage('ht_5.png');
      // 模拟获取结果
      final hasResult = _checkForResult(_timerCount);

      if (hasResult) {
        print('✅ 获取到结果！停止定时器，切换到end阶段');
        timer.cancel();
        _isResultTimerRunning = false;

        // 直接切换到end动画
        _playAnimation('end');
      } else {
        print('⏳ 暂无结果，继续等待');
      }
    });
  }

  /// 检查是否有结果
  bool _checkForResult(int timerCount) {
    // 第三次定时器（6秒）时返回结果

    _currentResultImage = widget.message.gameContent.currentImage;
    if (_currentResultImage != null && _currentResultImage!.isNotEmpty) {
      return true;
    }

    if (timerCount >= 1) {
      print('🎲 第三次定时器(6秒)，模拟获取到结果');
      return true;
    }

    // 前两次返回无结果
    print('❌ 第 $timerCount 次检查：暂无结果');
    return false;
  }

  /// 获取结果图片路径
  Future<String?> _getResultImagePath() async {
    try {
      final gameId = widget.message.gameId;
      final currentImage = _currentResultImage;

      print('🖼️ 获取结果图片路径: gameId=$gameId, currentImage=$currentImage');

      if (currentImage == null || currentImage.isEmpty || currentImage == '0') {
        print('❌ 结果图片名称无效: $currentImage');
        return null;
      }

      // 获取游戏配置
      final ffiAnimatedGameConfig = EmotionService().animatedGame(gameId);
      if (ffiAnimatedGameConfig == null) {
        print('❌ 未找到游戏配置: gameId=$gameId');
        return null;
      }

      // 构建结果图片路径
      final dirPath = 'AnimatedGame/$gameId';
      final fileLastPath = ffiAnimatedGameConfig.downUrl.split("/").last;
      final fileName = fileLastPath.split(".").first;

      // 使用EmotionService的currentImagePath方法构建相对路径
      final relativePath = EmotionService().currentImagePath(
        currentImage,
        dirPath,
        fileName,
      );

      if (relativePath == null) {
        print(
          '❌ 无法构建相对路径: currentImage=$currentImage, dirPath=$dirPath, fileName=$fileName',
        );
        return null;
      }

      // 获取绝对路径
      final absolutePath = await rust_download.normalizeFilePath(
        path: relativePath,
      );
      print('🖼️ 结果图片路径: 相对路径=$relativePath, 绝对路径=$absolutePath');

      // 检查文件是否存在
      final file = File(absolutePath);
      if (!file.existsSync()) {
        print('❌ 结果图片文件不存在: $absolutePath');
        return null;
      }

      print('✅ 结果图片路径构建成功: $absolutePath');
      return absolutePath;
    } catch (e) {
      print('❌ 获取结果图片路径失败: $e');
      return null;
    }
  }

  /// GIF播放完成回调
  void _onGifFinished(String animationType) {
    if (!mounted) return;

    print('✅ GIF播放完成: $animationType');

    // 根据当前动画类型决定下一步
    switch (animationType) {
      case 'start':
        print('📊 start完成，切换到wait');
        _isStartPlaying = false;
        _playAnimation('wait');
        break;
      case 'end':
        print('🎉 end完成，游戏结束');
        _isEndPlaying = false;
        _gameStatusNotifier.value = '游戏完成';
        break;
    }
  }

  /// 播放指定动画
  void _playAnimation(String animationType) {
    if (!mounted) return;

    // 检查是否已经在播放该动画，避免重复播放
    switch (animationType) {
      case 'start':
        if (_isStartPlaying) {
          print('⚠️ start动画已在播放，跳过');
          return;
        }
        _isStartPlaying = true;
        break;
      case 'wait':
        if (_isWaitPlaying) {
          print('⚠️ wait动画已在播放，跳过');
          return;
        }
        _isWaitPlaying = true;
        break;
      case 'end':
        if (_isEndPlaying) {
          print('⚠️ end动画已在播放，跳过');
          return;
        }
        _isEndPlaying = true;
        break;
    }

    final dataKey = '${_gameId}_$animationType';
    if (!_gifDataCache.containsKey(dataKey)) {
      print('❌ GIF数据未加载: $animationType');
      return;
    }

    print('🎬 切换到动画: $animationType');

    // 更新动画类型
    _currentAnimationType = animationType;
    _currentAnimationNotifier.value = animationType;

    // 更新状态显示
    switch (animationType) {
      case 'start':
        _gameStatusNotifier.value = 'start_playing';
        break;
      case 'wait':
        _gameStatusNotifier.value = 'wait_playing';
        print('🔄 显示wait动画层');
        // 开始定时器获取结果
        _startResultTimer();
        break;
      case 'end':
        _gameStatusNotifier.value = 'end_playing';
        // 清理定时器
        _resultTimer?.cancel();
        _isResultTimerRunning = false;
        break;
    }
  }

  /// 加载并缓存GIF数据
  Future<void> _loadAndCacheGifData(String animationType) async {
    if (!mounted) {
      print('⚠️ Widget已dispose，跳过加载: $animationType');
      return;
    }

    final gameId = widget.message.gameId;
    final dataKey = '${gameId}_${animationType}';

    if (_gifDataCache.containsKey(dataKey)) {
      print('✅ GIF数据已缓存: $animationType');
      return;
    }

    try {
      final gifData = await EmotionService().getGameGifByName(
        gameId,
        '$animationType.gif',
      );
      if (gifData != null && mounted) {
        _gifDataCache[dataKey] = gifData;
        print('📦 GIF数据缓存完成: $animationType (${gifData.length} bytes)');
      }
    } catch (e) {
      print('❌ 加载GIF数据失败: $animationType - $e');
    }
  }
}
