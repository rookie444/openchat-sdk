// encrypted_image_widget.dart
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openchat_client/src/features/common/utils/encrypted_cache_manager.dart';
import 'dart:io';

class EncryptedImageWidget extends ConsumerWidget {
  final String imageUrl;
  final String encryptionKey;
  final BoxFit fit;
  final double? width;
  final double? height;

  const EncryptedImageWidget({
    super.key,
    required this.imageUrl,
    required this.encryptionKey,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageState = ref.watch(encryptedImageProvider(imageUrl));

    if (imageState.error != null) {
      // 错误UI
      return _buildErrorWidget(imageState.error!, context, ref);
    }
    if (imageState.isLoading || imageState.isDecrypting) {
      // 进度/解密UI
      return _buildProgressWidget(imageState.progress, imageState.isDecrypting);
    }
    // 图片UI（假设已解密并缓存到本地文件）
    if (imageState.file != null) {
      return Image.file(
        imageState.file!,
        width: width,
        height: height,
        fit: fit,
      );
    }
    // 默认占位
    return Container(width: width, height: height, color: Colors.grey[100]);
  }

  Widget _buildProgressWidget(double progress, bool isDecrypting) {
    return Container(
      width: width,
      height: height,
      color: Colors.grey[100],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(
                      isDecrypting ? Colors.orange : Colors.blue,
                    ),
                  ),
                ),
                Text(
                  '${(progress * 100).toInt()}%',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              isDecrypting ? '解密中...' : '下载中...',
              style: TextStyle(color: Colors.grey[600], fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorWidget(String error, BuildContext context, WidgetRef ref) {
    return Container(
      width: width,
      height: height,
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, color: Colors.red[300], size: 40),
          const SizedBox(height: 8),
          const Text(
            '加载失败',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              error,
              style: const TextStyle(color: Colors.grey, fontSize: 10),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              // 触发重试
              ref
                  .read(encryptedImageProvider(imageUrl).notifier)
                  .startDownload();
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: const Text('重试', style: TextStyle(fontSize: 12)),
          ),
        ],
      ),
    );
  }
}

class EncryptedImageState {
  final double progress;
  final bool isLoading;
  final bool isDecrypting;
  final String? error;
  final File? file;

  EncryptedImageState({
    this.progress = 0.0,
    this.isLoading = false,
    this.isDecrypting = false,
    this.error,
    this.file,
  });

  EncryptedImageState copyWith({
    double? progress,
    bool? isLoading,
    bool? isDecrypting,
    String? error,
    File? file,
  }) {
    return EncryptedImageState(
      progress: progress ?? this.progress,
      isLoading: isLoading ?? this.isLoading,
      isDecrypting: isDecrypting ?? this.isDecrypting,
      error: error ?? this.error,
      file: file ?? this.file,
    );
  }
}

class EncryptedImageNotifier extends StateNotifier<EncryptedImageState> {
  EncryptedImageNotifier() : super(EncryptedImageState());

  void startDownload() {
    state = state.copyWith(isLoading: true, progress: 0.0, error: null);
  }

  void updateProgress(double progress) {
    state = state.copyWith(progress: progress);
  }

  void startDecryption() {
    state = state.copyWith(isDecrypting: true);
  }

  void completeDecryption() {
    state = state.copyWith(
      isLoading: false,
      isDecrypting: false,
      progress: 1.0,
    );
  }

  void setError(String error) {
    state = state.copyWith(isLoading: false, isDecrypting: false, error: error);
  }
}

final encryptedImageProvider = StateNotifierProvider.family<
  EncryptedImageNotifier,
  EncryptedImageState,
  String
>((ref, imageUrl) => EncryptedImageNotifier());
