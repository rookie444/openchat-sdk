import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../features/connection/blocs/connection_status_notifier.dart';
import '../../../features/connection/blocs/connection_status_state.dart';
import '../../../core/utils/log.dart';
import 'dart:math' as math;

class ConnectionStatusIndicator extends ConsumerWidget {
  const ConnectionStatusIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connectionState = ref.watch(connectionStatusNotifierProvider);

    // 调试日志
    Log.info('ConnectionStatusIndicator: 当前状态: ${connectionState.toString()}');

    // 使用AnimatedSwitcher实现平滑过渡
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
      child: connectionState.maybeMap(
        connected: (_) => const SizedBox.shrink(), // 已连接时不显示
        orElse:
            () => Container(
              key: ValueKey<String>(connectionState.toString()),
              height: 26,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: _getGradientColors(connectionState),
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 3,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    connectionState.maybeMap(
                      failed:
                          (_) => const Icon(
                            Icons.error_outline,
                            color: Colors.white,
                            size: 14,
                          ),
                      orElse:
                          () => _buildConnectionIndicator(
                            context,
                            connectionState,
                          ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      _getStatusText(connectionState),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }

  Widget _buildConnectionIndicator(
    BuildContext context,
    ConnectionStatusState state,
  ) {
    // 根据状态返回不同的动画指示器
    return state.maybeMap(
      connecting: (_) => _buildSignalAnimation(context),
      authenticating: (_) => _buildAuthenticationLoader(),
      orElse: () => _buildDotPulse(context),
    );
  }

  Widget _buildSignalAnimation(BuildContext context) {
    return SizedBox(
      width: 18,
      height: 18,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // 静态中心点
          Container(
            width: 4,
            height: 4,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          // 信号波动画1
          _buildSignalWave(delayMillis: 0, maxSize: 12),
          // 信号波动画2
          _buildSignalWave(delayMillis: 333, maxSize: 16),
          // 信号波动画3
          _buildSignalWave(delayMillis: 666, maxSize: 18),
        ],
      ),
    );
  }

  Widget _buildSignalWave({required int delayMillis, required double maxSize}) {
    return Builder(
      builder: (context) {
        return TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.0, end: 1.0),
          duration: const Duration(seconds: 1),
          curve: Curves.easeOut,
          builder: (context, value, child) {
            return Opacity(
              opacity: (1.0 - value),
              child: Container(
                width: 4 + (value * maxSize),
                height: 4 + (value * maxSize),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withOpacity(0.8),
                    width: 1.5,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            );
          },
          onEnd: () {
            // 重复动画
            if (context.mounted) {
              (context as Element).markNeedsBuild();
            }
          },
        );
      },
    );
  }

  Widget _buildAuthenticationLoader() {
    return const SizedBox(
      width: 16,
      height: 16,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      ),
    );
  }

  Widget _buildDotPulse(BuildContext context) {
    return SizedBox(
      width: 14,
      height: 14,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0.0, end: 1.0),
            duration: const Duration(seconds: 1),
            builder: (context, value, child) {
              return Opacity(
                opacity: (1.0 - value),
                child: Container(
                  width: 6 + (value * 8),
                  height: 6 + (value * 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                ),
              );
            },
            onEnd: () {
              // 重复动画
              if (context.mounted) {
                (context as Element).markNeedsBuild();
              }
            },
          ),
        ],
      ),
    );
  }

  List<Color> _getGradientColors(ConnectionStatusState state) {
    return state.maybeMap(
      connecting:
          (_) => [
            const Color(0xFF178AFF),
            const Color(0xFF178AFF).withOpacity(0.8),
          ],
      authenticating:
          (_) => [
            const Color(0xFF7A67EE),
            const Color(0xFF7A67EE).withOpacity(0.8),
          ],
      failed:
          (_) => [
            const Color(0xFFFF4D4D),
            const Color(0xFFFF4D4D).withOpacity(0.8),
          ],
      orElse: () => [Colors.grey, Colors.grey.withOpacity(0.8)],
    );
  }

  String _getStatusText(ConnectionStatusState state) {
    return state.maybeMap(
      connecting: (_) => '连接中...',
      authenticating: (_) => '正在登录...',
      failed: (failedState) => '连接失败: ${failedState.message}',
      orElse: () => '',
    );
  }
}
