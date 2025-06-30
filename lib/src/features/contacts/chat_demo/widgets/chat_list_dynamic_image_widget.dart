import 'package:flutter/material.dart';
import 'package:openchat_client/src/features/common/widgets/progress_image_widget.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_dynamic_image.dart';

/// 聊天列表动图组件
/// 支持GIF动画的显示、播放控制和加载状态管理
class ChatListDynamicImageWidget extends StatefulWidget {
  final ChatMessageDynamicImageModel message;
  final Function(String messageId)? onRetryLoad;
  final Function(String messageId)? onLoadError;
  final Function(String messageId, double progress)? onProgress;

  const ChatListDynamicImageWidget({
    super.key,
    required this.message,
    this.onRetryLoad,
    this.onLoadError,
    this.onProgress,
  });

  @override
  State<ChatListDynamicImageWidget> createState() => _ChatListDynamicImageWidgetState();
}

class _ChatListDynamicImageWidgetState extends State<ChatListDynamicImageWidget> {
  double _currentProgress = 0.0;
  String _currentStatus = '待加载';

  @override
  Widget build(BuildContext context) {
    return _buildImageContent(context, widget.message);
  }

  /// 判断是否应该自动加载
  bool _shouldAutoLoad() {
    return widget.message.imageContent.thumbUrl.isNotEmpty;
  }

  /// 构建图片内容
  Widget _buildImageContent(
    BuildContext context,
    ChatMessageDynamicImageModel message,
  ) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 200,
        height: 150,
        color: Colors.grey[100],
        child: Stack(
          children: [
            // 使用新的ProgressImageWidget
            _buildProgressImage(context, message),

            // 进度信息覆盖层（仅在加载时显示）
            if (_currentProgress > 0 && _currentProgress < 1.0)
              _buildProgressOverlay(),
          ],
        ),
      ),
    );
  }

  /// 构建进度图片组件
  Widget _buildProgressImage(
    BuildContext context,
    ChatMessageDynamicImageModel message,
  ) {
    return Positioned.fill(
      child: ProgressImageWidget(
        imageUrl: message.dynamicImageContent.thumbUrl,
        encryptionKey: null, // 暂时不使用加密，可以根据需要启用
        width: 200,
        height: 150,
        fit: BoxFit.cover,
        isEncrypted: false,
        onProgress: (progress) {
          // setState(() {
          //   _currentProgress = progress;
          //   if (progress < 0.7) {
          //     _currentStatus = '下载中';
          //   } else if (progress < 1.0) {
          //     _currentStatus = '处理中';
          //   } else {
          //     _currentStatus = '完成';
          //   }
          // });

          // 通知外部组件
          widget.onProgress?.call(message.id.toString(), progress);
        },
        onError: (error) {
          // setState(() {
          //   _currentStatus = '加载失败';
          //   _currentProgress = 0.0;
          // });

          // 通知外部组件
          widget.onLoadError?.call(message.id.toString());
        },
        onSuccess: () {
        
        },
        placeholder: _buildPlaceholder(),
        errorWidget: _buildErrorWidget(context, message),
      ),
    );
  }

  /// 构建占位符
  Widget _buildPlaceholder() {
    return Container(
      color: Colors.grey[100],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.image, color: Colors.grey[400], size: 40),
            const SizedBox(height: 8),
            Text(
              '点击加载图片',
              style: TextStyle(color: Colors.grey[600], fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  /// 构建进度覆盖层
  Widget _buildProgressOverlay() {
    return Positioned(
      bottom: 8,
      right: 8,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.7),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 12,
              height: 12,
              child: CircularProgressIndicator(
                value: _currentProgress,
                strokeWidth: 2,
                backgroundColor: Colors.white.withValues(alpha: 0.3),
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
            const SizedBox(width: 6),
            Text(
              '${(_currentProgress * 100).toInt()}%',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 构建错误状态组件
  Widget _buildErrorWidget(
    BuildContext context,
    ChatMessageDynamicImageModel message,
  ) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, color: Colors.grey[500], size: 40),
          const SizedBox(height: 8),
          Text(
            '图片加载失败',
            style: TextStyle(color: Colors.grey[600], fontSize: 12),
          ),
          const SizedBox(height: 4),
          _buildRetryButton(context, message),
        ],
      ),
    );
  }

  /// 构建重试按钮
  Widget _buildRetryButton(
    BuildContext context,
    ChatMessageDynamicImageModel message,
  ) {
    return GestureDetector(
      onTap: () => _handleRetryLoad(message),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Text(
          '重试',
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
      ),
    );
  }

  /// 处理重试加载
  void _handleRetryLoad(ChatMessageDynamicImageModel message) {
    // 通过外部回调函数更新状态，让父组件处理状态更新
    widget.onRetryLoad?.call(message.id.toString());

    // // 重置本地状态
    // setState(() {
    //   _currentProgress = 0.0;
    //   _currentStatus = '重新加载';
    // });
  }
}