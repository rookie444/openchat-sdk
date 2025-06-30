import 'chat_message.dart';

/// 骰子消息模型
class ChatMessageDiceModel extends ChatMessage {
  DiceAnimationState animationState = DiceAnimationState(createdAt: DateTime.now());

  ChatMessageDiceModel({
    required super.ffiModel,
    super.contentObj,
  });

  /// 获取当前骰子结果
  int? get currentImage => animationState.result;

  /// 获取骰子结果（如果有的话）
  int? get diceResult => animationState.result;

  /// 是否正在动画
  bool get isAnimating => animationState.isAnimating;

  /// 创建时间
  DateTime get createdAt => animationState.createdAt;

  /// 复制并更新动画状态
  ChatMessageDiceModel copyWithAnimationState(DiceAnimationState newState) {
    return ChatMessageDiceModel(
      ffiModel: ffiModel,
      contentObj: contentObj,
    );
  }
}

/// 骰子动画状态
class DiceAnimationState {
  final int? result; // 骰子结果，null表示还在动画中
  final bool isAnimating; // 是否正在动画
  final DateTime createdAt; // 创建时间

  DiceAnimationState({
    this.result,
    this.isAnimating = true,
    required this.createdAt,
  });

  DiceAnimationState copyWith({
    int? result,
    bool? isAnimating,
    DateTime? createdAt,
  }) {
    return DiceAnimationState(
      result: result ?? this.result,
      isAnimating: isAnimating ?? this.isAnimating,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
