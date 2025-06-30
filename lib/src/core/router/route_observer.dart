import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:openchat_client/src/features/chat/utils/push_notification_manager.dart';
import 'package:flutter/foundation.dart';
import '../utils/log.dart';
import '../../common/ffi.dart';

import 'app_router.dart';

/// 应用路由观察器
/// 用于监听路由变化，并根据当前页面设置消息推送行为
class AppRouteObserver extends NavigatorObserver {
  /// 当路由被推入时，更新推送设置
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('路由推入: ${route.settings.name}');
    super.didPush(route, previousRoute);
    _updatePushNotificationSetting(route);
  }

  /// 当路由被替换时，更新推送设置
  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute != null) {
      _updatePushNotificationSetting(newRoute);
    }
  }

  /// 当路由被弹出时，更新推送设置
  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute != null) {
      _updatePushNotificationSetting(previousRoute);
    } else {
      // 如果没有前一个路由，说明可能退出了App
      PushNotificationManager.leaveMessagingPages();
    }
  }

  /// 从路由中提取参数
  Map<String, String?> _extractGoRouterParams(Route<dynamic> route) {
    // 尝试各种方式获取参数
    final routeData = <String, String?>{};

    // 1. 尝试获取GoRouterState
    if (route.settings.arguments is GoRouterState) {
      final goState = route.settings.arguments as GoRouterState;
      debugPrint('GoRouter参数: ${goState.pathParameters}');
      return goState.pathParameters;
    }

    // 2. 如果是ChatDetailScreen，直接获取conversationId
    if (route.settings.arguments is Map<String, dynamic>) {
      final args = route.settings.arguments as Map<String, dynamic>;
      if (args.containsKey('chatType')) {
        routeData['chatType'] = args['chatType']?.toString();
      }
      if (args.containsKey('targetId')) {
        routeData['targetId'] = args['targetId']?.toString();
      }
      if (args.containsKey('conversationId')) {
        routeData['conversationId'] = args['conversationId']?.toString();
      }
    }

    // 3. 从路由名称中解析参数
    final routeName = route.settings.name;
    if (routeName != null &&
        routeName.startsWith('${AppRoutes.conversationDetail}/')) {
      // 解析URL路径
      final pathSegments = Uri.parse(routeName).pathSegments;
      if (pathSegments.length > 1) {
        final idSegment = pathSegments.last;
        if (idSegment != ':conversationId') {
          routeData['conversationId'] = idSegment;
        }
      }
    }else if (routeName != null &&
        routeName.startsWith('${AppRoutes.chatDemo}/')) {
      // 解析URL路径
      final pathSegments = Uri.parse(routeName).pathSegments;
      if (pathSegments.length > 1) {
        final idSegment = pathSegments.last;
        if (idSegment != ':conversationId') {
          routeData['conversationId'] = idSegment;
        }
      }
    }

    return routeData;
  }

  /// 根据路由名称更新推送设置
  void _updatePushNotificationSetting(Route<dynamic> route) {
    final String? routeName = route.settings.name;
    debugPrint('路由更新: $routeName, 参数: ${route.settings.arguments}');

    if (routeName == null) return;

    // 尝试获取页面组件类型
    final pageWidget = route.settings.arguments;
    debugPrint('路由组件类型: ${pageWidget.runtimeType}');

    // 检查是否是会话详情页
    if (routeName.contains(AppRoutes.conversationDetail)) {
      // 提取会话ID
      final params = _extractGoRouterParams(route);
      final chatTypeVal = int.tryParse(params['chatType'] ?? "0") ?? 0;
      final chatType = FfiChatType.values[chatTypeVal];
      final targetId = int.tryParse(params['targetId'] ?? "0") ?? 0;

      debugPrint('chatTypeVal: $chatTypeVal targetId: $targetId');

      if (chatTypeVal >= 0 && targetId > 0) {
        Log.info('进入会话详情页: chatType: $chatType targetId: $targetId');
        PushNotificationManager.enterConversationPage(chatType, targetId);
      } else {
        Log.warning('无法从路由中提取会话ID');
      }
    } else if (routeName.contains(AppRoutes.conversations)) {
      // 会话列表页面
      Log.info('进入会话列表页');
      PushNotificationManager.enterConversationListPage();
    } else if (routeName == AppRoutes.home) {
      // 主页面，默认显示会话列表
      Log.info('进入主页 - 会话列表标签页');
      PushNotificationManager.enterConversationListPage();
    } else if (routeName.contains(AppRoutes.chatDemo)) {
    // 提取会话ID
      final params = _extractGoRouterParams(route);
      final chatTypeVal = int.tryParse(params['chatType'] ?? "0") ?? 0;
      final chatType = FfiChatType.values[chatTypeVal];
      final targetId = int.tryParse(params['targetId'] ?? "0") ?? 0;

      debugPrint('chatTypeVal: $chatTypeVal targetId: $targetId');

      if (chatTypeVal >= 0 && targetId > 0) {
        Log.info('进入会话详情页: chatType: $chatType targetId: $targetId');
        PushNotificationManager.enterConversationPage(chatType, targetId);
      } else {
        Log.warning('无法从路由中提取会话ID');
      }
    }else {
      // 其他页面
      Log.info('进入其他页面: $routeName');
      // PushNotificationManager.leaveMessagingPages();
      // 临时处理，进入会话列表页
      PushNotificationManager.enterConversationListPage();
    }
  }
}
