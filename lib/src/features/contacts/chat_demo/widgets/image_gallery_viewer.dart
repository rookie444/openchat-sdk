import 'package:flutter/material.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_image.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/chat_message.dart';

/// 图片浏览器组件
/// 支持多张图片查看，可以左右滑动切换，支持缩放、旋转等手势操作
class ImageGalleryViewer extends StatefulWidget {
  /// 图片列表（聊天消息列表）
  final List<ChatMessageImageModel> imageMessages;
  
  /// 初始显示的图片索引
  final int initialIndex;
  
  /// 当前聊天会话的所有消息（用于提取其他信息）
  final List<ChatMessage>? allMessages;

  const ImageGalleryViewer({
    super.key,
    required this.imageMessages,
    required this.initialIndex,
    this.allMessages,
  });

  @override
  State<ImageGalleryViewer> createState() => _ImageGalleryViewerState();
}

class _ImageGalleryViewerState extends State<ImageGalleryViewer> {
  late PageController _pageController;
  late int _currentIndex;
  bool _isVisible = true;
  
  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: widget.initialIndex);
  }
  
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  
  /// 切换界面元素的显示/隐藏
  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
  
  /// 获取当前图片信息
  ChatMessageImageModel get _currentMessage => widget.imageMessages[_currentIndex];
  
  /// 获取图片信息
  String _getImageInfo() {
    final message = _currentMessage;
    final timestamp = message.timestamp;
    final timeString = '${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}';
    final senderName = message.isMe ? '我' : '对方';
    final typeText = message.type == MessageType.gif 
        ? '动图' 
        : message.type == MessageType.video 
            ? '视频' 
            : '图片';
    
    return '$senderName · $timeString · $typeText';
  }
  
  /// 获取图片尺寸信息（如果有的话）
  String _getImageSize() {
    // 这里可以根据实际需求添加图片尺寸信息
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // 图片查看器主体（包含手势检测）
          GestureDetector(
            onTap: _toggleVisibility,
            behavior: HitTestBehavior.translucent,
            child: PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: (BuildContext context, int index) {
                final message = widget.imageMessages[index];
                
                return PhotoViewGalleryPageOptions.customChild(
                  child: _buildImageWidget(message),
                  initialScale: PhotoViewComputedScale.contained,
                  minScale: PhotoViewComputedScale.contained * 0.5,
                  maxScale: PhotoViewComputedScale.covered * 3.0,
                  heroAttributes: PhotoViewHeroAttributes(
                    tag: 'image_${message.id}',
                  ),
                );
              },
              itemCount: widget.imageMessages.length,
              loadingBuilder: (context, event) => Center(
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  padding: const EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    value: event == null
                        ? 0
                        : event.cumulativeBytesLoaded / (event.expectedTotalBytes ?? 1),
                  ),
                ),
              ),
              backgroundDecoration: const BoxDecoration(
                color: Colors.black,
              ),
              pageController: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          
          // 顶部工具栏
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            top: _isVisible ? 0 : -100,
            left: 0,
            right: 0,
            child: Material(
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.transparent,
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    // 返回按钮
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        print('🔙 图片浏览器返回按钮被点击');
                        Navigator.of(context).pop();
                      },
                      splashRadius: 24,
                      tooltip: '返回',
                    ),
                    
                    // 图片计数和信息
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '${_currentIndex + 1} / ${widget.imageMessages.length}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            _getImageInfo(),
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // 更多操作按钮
                    IconButton(
                      icon: const Icon(Icons.more_vert, color: Colors.white),
                      onPressed: () => _showMoreOptions(context),
                      splashRadius: 24,
                      tooltip: '更多选项',
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          // 底部信息栏
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            bottom: _isVisible ? 0 : -100,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
                bottom: MediaQuery.of(context).padding.bottom + 16,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                  ],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // 图片索引指示器
                  if (widget.imageMessages.length > 1)
                    Container(
                      height: 40,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.imageMessages.length,
                        itemBuilder: (context, index) {
                          final isSelected = index == _currentIndex;
                          return GestureDetector(
                            onTap: () {
                              _pageController.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: isSelected ? Colors.white : Colors.white24,
                                  width: isSelected ? 2 : 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: _buildThumbnail(widget.imageMessages[index]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  
                  const SizedBox(height: 16),
                  
                  // 操作按钮
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildActionButton(
                        icon: Icons.save_alt,
                        label: '保存',
                        onTap: () => _saveImage(),
                      ),
                      _buildActionButton(
                        icon: Icons.share,
                        label: '分享',
                        onTap: () => _shareImage(),
                      ),
                      _buildActionButton(
                        icon: Icons.info_outline,
                        label: '详情',
                        onTap: () => _showImageDetails(context),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  /// 构建图片组件
  Widget _buildImageWidget(ChatMessageImageModel message) {
    if (message.imageContent.url.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, color: Colors.white54, size: 48),
            SizedBox(height: 16),
            Text(
              '图片加载失败',
              style: TextStyle(color: Colors.white54, fontSize: 16),
            ),
          ],
        ),
      );
    }
    
    return CachedNetworkImage(
      imageUrl: message.imageContent.url,
      fit: BoxFit.contain,
      // 对于GIF，确保动画能正常播放
      fadeOutDuration: message.type == MessageType.gif 
          ? Duration.zero 
          : const Duration(milliseconds: 300),
      fadeInDuration: message.type == MessageType.gif 
          ? Duration.zero 
          : const Duration(milliseconds: 300),
      placeholder: (context, url) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(color: Colors.white),
            const SizedBox(height: 16),
            Text(
              message.type == MessageType.gif ? '加载动图中...' : '加载图片中...',
              style: const TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ],
        ),
      ),
      errorWidget: (context, url, error) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, color: Colors.white54, size: 48),
            const SizedBox(height: 16),
            Text(
              message.type == MessageType.gif ? '动图加载失败' : '图片加载失败',
              style: const TextStyle(color: Colors.white54, fontSize: 16),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {
                // 触发重新加载
                setState(() {});
              },
              child: const Text(
                '重试',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  /// 构建缩略图
  Widget _buildThumbnail(ChatMessageImageModel message) {
    if (message.imageContent.url.isEmpty) { 
      return Container(
        color: Colors.grey[800],
        child: const Icon(Icons.error, color: Colors.white54, size: 20),
      );
    }
    
    return CachedNetworkImage(
      imageUrl: message.imageContent.url,
      fit: BoxFit.cover,
      placeholder: (context, url) => Container(
        color: Colors.grey[800],
        child: const SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            color: Colors.white,
            strokeWidth: 2,
          ),
        ),
      ),
      errorWidget: (context, url, error) => Container(
        color: Colors.grey[800],
        child: const Icon(Icons.error, color: Colors.white54, size: 20),
      ),
    );
  }
  
  /// 构建操作按钮
  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(icon, color: Colors.white, size: 24),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
  
  /// 显示更多选项
  void _showMoreOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.grey[900],
      builder: (context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildBottomSheetItem(
              icon: Icons.save_alt,
              title: '保存到相册',
              onTap: () {
                Navigator.pop(context);
                _saveImage();
              },
            ),
            _buildBottomSheetItem(
              icon: Icons.share,
              title: '分享图片',
              onTap: () {
                Navigator.pop(context);
                _shareImage();
              },
            ),
            _buildBottomSheetItem(
              icon: Icons.info_outline,
              title: '图片详情',
              onTap: () {
                Navigator.pop(context);
                _showImageDetails(context);
              },
            ),
            _buildBottomSheetItem(
              icon: Icons.delete_outline,
              title: '删除图片',
              onTap: () {
                Navigator.pop(context);
                _deleteImage();
              },
            ),
          ],
        ),
      ),
    );
  }
  
  /// 构建底部弹窗选项
  Widget _buildBottomSheetItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: onTap,
    );
  }
  
  /// 保存图片
  void _saveImage() {
    final message = _currentMessage;
    final typeText = message.type == MessageType.gif 
        ? '动图' 
        : message.type == MessageType.video 
            ? '视频' 
            : '图片';
    
    // TODO: 实现保存图片到相册功能
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('📱 保存${typeText}功能开发中...'),
        backgroundColor: Colors.blue,
      ),
    );
    print('🖼️ 保存${typeText}: ${message.imageContent.url}'); 
  }
  
  /// 分享图片
  void _shareImage() {
    final message = _currentMessage;
    final typeText = message.type == MessageType.gif 
        ? '动图' 
        : message.type == MessageType.video 
            ? '视频' 
            : '图片';
    
    // TODO: 实现分享图片功能
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('📤 分享${typeText}功能开发中...'),
        backgroundColor: Colors.green,
      ),
    );
    print('🔗 分享${typeText}: ${message.imageContent.url}');
  }
  
  /// 显示图片详情
  void _showImageDetails(BuildContext context) {
    final message = _currentMessage;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('图片详情'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailRow('消息ID', message.id.toString()),
            _buildDetailRow('发送者', message.isMe ? '我' : '对方'),
            _buildDetailRow('发送时间', _formatDateTime(message.timestamp)),
            if (message.imageContent.url.isNotEmpty)
              _buildDetailRow('图片链接', message.imageContent.url, isUrl: true), 
            _buildDetailRow('消息状态', '正常'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }
  
  /// 构建详情行
  Widget _buildDetailRow(String label, String value, {bool isUrl = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                color: isUrl ? Colors.blue : null,
                decoration: isUrl ? TextDecoration.underline : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  /// 删除图片
  void _deleteImage() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('删除图片'),
        content: const Text('确定要删除这张图片吗？此操作不可撤销。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              // TODO: 实现删除图片功能
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('🗑️ 删除功能开发中...'),
                  backgroundColor: Colors.red,
                ),
              );
            },
            child: const Text('删除', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
  
  /// 格式化日期时间
  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} '
           '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
} 