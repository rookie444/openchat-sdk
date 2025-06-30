import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import '../utils/encrypted_cache_manager.dart';

/// 图片加载状态枚举
enum ImageLoadState {
  idle, // 空闲状态
  downloading, // 下载中
  decrypting, // 解密中
  success, // 加载成功
  error, // 加载失败
}

/// 图片加载状态数据类
class ProgressImageState {
  final ImageLoadState state;
  final double downloadProgress;
  final double decryptProgress;
  final String? error;

  const ProgressImageState({
    this.state = ImageLoadState.idle,
    this.downloadProgress = 0.0,
    this.decryptProgress = 0.0,
    this.error,
  });

  ProgressImageState copyWith({
    ImageLoadState? state,
    double? downloadProgress,
    double? decryptProgress,
    String? error,
  }) {
    return ProgressImageState(
      state: state ?? this.state,
      downloadProgress: downloadProgress ?? this.downloadProgress,
      decryptProgress: decryptProgress ?? this.decryptProgress,
      error: error ?? this.error,
    );
  }

  /// 总体进度（下载 + 解密）
  double get totalProgress {
    switch (state) {
      case ImageLoadState.downloading:
        return downloadProgress * 0.7; // 下载占70%
      case ImageLoadState.decrypting:
        return 0.7 + (decryptProgress * 0.3); // 解密占30%
      case ImageLoadState.success:
        return 1.0;
      default:
        return 0.0;
    }
  }

  bool get isLoading =>
      state == ImageLoadState.downloading || state == ImageLoadState.decrypting;
  bool get isSuccess => state == ImageLoadState.success;
  bool get isError => state == ImageLoadState.error;
  bool get isIdle => state == ImageLoadState.idle;
}

/// 图片进度监听器
class ProgressImageNotifier extends StateNotifier<ProgressImageState> {
  final String imageUrl;
  final String? encryptionKey;
  final bool isEncrypted;

  ProgressImageNotifier({
    required this.imageUrl,
    this.encryptionKey,
    this.isEncrypted = false,
  }) : super(const ProgressImageState());

  /// 开始监听下载和解密进度
  Future<void> startProgressTracking() async {
    // 延迟执行，避免在widget构建期间修改provider
    await Future(() async {
      try {
        print('🚀 开始进度跟踪: $imageUrl (加密: $isEncrypted)');
        print('   - 初始状态: ${state.state}');
        print('   - StateNotifier mounted: $mounted');

        // 检查StateNotifier是否还有效
        if (!mounted) {
          print('⚠️ StateNotifier已销毁，无法开始进度跟踪');
          return;
        }

        // 安全地更新状态 - 立即设置一个小的初始进度用于测试
        try {
          state = state.copyWith(
            state: ImageLoadState.downloading,
            downloadProgress: 0.1, // 设置10%的初始进度用于测试
            decryptProgress: 0.0,
            error: null,
          );
          print('   - 设置状态为downloading: ${state.state}');
          print('   - 初始downloadProgress: ${state.downloadProgress}');
          print('   - 初始totalProgress: ${state.totalProgress}');

          // 等待一下让UI更新
          await Future.delayed(const Duration(milliseconds: 100));
        } catch (e) {
          print('❌ 状态更新失败: $e');
          return;
        }

        try {
          if (isEncrypted && encryptionKey != null) {
            await _trackEncryptedImageProgress();
          } else {
            await _trackNormalImageProgress();
          }
        } catch (e) {
          print('❌ 进度跟踪失败: $e');
          if (mounted) {
            _setError('进度跟踪失败: $e');
          }
        }
      } catch (e, stackTrace) {
        print('❌ startProgressTracking 异常: $e');
        print('   - 堆栈跟踪: $stackTrace');
        if (mounted) {
          try {
            _setError('进度跟踪启动失败: $e');
          } catch (setErrorException) {
            print('❌ 设置错误状态也失败了: $setErrorException');
          }
        }
      }
    });
  }

  /// 跟踪加密图片的进度
  Future<void> _trackEncryptedImageProgress() async {
    final cacheManager = EncryptedCacheManager(encryptionKey: encryptionKey!);

    try {
      // 监听文件流，包含进度信息
      await for (final response in cacheManager.getFileStream(
        imageUrl,
        withProgress: true,
      )) {
        // 检查StateNotifier是否还有效
        if (!mounted) {
          print('⚠️ StateNotifier已销毁，停止加密图片进度跟踪');
          break;
        }

        if (response is DownloadProgress) {
          // 更新下载进度
          final totalSize = response.totalSize ?? 0;
          final progress =
              totalSize > 0 ? response.downloaded / totalSize : 0.0;

          if (mounted) {
            try {
              state = state.copyWith(
                state: ImageLoadState.downloading,
                downloadProgress: progress,
              );
              print('📥 下载进度: ${(progress * 100).toInt()}%');
            } catch (e) {
              print('❌ 更新下载进度失败: $e');
            }
          }
        } else if (response is FileInfo) {
          // 下载完成，开始解密
          if (mounted) {
            try {
              state = state.copyWith(
                state: ImageLoadState.decrypting,
                downloadProgress: 1.0,
                decryptProgress: 0.0,
              );
              print('🔓 开始解密...');

              // 模拟解密进度（实际解密在 EncryptedFileService 中完成）
              await _simulateDecryptProgress();

              // 解密完成
              if (mounted) {
                state = state.copyWith(
                  state: ImageLoadState.success,
                  decryptProgress: 1.0,
                );
                print('✅ 加密图片处理完成');
              }
            } catch (e) {
              print('❌ 更新解密状态失败: $e');
              if (mounted) {
                _setError('解密状态更新失败: $e');
              }
            }
          }
          break;
        }
      }
    } catch (e) {
      print('❌ 加密图片处理失败: $e');
      if (mounted) {
        _setError('加密图片处理失败: $e');
      }
    }
  }

  /// 跟踪普通图片的进度
  Future<void> _trackNormalImageProgress() async {
    final cacheManager = DefaultCacheManager();

    try {
      print('🚀 开始跟踪普通图片进度: $imageUrl');

      // 检查是否已缓存
      final cachedFile = await cacheManager.getFileFromCache(imageUrl);
      if (cachedFile != null) {
        print('📂 图片已缓存，直接使用缓存文件');
        // 不删除缓存，直接标记为成功
        if (mounted) {
          state = state.copyWith(
            state: ImageLoadState.success,
            downloadProgress: 1.0,
          );
          print('✅ 使用缓存文件: ${cachedFile.file.path}');
        }
        return;
      }

      bool hasReceivedProgress = false;

      await for (final response in cacheManager.getFileStream(
        imageUrl,
        withProgress: true,
      )) {
        // 检查StateNotifier是否还有效
        if (!mounted) {
          print('⚠️ StateNotifier已销毁，停止进度跟踪');
          break;
        }

        print('📦 收到响应: ${response.runtimeType}');

        if (response is DownloadProgress) {
          hasReceivedProgress = true;
          final totalSize = response.totalSize ?? 0;
          final downloaded = response.downloaded;
          final progress = totalSize > 0 ? downloaded / totalSize : 0.0;

          if (mounted) {
            try {
              state = state.copyWith(
                state: ImageLoadState.downloading,
                downloadProgress: progress,
              );

              print(
                '📥 普通图片下载进度: ${(progress * 100).toStringAsFixed(1)}% (${downloaded}/${totalSize} bytes)',
              );
              print('   - 当前状态: ${state.state}');
              print('   - totalProgress: ${state.totalProgress}');
            } catch (e) {
              print('❌ 更新普通图片下载进度失败: $e');
            }
          }
        } else if (response is FileInfo) {
          if (!hasReceivedProgress && mounted) {
            print('⚠️ 没有收到进度信息，可能图片太小或网络太快');
            // 模拟一些进度更新
            for (int i = 1; i <= 10; i++) {
              if (!mounted) break;

              try {
                state = state.copyWith(
                  state: ImageLoadState.downloading,
                  downloadProgress: i / 10.0,
                );
                print('🔄 模拟进度: ${(i * 10)}%');
              } catch (e) {
                print('❌ 模拟进度更新失败: $e');
                break;
              }
              await Future.delayed(const Duration(milliseconds: 50));
            }
          }

          if (mounted) {
            try {
              state = state.copyWith(
                state: ImageLoadState.success,
                downloadProgress: 1.0,
              );

              print('✅ 普通图片下载完成: ${response.file.path}');
              print('   - 最终totalProgress: ${state.totalProgress}');
            } catch (e) {
              print('❌ 设置成功状态失败: $e');
              if (mounted) {
                _setError('设置成功状态失败: $e');
              }
            }
          }
          break;
        }
      }
    } catch (e) {
      print('❌ 普通图片下载失败: $e');
      if (mounted) {
        _setError('普通图片下载失败: $e');
      }
    }
  }

  /// 模拟解密进度
  Future<void> _simulateDecryptProgress() async {
    for (int i = 0; i <= 10; i++) {
      if (!mounted) {
        print('⚠️ StateNotifier已销毁，停止解密进度模拟');
        break;
      }

      await Future.delayed(const Duration(milliseconds: 50));
      final progress = i / 10.0;

      if (mounted && state.state == ImageLoadState.decrypting) {
        try {
          state = state.copyWith(decryptProgress: progress);
          print('🔓 解密进度: ${(progress * 100).toInt()}%');
        } catch (e) {
          print('❌ 更新解密进度失败: $e');
          break;
        }
      }
    }
  }

  /// 设置错误
  void _setError(String error) {
    try {
      if (!mounted) {
        print('⚠️ StateNotifier已销毁，无法设置错误状态: $error');
        return;
      }

      state = state.copyWith(state: ImageLoadState.error, error: error);
      print('❌ 设置错误状态: $error');
    } catch (e) {
      print('❌ 设置错误状态失败: $e, 原始错误: $error');
    }
  }

  /// 重置状态
  void reset() {
    state = const ProgressImageState();
  }
}

/// Provider参数类
class ProgressImageParams {
  final String imageUrl;
  final String? encryptionKey;
  final bool isEncrypted;

  const ProgressImageParams({
    required this.imageUrl,
    this.encryptionKey,
    this.isEncrypted = false,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProgressImageParams &&
        other.imageUrl == imageUrl &&
        other.encryptionKey == encryptionKey &&
        other.isEncrypted == isEncrypted;
  }

  @override
  int get hashCode {
    return Object.hash(imageUrl, encryptionKey, isEncrypted);
  }

  @override
  String toString() {
    return 'ProgressImageParams(url: $imageUrl, encrypted: $isEncrypted, key: ${encryptionKey?.substring(0, 8) ?? 'null'})';
  }
}

/// Provider定义
final progressImageProvider = StateNotifierProvider.family<
  ProgressImageNotifier,
  ProgressImageState,
  ProgressImageParams
>((ref, params) {
  print('🏭 创建新的ProgressImageNotifier: $params');
  return ProgressImageNotifier(
    imageUrl: params.imageUrl,
    encryptionKey: params.encryptionKey,
    isEncrypted: params.isEncrypted,
  );
});

/// 支持加密的进度监听图片组件
class ProgressImageWidget extends ConsumerStatefulWidget {
  final String imageUrl;
  final String? encryptionKey;
  final bool isEncrypted;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Widget? placeholder;
  final Widget? errorWidget;
  final Function(double progress)? onProgress;
  final Function(String error)? onError;
  final Function()? onSuccess;
  final bool showProgress;
  final bool enableProgressTracking;

  const ProgressImageWidget({
    super.key,
    required this.imageUrl,
    this.encryptionKey,
    this.isEncrypted = false,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.placeholder,
    this.errorWidget,
    this.onProgress,
    this.onError,
    this.onSuccess,
    this.showProgress = true,
    this.enableProgressTracking = true,
  });

  @override
  ConsumerState<ProgressImageWidget> createState() =>
      _ProgressImageWidgetState();
}

class _ProgressImageWidgetState extends ConsumerState<ProgressImageWidget> {
  bool _hasStartedTracking = false;
  late String _providerKey;

  @override
  void initState() {
    super.initState();
    _providerKey =
        '${widget.imageUrl}_${widget.encryptionKey ?? ''}_${widget.isEncrypted}';
  }

  ProgressImageParams get _providerParams => ProgressImageParams(
    imageUrl: widget.imageUrl,
    encryptionKey: widget.encryptionKey,
    isEncrypted: widget.isEncrypted,
  );

  @override
  Widget build(BuildContext context) {
    final progressState = ref.watch(progressImageProvider(_providerParams));

    // 添加调试信息
    final urlSuffix =
        widget.imageUrl.length > 20
            ? widget.imageUrl.substring(widget.imageUrl.length - 20)
            : widget.imageUrl;
    print('🔍 构建组件: $urlSuffix');
    print('   - _providerParams: $_providerParams');
    print('   - progressState: $progressState');
    print('   - 状态: ${progressState.state}');
    print('   - downloadProgress: ${progressState.downloadProgress}');
    print('   - decryptProgress: ${progressState.decryptProgress}');
    print(
      '   - 总进度: ${(progressState.totalProgress * 100).toStringAsFixed(1)}%',
    );
    print('   - isLoading: ${progressState.isLoading}');
    print('   - showProgress: ${widget.showProgress}');

    // 检查notifier
    try {
      final notifier = ref.read(
        progressImageProvider(_providerParams).notifier,
      );
      print('   - notifier: $notifier');
      print('   - notifier.state: ${notifier.state}');
      print('   - notifier.mounted: ${notifier.mounted}');
    } catch (e) {
      print('❌ 获取notifier失败: $e');
    }

    // 监听进度状态变化
    ref.listen<ProgressImageState>(progressImageProvider(_providerParams), (
      previous,
      current,
    ) {
      try {
        if (previous?.totalProgress != current.totalProgress) {
          widget.onProgress?.call(current.totalProgress);
        }

        if (previous?.state != current.state) {
          if (current.state == ImageLoadState.success) {
            widget.onSuccess?.call();
          } else if (current.state == ImageLoadState.error) {
            widget.onError?.call(current.error ?? '未知错误');
          }
        }
      } catch (e, stackTrace) {
        print('❌ StateNotifier监听器异常: $e');
        print('   - 堆栈跟踪: $stackTrace');
        print('   - 当前状态: ${current.state}');
        print('   - 当前进度: ${current.totalProgress}');
      }
    });

    return Container(
      width: widget.width,
      height: widget.height,
      child: Stack(
        children: [
          // 主要的图片组件
          _buildImageWidget(progressState),

          // 进度指示器覆盖层
          if (widget.showProgress && progressState.isLoading)
            _buildProgressOverlay(progressState),
        ],
      ),
    );
  }

  /// 构建图片组件
  Widget _buildImageWidget(ProgressImageState progressState) {
    // 选择合适的缓存管理器
    final cacheManager =
        widget.isEncrypted && widget.encryptionKey != null
            ? EncryptedCacheManager(encryptionKey: widget.encryptionKey!)
            : DefaultCacheManager();

    return CachedNetworkImage(
      imageUrl: widget.imageUrl,
      width: widget.width,
      height: widget.height,
      fit: widget.fit,
      cacheManager: cacheManager,
      placeholder: (context, url) {
        // 启动进度跟踪（只启动一次）
        if (widget.enableProgressTracking && !_hasStartedTracking) {
          _hasStartedTracking = true;
          print('🎯 启动进度跟踪: ${widget.imageUrl}');
          // 延迟启动，避免在widget构建期间修改provider
          Future(() {
            ref
                .read(progressImageProvider(_providerParams).notifier)
                .startProgressTracking();
          });
        }

        return _buildPlaceholder(progressState);
      },
      errorWidget: (context, url, error) {
        print('❌ CachedNetworkImage 加载失败: $error');
        widget.onError?.call(error.toString());
        return _buildErrorWidget(error.toString());
      },
      imageBuilder: (context, imageProvider) {
        // 图片加载成功
        widget.onSuccess?.call();
        return Image(
          image: imageProvider,
          width: widget.width,
          height: widget.height,
          fit: widget.fit,
        );
      },
    );
  }

  /// 构建占位符
  Widget _buildPlaceholder(ProgressImageState progressState) {
    // 添加调试信息
    print('🎨 构建占位符:');
    print('   - 状态: ${progressState.state}');
    print('   - downloadProgress: ${progressState.downloadProgress}');
    print('   - totalProgress: ${progressState.totalProgress}');
    print('   - showProgress: ${widget.showProgress}');

    if (widget.placeholder != null) {
      return widget.placeholder!;
    }

    return Container(
      color: Colors.grey[100],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 始终显示进度圈，不管isLoading状态
            if (widget.showProgress) ...[
              SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  value:
                      progressState.totalProgress >=
                              0.01 // 降低阈值，1%以上就显示具体进度
                          ? progressState.totalProgress
                          : null,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(
                    widget.isEncrypted ? Colors.orange : Colors.blue,
                  ),
                  strokeWidth: 4,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                _getProgressText(progressState),
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
              // 显示进度百分比 - 降低显示阈值
              if (progressState.totalProgress >= 0.01)
                Text(
                  '${(progressState.totalProgress * 100).toStringAsFixed(1)}%',
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              // 显示状态信息
              Text(
                '状态: ${progressState.state.name}',
                style: const TextStyle(color: Colors.red, fontSize: 10),
              ),
              Text(
                '下载: ${(progressState.downloadProgress * 100).toStringAsFixed(1)}%',
                style: const TextStyle(color: Colors.blue, fontSize: 10),
              ),
              // 添加测试按钮
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  print('🧪 手动测试状态更新');
                  final notifier = ref.read(
                    progressImageProvider(_providerParams).notifier,
                  );
                  print('   - notifier: $notifier');
                  print('   - 当前状态: ${notifier.state.state}');
                  print('   - 当前进度: ${notifier.state.downloadProgress}');

                  // 手动更新状态
                  try {
                    notifier.state = notifier.state.copyWith(
                      state: ImageLoadState.downloading,
                      downloadProgress: 0.5, // 设置50%进度
                    );
                    print('   - 手动设置进度为50%');
                    print('   - 新状态: ${notifier.state.state}');
                    print('   - 新进度: ${notifier.state.downloadProgress}');
                    print(
                      '   - 新totalProgress: ${notifier.state.totalProgress}',
                    );
                  } catch (e) {
                    print('❌ 手动更新状态失败: $e');
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: const Text('测试更新', style: TextStyle(fontSize: 10)),
              ),
              if (progressState.totalProgress < 0.01)
                const Text(
                  '准备下载...',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
            ] else ...[
              Icon(
                widget.isEncrypted ? Icons.lock : Icons.image,
                color: Colors.grey[400],
                size: 40,
              ),
              const SizedBox(height: 8),
              Text(
                widget.isEncrypted ? '加密图片加载中...' : '图片加载中...',
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ],
        ),
      ),
    );
  }

  /// 获取进度文本
  String _getProgressText(ProgressImageState progressState) {
    switch (progressState.state) {
      case ImageLoadState.downloading:
        return widget.isEncrypted ? '下载加密文件...' : '下载中...';
      case ImageLoadState.decrypting:
        return '解密中...';
      default:
        return '加载中...';
    }
  }

  /// 构建进度覆盖层
  Widget _buildProgressOverlay(ProgressImageState progressState) {
    return Positioned(
      bottom: 8,
      right: 8,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.8),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 18,
              height: 18,
              child: CircularProgressIndicator(
                value: progressState.totalProgress,
                backgroundColor: Colors.white.withValues(alpha: 0.3),
                valueColor: AlwaysStoppedAnimation<Color>(
                  widget.isEncrypted ? Colors.orange : Colors.white,
                ),
                strokeWidth: 2,
              ),
            ),
            const SizedBox(width: 8),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${(progressState.totalProgress * 100).toStringAsFixed(1)}%',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  _getProgressText(progressState),
                  style: const TextStyle(color: Colors.white70, fontSize: 9),
                ),
              ],
            ),
            if (widget.isEncrypted) ...[
              const SizedBox(width: 6),
              Icon(Icons.lock, color: Colors.orange, size: 14),
            ],
          ],
        ),
      ),
    );
  }

  /// 构建错误组件
  Widget _buildErrorWidget(String error) {
    if (widget.errorWidget != null) {
      return widget.errorWidget!;
    }

    return Container(
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.isEncrypted ? Icons.lock_outline : Icons.error_outline,
            color: Colors.red[300],
            size: 40,
          ),
          const SizedBox(height: 8),
          Text(
            widget.isEncrypted ? '加密图片加载失败' : '图片加载失败',
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              error,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              // 重置状态并重新加载
              ref.read(progressImageProvider(_providerParams).notifier).reset();
              _hasStartedTracking = false;
              setState(() {});
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
