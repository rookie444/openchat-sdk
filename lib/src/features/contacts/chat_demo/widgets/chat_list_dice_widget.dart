import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_dice.dart';

/// 骰子动画状态枚举
enum DiceAnimationState {
  idle, // 空闲状态
  animating, // 动画中
  result, // 显示结果
}

/// 骰子组件 - 播放GIF动画并显示随机结果，使用ValueNotifier状态管理
class ChatListDiceWidget extends StatefulWidget {
  final ChatMessageDiceModel message;
  final VoidCallback? onAnimationComplete;

  const ChatListDiceWidget({
    super.key,
    required this.message,
    this.onAnimationComplete,
  });

  @override
  State<ChatListDiceWidget> createState() => _ChatListDiceWidgetState();
}

class _ChatListDiceWidgetState extends State<ChatListDiceWidget>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  // 使用ValueNotifier进行状态管理
  late final ValueNotifier<DiceAnimationState> _stateNotifier;

  // 骰子结果
  int? _result;

  // 动画定时器 - 固定2秒
  Timer? _animationTimer;

  // 缩放动画控制器
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  @override
  bool get wantKeepAlive => true; // 保持状态，防止滚动时重建

  @override
  void initState() {
    super.initState();

    print(
      '🎲 骰子组件初始化 - currentImage: ${widget.message.diceContent.currentImage}',
    );

    // 初始化ValueNotifier
    _stateNotifier = ValueNotifier<DiceAnimationState>(DiceAnimationState.idle);

    // 初始化缩放动画控制器
    _scaleController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _scaleController, curve: Curves.elasticOut),
    );

    // 根据初始结果决定状态
    final currentImage = widget.message.diceContent.currentImage;

    if (currentImage == 0) {
      // 没有结果，开始动画
      _startDiceAnimation();
    }else if (currentImage > 0 && !widget.message.isRead ) {
       // 没有结果，开始动画
      _startDiceAnimation();
      
    }else if (currentImage > 0 && widget.message.isMe ){
       // 有结果，直接显示结果
      _result = currentImage;
      _stateNotifier.value = DiceAnimationState.result;
      print('🎲 直接显示结果: $_result');
    } else {
      // 有结果，直接显示结果
      _result = currentImage;
      _stateNotifier.value = DiceAnimationState.result;
      print('🎲 直接显示结果: $_result');
    }
  }

  @override
  void dispose() {
    _animationTimer?.cancel();
    _scaleController.dispose();
    _stateNotifier.dispose();
    super.dispose();
  }

  /// 开始骰子动画
  void _startDiceAnimation() {
    // 如果已经在动画中，不再重复开始
    if (_stateNotifier.value == DiceAnimationState.animating) {
      print('🎲 骰子动画已经在进行中，跳过重复开始');
      return;
    }

    _stateNotifier.value = DiceAnimationState.animating;
    print('🎲 开始骰子动画 - 固定2秒');

    // 清空当前结果
    _result = null;

    // 固定2秒后停止动画并显示结果
    _animationTimer = Timer(const Duration(seconds: 2), () {
      if (mounted) {
        _showResult();
      }
    });
  }

  /// 显示骰子结果
  void _showResult() {
    // 优先使用实时结果，如果没有则生成随机结果
    final currentImage = widget.message.diceContent.currentImage;
    final result = currentImage > 0 ? currentImage : Random().nextInt(6) + 1;

    _result = result;
    _stateNotifier.value = DiceAnimationState.result;

    print('🎲 骰子结果显示: $result (来源: ${currentImage > 0 ? "服务器" : "随机"})');

    // 播放结果显示动画
    _scaleController.forward();

    // 通知动画完成
    widget.onAnimationComplete?.call();
  }

  /// 监听结果变化 - 在动画中如果有结果更新
  void _onResultUpdated(int newResult) {
    print('🎲 结果更新: $newResult (当前状态: ${_stateNotifier.value})');

    if (_stateNotifier.value == DiceAnimationState.animating) {
      // 如果正在动画中，保存结果但继续动画
      print('🎲 动画中收到结果更新，将在动画完成后显示: $newResult');
      // 结果会在_showResult()中从widget.message.diceContent.currentImage获取
    } else if (_stateNotifier.value == DiceAnimationState.idle) {
      // 如果在空闲状态收到结果，直接显示
      _result = newResult;
      _stateNotifier.value = DiceAnimationState.result;
      print('🎲 空闲状态收到结果，直接显示: $newResult');
    }
  }

  /// 公共方法：外部更新结果
  void updateResult(int newResult) {
    if (mounted) {
      _onResultUpdated(newResult);
    }
  }

  /// 公共方法：获取当前状态
  DiceAnimationState get currentState => _stateNotifier.value;

  /// 公共方法：检查是否正在动画
  bool get isAnimating => _stateNotifier.value == DiceAnimationState.animating;

  /// 获取骰子结果图片路径
  String _getDiceImagePath(int result) {
    //改为switch
    switch (result) {
      case 1:
        return 'assets/images/chat/chat_dice_one.png';
      case 2:
        return 'assets/images/chat/chat_dice_two.png';
      case 3:
        return 'assets/images/chat/chat_dice_three.png';
      case 4:
        return 'assets/images/chat/chat_dice_four.png';
      case 5:
        return 'assets/images/chat/chat_dice_five.png';
      case 6:
        return 'assets/images/chat/chat_dice_six.png';
      default:
        return 'assets/images/chat/chat_dice_one.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // 必须调用，用于AutomaticKeepAliveClientMixin

    return Container(
      width: 60,
      height: 80,
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: ValueListenableBuilder<DiceAnimationState>(
          valueListenable: _stateNotifier,
          builder: (context, state, child) {
            switch (state) {
              case DiceAnimationState.idle:
                return _buildIdleDice();
              case DiceAnimationState.animating:
                return _buildAnimatingDice();
              case DiceAnimationState.result:
                return _buildResultDice();
            }
          },
        ),
      ),
    );
  }

  /// 构建空闲状态骰子
  Widget _buildIdleDice() {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!, width: 2),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.casino, size: 30, color: Colors.grey),
          SizedBox(height: 4),
          Text(
            '骰子',
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  /// 构建动画中的骰子（GIF）
  Widget _buildAnimatingDice() {
    return Container(
      width: 60,
      height: 100,
      color: Colors.transparent,
      child: Stack(
        children: [
          // GIF动画
          Center(
            child: Image.asset(
              'assets/gif/diceImage.gif',
              width: 60,
              height: 60,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                print('❌ 加载骰子GIF失败: $error');
                return _buildFallbackAnimatingDice();
              },
            ),
          ),
        ],
      ),
    );
  }

  /// 构建结果骰子（静态图片） 结果动画去掉
  Widget _buildResultDice() {
    if (_result == null) return const SizedBox.shrink();

    return Container(
      width: 60,
      height: 60,
      color: Colors.transparent,
      child: Stack(
        children: [
          // 结果图片
          Center(
            child: Image.asset(
              _getDiceImagePath(_result!),
              width: 60,
              height: 60,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                print('❌ 加载骰子结果图片失败: $error');
                return _buildFallbackResultDice(_result!);
              },
            ),
          ),
        ],
      ),
    );
  }

  /// 降级方案：动画中的骰子（无GIF时使用）
  Widget _buildFallbackAnimatingDice() {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!, width: 2),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.casino, size: 40, color: Colors.blue),
          SizedBox(height: 4),
          Text(
            '投掷中...',
            style: TextStyle(
              fontSize: 12,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  /// 降级方案：结果骰子（无图片时使用）
  Widget _buildFallbackResultDice(int result) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            result.toString(),
            style: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          const Text('点', style: TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }
}
