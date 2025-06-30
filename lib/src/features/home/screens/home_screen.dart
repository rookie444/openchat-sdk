import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:openchat_client/src/features/chat/screens/chat_sessions_screen.dart';
import 'package:openchat_client/src/features/chat/blocs/chat_sessions_notifier.dart';
import 'package:openchat_client/src/features/chat/blocs/chat_sessions_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openchat_client/src/features/contacts/contacts_page.dart';
import '../../../core/utils/log.dart';
import '../../../core/router/app_router.dart';
import '../../../features/auth/blocs/auth_state.dart';
import '../../../features/auth/blocs/auth_bloc_notifier.dart';
import '../../../features/connection/blocs/connection_status_event.dart';
import '../../../features/connection/blocs/connection_status_notifier.dart';
import '../../../features/connection/blocs/connection_status_state.dart';
import '../../../rust/api/model/user.dart';
import 'package:cached_network_image/cached_network_image.dart';

/// 提前初始化全局服务的Provider
final homeInitializerProvider = Provider<bool>((ref) {
  // 确保聊天相关的Provider提前初始化，即使未显示
  ref.watch(chatSessionsNotifierProvider);
  return true;
});

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with WidgetsBindingObserver {
  int _currentIndex = 0;
  bool _isInitialized = false;
  int _previousIndex = 0;

  final List<Widget> _pages = [
    const HomePageContent(),
    const ContactsPage(),
    const _CallsPage(),
    const _ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    // 在挂载后检查认证状态，只执行一次
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_isInitialized) {
        Log.info('HomeScreen: 初始化完成，开始检查认证状态');

        // 开始连接过程
        if (ref
                .read(connectionStatusNotifierProvider)
                .maybeWhen(connected: () => true, orElse: () => false) ==
            false) {
          ref
              .read(connectionStatusNotifierProvider.notifier)
              .add(const ConnectionStatusEvent.connect());
        }

        // 检查认证状态
        ref.read(authBlocNotifierProvider.notifier).checkAuth();

        setState(() {
          _isInitialized = true;
        });
      }
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // 应用回到前台时，确保消息流活跃
      Log.info('应用回到前台，确保消息流活跃');
      final chatSessionsBloc = ref.read(chatSessionsBlocProvider);
      chatSessionsBloc.resubscribe();
    }
  }

  void _handleTabChange(int newIndex) {
    if (newIndex != _currentIndex) {
      _previousIndex = _currentIndex;
      setState(() {
        _currentIndex = newIndex;
      });

      // 如果从其他标签切换回消息标签，确保重新激活消息订阅
      if (newIndex == 0 && _previousIndex != 0) {
        Log.info('从其他标签切换回消息标签，确保消息订阅活跃');
        final chatSessionsBloc = ref.read(chatSessionsBlocProvider);
        chatSessionsBloc.resubscribe();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Log.info('HomeScreen: build方法被调用，当前标签: $_currentIndex');

    // 确保全局Provider初始化
    ref.watch(homeInitializerProvider);

    // 监听身份验证状态变化 - 使用key确保监听器只创建一次
    ref.listen<AuthState>(authBlocNotifierProvider, (previous, current) {
      Log.info('HomeScreen: 认证状态监听器被触发');

      current.maybeMap(
        authenticated: (_) {
          // 认证成功后，更新连接状态为已连接
          ref
              .read(connectionStatusNotifierProvider.notifier)
              .add(const ConnectionStatusEvent.connectionComplete());
        },
        // 处理认证失败情况
        unauthenticated: (unauth) {
          // 如果有错误消息，则更新为失败状态
          if (unauth.errorMessage != null) {
            ref
                .read(connectionStatusNotifierProvider.notifier)
                .add(
                  ConnectionStatusEvent.connectionFailed(unauth.errorMessage!),
                );
          }
        },
        orElse: () {},
      );

      final needsRedirectToLogin = current.maybeMap(
        authenticated: (_) => false,
        orElse: () => true,
      );

      if (needsRedirectToLogin && mounted) {
        Log.info('HomeScreen: 用户未认证，准备跳转到登录页');
        context.go(AppRoutes.login);
      }
    });

    // 获取当前身份验证状态
    final authState = ref.watch(authBlocNotifierProvider);

    // 检查当前是否已认证
    return authState.maybeMap(
      authenticated:
          (_) => Scaffold(
            // 使用安全区域避免状态栏遮挡
            body: SafeArea(
              child: IndexedStack(index: _currentIndex, children: _pages),
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(color: const Color(0xFFF2F2F2), width: 1.0),
                ),
              ),
              child: BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: _handleTabChange,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: const Color(0xFF178AFF),
                unselectedItemColor: const Color(0xFF6A7B95),
                selectedFontSize: 11,
                unselectedFontSize: 11,
                backgroundColor: Colors.transparent,
                elevation: 0,
                items: [
                  BottomNavigationBarItem(
                    icon: Consumer(
                      builder: (context, ref, child) {
                        final totalUnread = ref
                            .watch(chatSessionsNotifierProvider)
                            .maybeWhen(
                              success:
                                  (sessions, _) => sessions.fold(
                                    0,
                                    (sum, session) => sum + session.unreadCount,
                                  ),
                              orElse: () => 0,
                            );

                        return Stack(
                          clipBehavior: Clip.none,
                          children: [
                            SvgPicture.asset(
                              'assets/images/figma/message_tab_icon.svg',
                              width: 24,
                              height: 24,
                              colorFilter: ColorFilter.mode(
                                _currentIndex == 0
                                    ? const Color(0xFF178AFF)
                                    : const Color(0xFF6A7B95),
                                BlendMode.srcIn,
                              ),
                            ),
                            if (totalUnread > 0)
                              Positioned(
                                right: -8,
                                top: -4,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 2,
                                    vertical: 1,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFF3B30),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  constraints: const BoxConstraints(
                                    minWidth: 16,
                                    minHeight: 16,
                                  ),
                                  child: Text(
                                    totalUnread > 99
                                        ? '99+'
                                        : totalUnread.toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                    label: '消息',
                  ),

                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/images/figma/contacts_tab_icon.svg',
                      width: 24,
                      height: 24,
                      colorFilter: ColorFilter.mode(
                        _currentIndex == 1
                            ? const Color(0xFF178AFF)
                            : const Color(0xFF6A7B95),
                        BlendMode.srcIn,
                      ),
                    ),
                    label: '通讯录',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/images/figma/me_tab_icon.svg',
                      width: 24,
                      height: 24,
                      colorFilter: ColorFilter.mode(
                        _currentIndex == 2
                            ? const Color(0xFF178AFF)
                            : const Color(0xFF6A7B95),
                        BlendMode.srcIn,
                      ),
                    ),
                    label: '通话',
                  ),
                  BottomNavigationBarItem(
                    icon: Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/images/figma/call_tab_icon.svg',
                          width: 24,
                          height: 24,
                          colorFilter: ColorFilter.mode(
                            _currentIndex == 3
                                ? const Color(0xFF178AFF)
                                : const Color(0xFF6A7B95),
                            BlendMode.srcIn,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFE1919),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    label: '我',
                  ),
                ],
              ),
            ),
          ),
      orElse:
          () =>
              const Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}

// 主页内容 - 包含标题和会话列表
class HomePageContent extends ConsumerWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connectionState = ref.watch(connectionStatusNotifierProvider);

    // 根据连接状态决定是否显示状态标题
    final shouldShowConnectionStatus = connectionState.maybeMap(
      connected: (_) => false, // 连接成功后不显示状态
      orElse: () => true, // 其他状态显示
    );

    return Column(
      children: [
        // 只有状态提示的标题栏
        Container(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(color: const Color(0xFFEAEAEA), width: 1),
            ),
          ),
          child:
              shouldShowConnectionStatus
                  ? _buildTitleFromConnectionState(connectionState)
                  : const Text(
                    '消息',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
        ),
        // 聊天会话列表，使用Expanded填充剩余空间
        const Expanded(child: ChatSessionsScreen()),
      ],
    );
  }

  // 根据连接状态构建不同的标题
  Widget _buildTitleFromConnectionState(ConnectionStatusState state) {
    return state.maybeMap(
      connecting:
          (_) => const _AnimatedConnectionTitle(
            title: '连接中...',
            color: Color(0xFF178AFF),
          ),
      authenticating:
          (_) => const _AnimatedConnectionTitle(
            title: '登录中...',
            color: Color(0xFF7A67EE),
          ),
      failed:
          (failedState) => Text(
            '连接失败',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
      orElse:
          () => const Text(
            '消息',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
    );
  }
}

// 带有动画效果的连接状态标题
class _AnimatedConnectionTitle extends StatefulWidget {
  final String title;
  final Color color;

  const _AnimatedConnectionTitle({required this.title, required this.color});

  @override
  State<_AnimatedConnectionTitle> createState() =>
      _AnimatedConnectionTitleState();
}

class _AnimatedConnectionTitleState extends State<_AnimatedConnectionTitle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _opacityAnimation = Tween<double>(
      begin: 0.6,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.title.substring(0, widget.title.length - 3), // 移除省略号
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Opacity(
              opacity: _opacityAnimation.value,
              child: Text(
                '...',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: widget.color,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class _ContactsPage extends StatelessWidget {
  const _ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('通讯录'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.person_add),
            onPressed: () {
              // 添加联系人
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 26,
        itemBuilder: (context, index) {
          final letter = String.fromCharCode(65 + index);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                color: Colors.grey.withOpacity(0.1),
                width: double.infinity,
                child: Text(
                  letter,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...List.generate(
                3,
                (i) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor:
                        Colors.primaries[(index + i) % Colors.primaries.length],
                    child: Text('$letter${i + 1}'),
                  ),
                  title: Text('$letter 组联系人 ${i + 1}'),
                  onTap: () {
                    // 查看联系人详情
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _CallsPage extends StatelessWidget {
  const _CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('通话'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.call, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text(
              '暂无通话记录',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfilePage extends ConsumerWidget {
  const _ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 获取认证状态，以便显示用户信息
    final authState = ref.watch(authBlocNotifierProvider);

    // 从AuthState中获取用户信息
    FfiUserBase? user;
    authState.maybeMap(
      authenticated: (userInfo) => user = userInfo.user,
      unauthenticated: (_) => user = null,
      orElse: () => user = null,
    );

    // 安全获取用户头像
    final hasAvatar = user != null && user!.avatar.isNotEmpty;
    final nickName = user?.nickName ?? '未知用户';
    final uid = user != null ? '${user!.uid}' : 'N/A';

    return Scaffold(
      appBar: AppBar(
        title: const Text('我'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // 设置
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // 头像和用户信息
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: ClipOval(
                  child:
                      hasAvatar
                          ? CachedNetworkImage(
                            imageUrl: user!.avatar,
                            fit: BoxFit.cover,
                            width: 60,
                            height: 60,
                            placeholder:
                                (context, url) => Center(
                                  child: Text(
                                    nickName.isNotEmpty
                                        ? nickName[0].toUpperCase()
                                        : '?',
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                            errorWidget:
                                (context, url, error) => Center(
                                  child: Text(
                                    nickName.isNotEmpty
                                        ? nickName[0].toUpperCase()
                                        : '?',
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                          )
                          : Text(
                            nickName.isNotEmpty
                                ? nickName[0].toUpperCase()
                                : '?',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                ),
              ),
              title: Text(
                nickName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('ID: $uid'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // 查看个人资料
              },
            ),
            const Divider(height: 20, thickness: 10),

            // 功能列表
            ListTile(
              leading: const Icon(Icons.star, color: Colors.amber),
              title: const Text('我的收藏'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // 查看收藏
              },
            ),
            const Divider(height: 1),
            ListTile(
              leading: const Icon(Icons.photo_album, color: Colors.green),
              title: const Text('我的相册'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // 查看相册
              },
            ),
            const Divider(height: 1),
            ListTile(
              leading: const Icon(Icons.wallet, color: Colors.blue),
              title: const Text('我的钱包'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // 查看钱包
              },
            ),
            const Divider(height: 20, thickness: 10),

            // 设置和关于
            ListTile(
              leading: const Icon(Icons.help_outline, color: Colors.purple),
              title: const Text('帮助与反馈'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // 帮助与反馈
              },
            ),
            const Divider(height: 1),
            ListTile(
              leading: const Icon(Icons.info_outline, color: Colors.teal),
              title: const Text('关于OpenChat'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // 关于
              },
            ),
            const Divider(height: 20, thickness: 10),

            // 退出登录按钮
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // 显示确认对话框
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: const Text('确认退出登录'),
                          content: const Text('您确定要退出登录吗？'),
                          actions: [
                            TextButton(
                              onPressed: () => context.pop(),
                              child: const Text('取消'),
                            ),
                            TextButton(
                              onPressed: () {
                                context.pop(); // 关闭对话框
                                // 调用登出方法
                                ref
                                    .read(authBlocNotifierProvider.notifier)
                                    .logout();
                                Log.info('用户点击退出登录');
                              },
                              child: const Text('确认'),
                            ),
                          ],
                        ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('退出登录'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
