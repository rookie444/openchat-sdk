import 'dart:async'; // 添加StreamSubscription的导入
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:openchat_client/src/features/contacts/chat_demo/chat_demo_page.dart';
import '../../features/auth/blocs/auth_bloc_notifier.dart';
import '../../features/auth/screens/login_screen.dart';
import '../../features/auth/screens/register_screen.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/profile/screens/profile_screen.dart';
import '../utils/log.dart';
import '../../features/chat/screens/chat_sessions_screen.dart';
import '../../features/chat/screens/chat_detail_screen.dart';
import '../router/route_observer.dart';
import '../../common/ffi.dart';
import '../../features/chat/screens/archived_sessions_screen.dart';
import '../../features/contacts/chat_demo/pages/chat_message_detail_page.dart';
import '../../features/contacts/chat_demo/providers/message_detail_provider.dart';
import '../../features/chat/chat_forward/pages/chat_forward_page.dart';
import '../../features/chat/chat_forward/services/chat_forward_service.dart';
import '../../features/chat/chat_forward/blocs/chat_forward_bloc.dart';
import '../../features/chat/chat_forward/blocs/chat_forward_event.dart';
import '../../features/chat/chat_forward/pages/forward_choose_contacts_page.dart';
import '../../rust/api/model/contacts.dart';
// import '../../features/chat/models/chat_message.dart';
import '../../features/contacts/chat_demo/models/chat_message.dart';

/// 路由名称常量
class AppRoutes {
  static const String root = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String profile = '/profile';
  // 会话列表
  static const String conversations = '/conversations';
  // 归档会话列表
  static const String archivedConversations = '/archivedConversations';
  // 会话详情
  static const String conversationDetail = '/conversationDetail';
  // 聊天demo
  static const String chatDemo = '/chatDemo';
  // 消息详情
  static const String messageDetail = '/messageDetail';
  // 转发页面
  static const String forward = '/forward';
  // 转发选择联系人页面
  static const String forwardChooseContacts = '/forward/choose-contacts';
}

/// 消息转换器

// 创建一个GoRouter Provider
final goRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authBlocNotifierProvider);

  // 根据认证状态确定初始路由
  String initialLocation = AppRoutes.login;
  bool isAuthenticated = authState.maybeMap(
    authenticated: (_) => true,
    unauthenticated: (_) => false,
    orElse: () => false,
  );

  initialLocation = isAuthenticated ? AppRoutes.home : AppRoutes.login;
  Log.info('GoRouter: 初始化路由为 $initialLocation，认证状态: $isAuthenticated');

  return GoRouter(
    initialLocation: initialLocation,
    debugLogDiagnostics: true, // 开启路由日志
    observers: [
      _LoggingNavigatorObserver(),
      AppRouteObserver(), // 添加消息推送观察器
    ],
    // 不使用refreshListenable，通过redirect监听authState变化
    redirect: (context, state) {
      // 获取当前认证状态
      bool isAuthenticated = false;

      // 检查认证状态
      authState.maybeMap(
        authenticated: (_) => isAuthenticated = true,
        unauthenticated: (_) => isAuthenticated = false,
        orElse: () => isAuthenticated = false,
      );

      Log.info(
        'GoRouter: 重定向检查 - 当前路径=${state.matchedLocation}, 是否已认证=$isAuthenticated',
      );

      // 重定向逻辑
      final isRootRoute =
          state.matchedLocation == AppRoutes.root ||
          state.matchedLocation == '/';
      final isLoginRoute = state.matchedLocation == AppRoutes.login;
      final isRegisterRoute = state.matchedLocation == AppRoutes.register;

      // 如果是根路径，根据认证状态重定向
      if (isRootRoute) {
        return isAuthenticated ? AppRoutes.home : AppRoutes.login;
      }

      // 如果未认证且不在登录或注册页面，则重定向到登录页
      if (!isAuthenticated && !isLoginRoute && !isRegisterRoute) {
        Log.info('GoRouter: 未认证用户尝试访问${state.matchedLocation}，重定向到登录页');
        return AppRoutes.login;
      }

      // 如果已认证且在登录页面或注册页面，则重定向到首页
      if (isAuthenticated && (isLoginRoute || isRegisterRoute)) {
        Log.info('GoRouter: 已认证用户在登录/注册页面，重定向到首页');
        return AppRoutes.home;
      }

      // 不需要重定向
      return null;
    },

    routes: [
      // 根路径 - 重定向到适当页面
      GoRoute(
        path: AppRoutes.root,
        builder: (context, state) {
          // 这里不会执行，因为会被redirect拦截
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        },
      ),

      // 登录页
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) {
          Log.info('GoRouter: 构建登录页');
          return const LoginScreen();
        },
      ),

      // 注册页
      GoRoute(
        path: AppRoutes.register,
        builder: (context, state) {
          Log.info('GoRouter: 构建注册页');
          return const RegisterScreen();
        },
      ),

      // 首页
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) {
          Log.info('GoRouter: 构建首页');
          return const HomeScreen();
        },
      ),

      // 个人资料页
      GoRoute(
        path: AppRoutes.profile,
        builder: (context, state) {
          Log.info('GoRouter: 构建个人资料页');
          return const ProfileScreen();
        },
      ),

      // 消息列表页
      GoRoute(
        path: AppRoutes.conversations,
        builder: (context, state) => const ChatSessionsScreen(),
      ),

      // 聊天详情页
      GoRoute(
        path: '${AppRoutes.conversationDetail}/:chatType/:targetId',
        builder: (context, state) {
          final chatTypeVal =
              int.tryParse(state.pathParameters['chatType'] ?? "") ?? 0;
          final chatType = FfiChatType.values[chatTypeVal];
          final targetId =
              int.tryParse(state.pathParameters['targetId'] ?? "") ?? 0;
          Log.info('路由到聊天详情页: chatType=$chatType targetId=$targetId');

          return ChatDetailScreen(chatType: chatType, targetId: targetId);
        },
      ),

      // 聊天demo
      GoRoute(
        path: '${AppRoutes.chatDemo}/:chatType/:targetId',
        builder: (context, state) {
          final chatTypeVal =
              int.tryParse(state.pathParameters['chatType'] ?? "") ?? 0;
          final chatType = FfiChatType.values[chatTypeVal];
          final targetId =
              int.tryParse(state.pathParameters['targetId'] ?? "") ?? 0;
          Log.info('路由到聊天demo: chatType=$chatType targetId=$targetId');

          List<ChatMessage>? messagesToForward =
              state.extra != null ? state.extra as List<ChatMessage> : null;

          return ChatDemoPage(
            chatTitle: '$targetId',
            chatType: chatType,
            targetId: targetId,
            messagesToForward: messagesToForward,
          );
        },
      ),

      // 归档会话列表页
      GoRoute(
        path: AppRoutes.archivedConversations,
        builder: (context, state) => const ArchivedSessionsScreen(),
      ),

      // 消息详情页
      GoRoute(
        path: AppRoutes.messageDetail,
        builder: (context, state) {
          return Consumer(
            builder: (context, ref, child) {
              final message = ref.watch(messageDetailProvider);

              if (message == null) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('消息详情'),
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => context.pop(),
                    ),
                  ),
                  body: const Center(child: Text('未找到消息')),
                );
              }

              return ChatMessageDetailPage(message: message);
            },
          );
        },
      ),

      // 转发页面
      GoRoute(
        path: AppRoutes.forward,
        builder: (context, state) {
          final forwardData = state.extra;
          if (forwardData == null) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('转发'),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => context.pop(),
                ),
              ),
              body: const Center(child: Text('未找到要转发的消息')),
            );
          }

          // 检查转发数据类型并转换为转发页面需要的格式
          List<ChatMessage> convertedMessages = [];
          FfiChatType? chatType;
          int? targetId;

          if (forwardData is Map<String, dynamic>) {
            // 新的转发数据格式，包含消息、聊天类型和目标ID
            final messages = forwardData['messages'];
            chatType = forwardData['chatType'] as FfiChatType?;
            targetId = forwardData['targetId'] as int?;

            if (messages is List<ChatMessage>) {
              convertedMessages = messages;
            } else if (messages is List) {
              // 如果是其他类型的List，尝试转换
              convertedMessages = messages.cast<ChatMessage>();
            } else {
              convertedMessages = [];
            }
          } else if (forwardData is List<ChatMessage>) {
            // 如果已经是正确的ChatMessage数组类型，直接使用
            convertedMessages = forwardData;
          } else if (forwardData is List) {
            // 尝试转换为ChatMessage类型
            try {
              convertedMessages = forwardData.cast<ChatMessage>();
            } catch (e) {
              convertedMessages = [];
            }
          } else {
            try {
              convertedMessages = forwardData as List<ChatMessage>;
            } catch (e) {
              convertedMessages = [];
            }
          }

          if (convertedMessages.isEmpty) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('转发'),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => context.pop(),
                ),
              ),
              body: const Center(child: Text('消息转换失败')),
            );
          }

          // 检查 chatType 和 targetId 是否为空
          if (chatType == null || targetId == null) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('转发'),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => context.pop(),
                ),
              ),
              body: const Center(child: Text('缺少聊天类型或目标ID')),
            );
          }

          return MultiBlocProvider(
            providers: [
              BlocProvider<ChatForwardBloc>(
                create:
                    (context) =>
                        ChatForwardBloc(forwardService: ChatForwardService())
                          ..add(
                            ChatForwardEvent.initialized(
                              messagesToForward: convertedMessages,
                              chatType: chatType,
                              targetId: targetId,
                            ),
                          ),
              ),
            ],
            child: ChatForwardPage(
              messagesToForward: convertedMessages,
              chatType: chatType,
              targetId: targetId,
            ),
          );
        },
      ),

      // 转发选择联系人页面
      GoRoute(
        path: AppRoutes.forwardChooseContacts,
        builder: (context, state) {
          final extraData = state.extra;
          if (extraData == null) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('选择联系人'),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => context.pop(),
                ),
              ),
              body: const Center(child: Text('缺少必要参数')),
            );
          }

          // 解析传递的数据
          List<ChatMessage> messagesToForward = [];
          Function(List<FfiContactDetail>)? onContactsSelected;

          if (extraData is Map<String, dynamic>) {
            final messages = extraData['messages'];
            onContactsSelected =
                extraData['onContactsSelected']
                    as Function(List<FfiContactDetail>)?;

            if (messages is List<ChatMessage>) {
              messagesToForward = messages;
            } else if (messages is List) {
              try {
                messagesToForward = messages.cast<ChatMessage>();
              } catch (e) {
                messagesToForward = [];
              }
            }
          }

          if (messagesToForward.isEmpty) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('选择联系人'),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => context.pop(),
                ),
              ),
              body: const Center(child: Text('未找到要转发的消息')),
            );
          }

          return ForwardChooseContactsPage(
            messagesToForward: messagesToForward,
            onContactsSelected: onContactsSelected,
          );
        },
      ),
    ],

    // 错误处理
    errorBuilder: (context, state) {
      Log.error('GoRouter: 路由错误 - ${state.error}');
      return Scaffold(
        appBar: AppBar(title: const Text('页面不存在')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('未找到页面', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              Text(
                '路径: ${state.matchedLocation}',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => context.go(AppRoutes.home),
                child: const Text('返回首页'),
              ),
            ],
          ),
        ),
      );
    },
  );
});

// 创建一个导航观察器用于记录路由变化
class _LoggingNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    Log.info(
      '导航观察: 推入路由 ${route.settings.name ?? "unknown"} (从 ${previousRoute?.settings.name ?? "unknown"})',
    );
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    Log.info(
      '导航观察: 弹出路由 ${route.settings.name ?? "unknown"} (返回到 ${previousRoute?.settings.name ?? "unknown"})',
    );
    super.didPop(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    Log.info(
      '导航观察: 替换路由 ${oldRoute?.settings.name ?? "unknown"} 为 ${newRoute?.settings.name ?? "unknown"}',
    );
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
}

// 创建一个流监听器用于GoRouter刷新
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners(); // 初始化时通知监听器
    _subscription = stream.asBroadcastStream().listen(
      (dynamic _) => notifyListeners(),
    );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
