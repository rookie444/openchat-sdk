import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';
import 'package:openchat_client/src/rust/api/model/ffi_message_content_game.dart';

/// 游戏动画状态枚举
enum GameAnimationState {
  idle, // 空闲状态（显示开始按钮）
  start, // 播放开始动画
  wait, // 播放等待动画
  end, // 播放结束动画
  result, // 显示结果
  error, // 错误状态
}

/// 游戏消息状态数据类
class GameMessageState {
  GameAnimationState animationState;
  bool isPlayedWaitGif;
  bool isPlayedResultGif;
  String? overrideCurrentImage;

  // 循环计数器
  int startCurrentLoop;
  int waitCurrentLoop;
  int endCurrentLoop;

  // 循环目标
  int startTargetLoops;
  int waitTargetLoops;
  int endTargetLoops;

  // 自动播放标记
  bool hasAutoStarted;

  // 新增：wait阶段控制标记
  bool shouldStopWait; // 是否应该停止wait阶段
  bool isWaitInfinite; // wait是否为无限循环模式

  GameMessageState({
    this.animationState = GameAnimationState.idle,
    this.isPlayedWaitGif = false,
    this.isPlayedResultGif = false,
    this.overrideCurrentImage,
    this.startCurrentLoop = 0,
    this.waitCurrentLoop = 0,
    this.endCurrentLoop = 0,
    this.startTargetLoops = 1,
    this.waitTargetLoops = -1, // -1表示无限循环
    this.endTargetLoops = 1,
    this.hasAutoStarted = false,
    this.shouldStopWait = false,
    this.isWaitInfinite = true, // 默认wait为无限循环模式
  });

  /// 重置所有状态
  void reset() {
    animationState = GameAnimationState.idle;
    isPlayedWaitGif = false;
    isPlayedResultGif = false;
    overrideCurrentImage = null;
    startCurrentLoop = 0;
    waitCurrentLoop = 0;
    endCurrentLoop = 0;
    hasAutoStarted = false;
    shouldStopWait = false;
    isWaitInfinite = true;
  }

  /// 复制状态
  GameMessageState copyWith({
    GameAnimationState? animationState,
    bool? isPlayedWaitGif,
    bool? isPlayedResultGif,
    String? overrideCurrentImage,
    int? startCurrentLoop,
    int? waitCurrentLoop,
    int? endCurrentLoop,
    int? startTargetLoops,
    int? waitTargetLoops,
    int? endTargetLoops,
    bool? hasAutoStarted,
    bool? shouldStopWait,
    bool? isWaitInfinite,
  }) {
    return GameMessageState(
      animationState: animationState ?? this.animationState,
      isPlayedWaitGif: isPlayedWaitGif ?? this.isPlayedWaitGif,
      isPlayedResultGif: isPlayedResultGif ?? this.isPlayedResultGif,
      overrideCurrentImage: overrideCurrentImage ?? this.overrideCurrentImage,
      startCurrentLoop: startCurrentLoop ?? this.startCurrentLoop,
      waitCurrentLoop: waitCurrentLoop ?? this.waitCurrentLoop,
      endCurrentLoop: endCurrentLoop ?? this.endCurrentLoop,
      startTargetLoops: startTargetLoops ?? this.startTargetLoops,
      waitTargetLoops: waitTargetLoops ?? this.waitTargetLoops,
      endTargetLoops: endTargetLoops ?? this.endTargetLoops,
      hasAutoStarted: hasAutoStarted ?? this.hasAutoStarted,
      shouldStopWait: shouldStopWait ?? this.shouldStopWait,
      isWaitInfinite: isWaitInfinite ?? this.isWaitInfinite,
    );
  }

  /// 检查wait是否应该继续
  bool shouldContinueWait() {
    if (!isWaitInfinite) {
      return waitCurrentLoop < waitTargetLoops;
    }
    return !shouldStopWait;
  }

  /// 手动停止wait阶段
  void stopWait() {
    shouldStopWait = true;
  }

  @override
  String toString() {
    return 'GameMessageState{state: $animationState, waitPlayed: $isPlayedWaitGif, resultPlayed: $isPlayedResultGif, currentImage: $overrideCurrentImage, waitLoop: $waitCurrentLoop, shouldStop: $shouldStopWait}';
  }
}

/// 游戏消息模型
class ChatMessageGameModel extends ChatMessage {
  String? currentResultImage;

  // 添加唯一标识符用于调试对象复用
  final String _instanceId = DateTime.now().millisecondsSinceEpoch.toString();

  ChatMessageGameModel({
    required super.ffiModel,
    required FfiAnmatedMessageContent super.contentObj,
  });

  /// 获取实例ID用于调试
  String get instanceId => _instanceId;


  /// 获取当前结果图片
  void updateCurrentResultImage(String image) {
    currentResultImage = image;
  }

  /// 游戏ID
  int get gameId => contentObj.gameId;

  @override
  String toString() {
    return 'ChatMessageGameModel{gameId: $gameId, currentImage: $currentResultImage, isMe: $isMe}';
  }
}
