import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_video.dart';

/// 聊天列表视频组件
/// 支持视频缩略图显示、播放控制、进度条和加载状态管理
class ChatListVideoWidget extends StatefulWidget {
  final ChatMessageVideoModel message;
  final Function(String messageId)? onRetryLoad;
  final Function(String messageId)? onLoadError;
  final Function(String messageId, double progress)? onProgress;
  final VoidCallback? onVideoTap; // 视频点击回调

  const ChatListVideoWidget({
    super.key,
    required this.message,
    this.onRetryLoad,
    this.onLoadError,
    this.onProgress,
    this.onVideoTap,
  });

  @override
  State<ChatListVideoWidget> createState() => _ChatListVideoWidgetState();
}

class _ChatListVideoWidgetState extends State<ChatListVideoWidget>
    with AutomaticKeepAliveClientMixin {
  bool _isLoading = false;
  bool _hasError = false;
  double _downloadProgress = 0.0;

  @override
  bool get wantKeepAlive => true; // 保持状态，防止滚动时重建

  @override
  Widget build(BuildContext context) {
    super.build(context); // 必须调用，用于AutomaticKeepAliveClientMixin

    return _buildVideoContent(context, widget.message);
  }

  /// 构建视频内容
  Widget _buildVideoContent(
    BuildContext context,
    ChatMessageVideoModel message,
  ) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 240,
        height: 180,
        color: Colors.grey[100],
        child: Stack(
          children: [
            // 背景缩略图
            _buildThumbnailImage(context, message),

            // 播放控制层
            _buildPlayControls(context, message),

            // 加载状态覆盖层
            if (_isLoading) _buildLoadingOverlay(),

            // 错误状态覆盖层
            if (_hasError) _buildErrorOverlay(),

            // 视频信息层（时长、大小等）
            _buildVideoInfo(message),
          ],
        ),
      ),
    );
  }

  /// 构建缩略图
  Widget _buildThumbnailImage(
    BuildContext context,
    ChatMessageVideoModel message,
  ) {
    return Positioned.fill(
      child: Container(
        color: Colors.black12,
        child:
            message.videoContent.thumbUrl.isNotEmpty
                ? CachedNetworkImage(
                  imageUrl: message.videoContent.thumbUrl,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => _buildThumbnailPlaceholder(),
                  errorWidget: (context, url, error) {
                    print('❌ 视频缩略图加载失败: $error');
                    return _buildThumbnailPlaceholder();
                  },
                  fadeInDuration: const Duration(milliseconds: 200),
                  fadeOutDuration: const Duration(milliseconds: 200),
                )
                : _buildThumbnailPlaceholder(),
      ),
    );
  }

  /// 构建缩略图占位符
  Widget _buildThumbnailPlaceholder() {
    return Container(
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.videocam, size: 48, color: Colors.grey[400]),
          const SizedBox(height: 8),
          Text('视频', style: TextStyle(color: Colors.grey[500], fontSize: 14)),
        ],
      ),
    );
  }

  /// 构建播放控制层
  Widget _buildPlayControls(
    BuildContext context,
    ChatMessageVideoModel message,
  ) {
    return Positioned.fill(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            _handleVideoTap(message);
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.3),
                ],
                stops: const [0.6, 1.0],
              ),
            ),
            child: Center(
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.play_arrow, color: Colors.white, size: 36),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// 构建加载状态覆盖层
  Widget _buildLoadingOverlay() {
    return Positioned.fill(
      child: Container(
        color: Colors.black45,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              strokeWidth: 3,
            ),
            const SizedBox(height: 12),
            Text(
              '加载中...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            // 下载进度条
            if (_downloadProgress > 0)
              Container(
                width: 120,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: _downloadProgress,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
            if (_downloadProgress > 0)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  '${(_downloadProgress * 100).toInt()}%',
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ),
          ],
        ),
      ),
    );
  }

  /// 构建错误状态覆盖层
  Widget _buildErrorOverlay() {
    return Positioned.fill(
      child: Container(
        color: Colors.black45,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, color: Colors.white, size: 48),
            const SizedBox(height: 12),
            Text(
              '加载失败',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              onPressed: () => _handleRetryLoad(),
              icon: const Icon(Icons.refresh, size: 16),
              label: const Text('重试'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black87,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 构建视频信息层
  Widget _buildVideoInfo(ChatMessageVideoModel message) {
    return Positioned(
      top: 8,
      left: 8,
      right: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 视频类型标识
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.videocam, color: Colors.white, size: 12),
                const SizedBox(width: 2),
                Text(
                  '视频',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          // 视频时长
          if (message.videoContent.duration > 0)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                _formatDuration(message.videoContent.duration),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
        ],
      ),
    );
  }

  /// 构建底部信息栏（文件大小、分辨率等）
  Widget _buildBottomInfo(ChatMessageVideoModel message) {
    return Positioned(
      bottom: 8,
      left: 8,
      right: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 文件大小
          if (message.videoContent.fileSize > 0)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                _formatFileSize(message.videoContent.fileSize),
                style: const TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          // 分辨率
          if (message.videoContent.width > 0 && message.videoContent.height > 0)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                '${message.videoContent.width}×${message.videoContent.height}',
                style: const TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
        ],
      ),
    );
  }

  /// 处理视频点击事件
  void _handleVideoTap(ChatMessageVideoModel message) {
    print('🎬 点击视频: ${message.id}');

    // 如果有外部回调，优先使用外部回调
    if (widget.onVideoTap != null) {
      widget.onVideoTap!();
      return;
    }

    // 默认行为：显示视频播放对话框
    _showVideoPlayDialog(message);
  }

  /// 显示视频播放对话框
  void _showVideoPlayDialog(ChatMessageVideoModel message) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('播放视频'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.play_circle_fill, size: 64, color: Colors.blue),
                const SizedBox(height: 16),
                Text('视频时长: ${_formatDuration(message.videoContent.duration)}'),
                if (message.videoContent.fileSize > 0)
                  Text(
                    '文件大小: ${_formatFileSize(message.videoContent.fileSize)}',
                  ),
                if (message.videoContent.width > 0 &&
                    message.videoContent.height > 0)
                  Text(
                    '分辨率: ${message.videoContent.width}×${message.videoContent.height}',
                  ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('取消'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  _startVideoPlayback(message);
                },
                child: const Text('播放'),
              ),
            ],
          ),
    );
  }

  /// 开始视频播放
  void _startVideoPlayback(ChatMessageVideoModel message) {
    print('🎬 开始播放视频: ${message.videoContent.url}');

    // 模拟加载过程
    setState(() {
      _isLoading = true;
      _hasError = false;
      _downloadProgress = 0.0;
    });

    // 模拟下载进度
    _simulateDownloadProgress();
  }

  /// 模拟下载进度
  void _simulateDownloadProgress() {
    const totalSteps = 20;
    int currentStep = 0;

    void updateProgress() {
      if (!mounted) return;

      currentStep++;
      final progress = currentStep / totalSteps;

      setState(() {
        _downloadProgress = progress;
      });

      widget.onProgress?.call(widget.message.id.toString(), progress);

      if (currentStep < totalSteps) {
        Future.delayed(const Duration(milliseconds: 100), updateProgress);
      } else {
        // 下载完成
        setState(() {
          _isLoading = false;
          _downloadProgress = 1.0;
        });

        // 这里可以启动实际的视频播放器
        _launchVideoPlayer();
      }
    }

    updateProgress();
  }

  /// 启动视频播放器
  void _launchVideoPlayer() {
    print('🎬 启动视频播放器');

    // 这里可以集成实际的视频播放器
    // 比如 video_player、chewie 等
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('🎬 视频播放器功能开发中...'),
        backgroundColor: Colors.blue,
      ),
    );
  }

  /// 处理重试加载
  void _handleRetryLoad() {
    print('🔄 重试加载视频: ${widget.message.id}');

    setState(() {
      _hasError = false;
      _isLoading = false;
      _downloadProgress = 0.0;
    });

    widget.onRetryLoad?.call(widget.message.id.toString());
  }

  /// 格式化时长
  String _formatDuration(int seconds) {
    if (seconds <= 0) return '00:00';

    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;

    if (minutes >= 60) {
      final hours = minutes ~/ 60;
      final remainingMinutes = minutes % 60;
      return '${hours.toString().padLeft(2, '0')}:${remainingMinutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
    } else {
      return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
    }
  }

  /// 格式化文件大小
  String _formatFileSize(int bytes) {
    if (bytes <= 0) return '0 B';

    const List<String> units = ['B', 'KB', 'MB', 'GB'];
    int unitIndex = 0;
    double size = bytes.toDouble();

    while (size >= 1024 && unitIndex < units.length - 1) {
      size /= 1024;
      unitIndex++;
    }

    return '${size.toStringAsFixed(size < 10 ? 1 : 0)} ${units[unitIndex]}';
  }
}
