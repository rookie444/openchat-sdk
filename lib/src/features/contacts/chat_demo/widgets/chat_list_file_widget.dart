import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message_file.dart';
import 'package:flutter/material.dart';

/// 文件消息组件
class ChatListFileWidget extends StatelessWidget {
  final ChatMessageFileModel message;
  final VoidCallback? onTap;

  const ChatListFileWidget({super.key, required this.message, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 280,
        height: 70,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          children: [
            // 左边：文件信息（文件名 + 文件大小）
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 文件名 - 较大字体
                  Text(
                     '未知文件',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  // 文件大小 - 较小字体
                  Text(
                    _formatFileSize(10224),
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),

            // 中间弹性空白
            const SizedBox(width: 12),

            // 右边：文件图标
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: _getFileIconColor(),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(_getFileIcon(), color: Colors.white, size: 24),
            ),
          ],
        ),
      ),
    );
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

    return '${size.toStringAsFixed(size < 10 ? 2 : 1)} ${units[unitIndex]}';
  }

  /// 根据文件类型获取图标
  IconData _getFileIcon() {
    final fileName = '123.png';
    final mimeType = 'image/png';

    // 根据文件扩展名或MIME类型判断
    if (fileName.endsWith('.pdf') || mimeType.contains('pdf')) {
      return Icons.picture_as_pdf;
    } else if (fileName.endsWith('.doc') ||
        fileName.endsWith('.docx') ||
        mimeType.contains('word')) {
      return Icons.description;
    } else if (fileName.endsWith('.xls') ||
        fileName.endsWith('.xlsx') ||
        mimeType.contains('excel') ||
        mimeType.contains('spreadsheet')) {
      return Icons.table_chart;
    } else if (fileName.endsWith('.ppt') ||
        fileName.endsWith('.pptx') ||
        mimeType.contains('presentation')) {
      return Icons.slideshow;
    } else if (fileName.endsWith('.zip') ||
        fileName.endsWith('.rar') ||
        fileName.endsWith('.7z') ||
        mimeType.contains('zip') ||
        mimeType.contains('compressed')) {
      return Icons.archive;
    } else if (fileName.endsWith('.jpg') ||
        fileName.endsWith('.jpeg') ||
        fileName.endsWith('.png') ||
        fileName.endsWith('.gif') ||
        mimeType.contains('image')) {
      return Icons.image;
    } else if (fileName.endsWith('.mp4') ||
        fileName.endsWith('.avi') ||
        fileName.endsWith('.mov') ||
        mimeType.contains('video')) {
      return Icons.video_file;
    } else if (fileName.endsWith('.mp3') ||
        fileName.endsWith('.wav') ||
        fileName.endsWith('.flac') ||
        mimeType.contains('audio')) {
      return Icons.audio_file;
    } else if (fileName.endsWith('.txt') || mimeType.contains('text')) {
      return Icons.text_snippet;
    } else {
      return Icons.insert_drive_file;
    }
  }

  /// 根据文件类型获取图标颜色
  Color _getFileIconColor() {
    final fileName = '123.png';
    final mimeType = 'image/png';

    if (fileName.endsWith('.pdf') || mimeType.contains('pdf')) {
      return Colors.red[400]!;
    } else if (fileName.endsWith('.doc') ||
        fileName.endsWith('.docx') ||
        mimeType.contains('word')) {
      return Colors.blue[400]!;
    } else if (fileName.endsWith('.xls') ||
        fileName.endsWith('.xlsx') ||
        mimeType.contains('excel') ||
        mimeType.contains('spreadsheet')) {
      return Colors.green[400]!;
    } else if (fileName.endsWith('.ppt') ||
        fileName.endsWith('.pptx') ||
        mimeType.contains('presentation')) {
      return Colors.orange[400]!;
    } else if (fileName.endsWith('.zip') ||
        fileName.endsWith('.rar') ||
        fileName.endsWith('.7z') ||
        mimeType.contains('zip') ||
        mimeType.contains('compressed')) {
      return Colors.purple[400]!;
    } else if (fileName.endsWith('.jpg') ||
        fileName.endsWith('.jpeg') ||
        fileName.endsWith('.png') ||
        fileName.endsWith('.gif') ||
        mimeType.contains('image')) {
      return Colors.pink[400]!;
    } else if (fileName.endsWith('.mp4') ||
        fileName.endsWith('.avi') ||
        fileName.endsWith('.mov') ||
        mimeType.contains('video')) {
      return Colors.indigo[400]!;
    } else if (fileName.endsWith('.mp3') ||
        fileName.endsWith('.wav') ||
        fileName.endsWith('.flac') ||
        mimeType.contains('audio')) {
      return Colors.teal[400]!;
    } else if (fileName.endsWith('.txt') || mimeType.contains('text')) {
      return Colors.grey[400]!;
    } else {
      return Colors.blueGrey[400]!;
    }
  }
}
