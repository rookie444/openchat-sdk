import 'dart:math' as math;
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_image.dart';

import 'chat_list_message_notifier.dart';
import '../models/chat_message.dart';

/// 图片加载状态扩展
/// 由于ChatMessage是基于FFI的不可变模型，我们需要用外部状态来管理图片加载
extension ChatListImageNotifier on ChatListMessageNotifier {
  
  // 内部状态管理 - 图片加载状态
  static final Map<int, int> _imageLoadStates = {}; // messageId -> state (0:loading, 1:success, 2:error)
  static final Map<int, double> _imageLoadProgress = {}; // messageId -> progress (0.0-1.0)
  
  /// 开始图片加载
  void startImageLoading(int messageId) {
    final message = findMessageById(messageId);
    if (message == null) return;
    
    // 避免重复加载
    if (_imageLoadStates[messageId] == 0) return;
    
    // 更新为加载状态
    _updateImageLoadState(messageId, 0, 0.0); // 0: 加载中
    _simulateImageLoading(messageId);
  }
  
  /// 重试图片加载
  void retryImageLoading(int messageId) {
    _updateImageLoadState(messageId, 0, 0.0); // 重置为加载中
    _simulateImageLoading(messageId);
  }

  /// 更新图片加载状态和进度
  void _updateImageLoadState(int messageId, int state, double progress) {
    _imageLoadStates[messageId] = state;
    _imageLoadProgress[messageId] = progress;
  }
  
  /// 获取图片加载状态
  int getImageLoadState(int messageId) {
    return _imageLoadStates[messageId] ?? -1; // -1表示未知状态
  }
  
  /// 获取图片加载进度
  double getImageProgress(int messageId) {
    return _imageLoadProgress[messageId] ?? 0.0;
  }
  
  /// 检查是否正在加载
  bool isImageLoading(int messageId) {
    return getImageLoadState(messageId) == 0;
  }
  
  /// 检查是否加载成功
  bool isImageSuccess(int messageId) {
    return getImageLoadState(messageId) == 1;
  }
  
  /// 检查是否加载失败
  bool isImageError(int messageId) {
    return getImageLoadState(messageId) == 2;
  }
  
  /// 设置图片加载成功
  void setImageLoadSuccess(int messageId) {
    _updateImageLoadState(messageId, 1, 1.0);
  }

  /// 设置图片加载失败
  void setImageLoadError(int messageId) {
    _updateImageLoadState(messageId, 2, 0.0);
  }
  
  /// 更新图片加载进度
  void updateImageProgress(int messageId, double progress) {
    final currentState = getImageLoadState(messageId);
    if (currentState == 0) { // 只有在加载中时才更新进度
      _updateImageLoadState(messageId, 0, progress.clamp(0.0, 1.0));
    }
  }

  /// 模拟图片加载过程
  void _simulateImageLoading(int messageId) async {
    try {
      final random = math.Random();
      final shouldFail = random.nextDouble() < 0.2; // 20%概率失败
      
      if (shouldFail) {
        // 模拟加载失败
        await Future.delayed(Duration(milliseconds: 500 + random.nextInt(1000)));
        setImageLoadError(messageId);
        return;
      }

      // 模拟加载进度
      for (int i = 0; i <= 100; i += random.nextInt(15) + 5) {
        await Future.delayed(Duration(milliseconds: 50 + random.nextInt(100)));
        
        // 检查是否还在加载状态
        if (isImageLoading(messageId)) {
          updateImageProgress(messageId, i / 100.0);
        } else {
          // 状态已改变，停止加载
          return;
        }
      }

      // 加载完成
      setImageLoadSuccess(messageId);
    } catch (e) {
      // 异常情况，设置为错误状态
      setImageLoadError(messageId);
    }
  }

  /// 批量开始加载图片
  void startAllImageLoading(List<int> messageIds) {
    for (final messageId in messageIds) {
      startImageLoading(messageId);
    }
  }
  
  /// 获取所有正在加载的图片消息ID
  List<int> getLoadingImageIds() {
    final messages = state;
    return messages
        .where((message) => isImageLoading(message.id))
        .map((message) => message.id)
        .toList();
  }
  
  /// 获取所有加载成功的图片消息ID
  List<int> getSuccessImageIds() {
    final messages = state;
    return messages
        .where((message) => isImageSuccess(message.id))
        .map((message) => message.id)
        .toList();
  }
  
  /// 获取所有加载失败的图片消息ID
  List<int> getErrorImageIds() {
    final messages = state;
    return messages
        .where((message) => isImageError(message.id))
        .map((message) => message.id)
        .toList();
  }
  
  /// 获取图片加载统计信息
  Map<String, int> getImageLoadStatistics() {
    final messages = state;
    int loading = 0;
    int success = 0;
    int error = 0;
    
    for (final message in messages) {
      final state = getImageLoadState(message.id);
      switch (state) {
        case 0:
          loading++;
          break;
        case 1:
          success++;
          break;
        case 2:
          error++;
          break;
      }
    }
    
    return {
      'loading': loading,
      'success': success,
      'error': error,
      'total': messages.length,
    };
  }
  
  /// 重置所有图片加载状态
  void resetAllImageLoadStates() {
    _imageLoadStates.clear();
    _imageLoadProgress.clear();
  }
  
  /// 清理指定消息的加载状态
  void clearImageLoadState(int messageId) {
    _imageLoadStates.remove(messageId);
    _imageLoadProgress.remove(messageId);
  }
  
  /// 获取所有图片类型的消息ID
  List<int> getAllImageMessageIds() {
    return state
        .where((message) => message is ChatMessageImageModel)
        .map((message) => message.id)
        .toList();
  }
  
  /// 自动开始加载所有图片消息
  void autoStartAllImageLoading() {
    final imageMessageIds = getAllImageMessageIds();
    startAllImageLoading(imageMessageIds);
  }
  
  /// 获取特定状态的图片消息
  List<ChatMessage> getImageMessagesByState(int state) {
    return this.state
        .where((message) => 
            message is ChatMessageImageModel && 
            getImageLoadState(message.id) == state)
        .toList();
  }
}