import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// 性能监控工具
/// 用于调试ListView.builder子组件重建问题
class PerformanceMonitor {
  static final Map<String, int> _buildCounts = {};
  static final Map<String, DateTime> _lastBuildTimes = {};
  static bool _isEnabled = kDebugMode;

  /// 启用/禁用性能监控
  static void setEnabled(bool enabled) {
    _isEnabled = enabled;
  }

  /// 记录组件构建
  static void recordBuild(String componentName, {String? additionalInfo}) {
    if (!_isEnabled) return;

    final now = DateTime.now();
    final count = (_buildCounts[componentName] ?? 0) + 1;
    _buildCounts[componentName] = count;
    _lastBuildTimes[componentName] = now;

    final info = additionalInfo != null ? ' ($additionalInfo)' : '';
    print(
      '🔄 [性能监控] $componentName 第${count}次构建$info - ${now.toString().substring(11, 23)}',
    );

    // 如果构建次数过多，发出警告
    if (count > 10 && count % 5 == 0) {
      print('⚠️ [性能警告] $componentName 已重建${count}次，可能存在性能问题');
    }
  }

  /// 记录组件销毁
  static void recordDispose(String componentName) {
    if (!_isEnabled) return;
    print('🗑️ [性能监控] $componentName 已销毁');
  }

  /// 获取构建统计
  static Map<String, int> getBuildStats() {
    return Map.from(_buildCounts);
  }

  /// 清除统计数据
  static void clearStats() {
    _buildCounts.clear();
    _lastBuildTimes.clear();
    print('🧹 [性能监控] 统计数据已清除');
  }

  /// 打印性能报告
  static void printReport() {
    if (!_isEnabled || _buildCounts.isEmpty) return;

    print('\n📊 [性能报告] ListView组件构建统计:');
    print('=' * 50);

    final sortedEntries =
        _buildCounts.entries.toList()
          ..sort((a, b) => b.value.compareTo(a.value));

    for (final entry in sortedEntries) {
      final componentName = entry.key;
      final buildCount = entry.value;
      final lastBuildTime = _lastBuildTimes[componentName];
      final timeStr = lastBuildTime?.toString().substring(11, 23) ?? '未知';

      String status = '✅ 正常';
      if (buildCount > 20) {
        status = '🔴 严重';
      } else if (buildCount > 10) {
        status = '🟡 警告';
      }

      print('$status $componentName: ${buildCount}次构建 (最后: $timeStr)');
    }
    print('=' * 50);
  }
}

/// 性能监控Mixin
/// 为StatefulWidget添加自动的构建监控
mixin PerformanceMonitorMixin<T extends StatefulWidget> on State<T> {
  String get componentName => widget.runtimeType.toString();

  @override
  void initState() {
    super.initState();
    PerformanceMonitor.recordBuild('$componentName.initState');
  }

  @override
  Widget build(BuildContext context) {
    PerformanceMonitor.recordBuild('$componentName.build');
    return buildWithMonitoring(context);
  }

  @override
  void dispose() {
    PerformanceMonitor.recordDispose(componentName);
    super.dispose();
  }

  /// 子类需要实现这个方法而不是build方法
  Widget buildWithMonitoring(BuildContext context);
}

/// 性能监控Widget包装器
class PerformanceMonitorWidget extends StatelessWidget {
  final String name;
  final Widget child;
  final String? additionalInfo;

  const PerformanceMonitorWidget({
    super.key,
    required this.name,
    required this.child,
    this.additionalInfo,
  });

  @override
  Widget build(BuildContext context) {
    PerformanceMonitor.recordBuild(name, additionalInfo: additionalInfo);
    return child;
  }
}

/// ListView性能优化配置
class ListViewPerformanceConfig {
  /// 缓存范围（像素）
  static const double cacheExtent = 1000.0;

  /// 是否添加自动保持存活
  static const bool addAutomaticKeepAlives = true;

  /// 是否添加重绘边界
  static const bool addRepaintBoundaries = true;

  /// 是否添加语义边界
  static const bool addSemanticIndexes = true;

  /// 推荐的ListView.builder配置
  static Map<String, dynamic> get recommendedConfig => {
    'cacheExtent': cacheExtent,
    'addAutomaticKeepAlives': addAutomaticKeepAlives,
    'addRepaintBoundaries': addRepaintBoundaries,
    'addSemanticIndexes': addSemanticIndexes,
  };

  /// 打印配置建议
  static void printRecommendations() {
    print('\n💡 [性能建议] ListView.builder优化配置:');
    print('=' * 50);
    print('cacheExtent: $cacheExtent // 增加缓存范围');
    print('addAutomaticKeepAlives: $addAutomaticKeepAlives // 自动保持状态');
    print('addRepaintBoundaries: $addRepaintBoundaries // 添加重绘边界');
    print('addSemanticIndexes: $addSemanticIndexes // 添加语义索引');
    print('');
    print('itemBuilder建议:');
    print('- 为每个item添加稳定的key');
    print('- 使用RepaintBoundary包装复杂item');
    print('- 子组件使用AutomaticKeepAliveClientMixin');
    print('- 避免在itemBuilder中进行复杂计算');
    print('=' * 50);
  }
}
