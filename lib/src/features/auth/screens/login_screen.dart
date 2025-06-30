import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';
import '../../../core/utils/log.dart';
import '../blocs/login_bloc_notifier.dart';
import '../blocs/login_event.dart';
import '../blocs/login_state.dart';
import '../widgets/countdown_button.dart';
import '../blocs/login_bloc.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final int _initialTabIndex = 0;
  final bool _hasSetupListeners = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3, // 手机、邮箱、密码三个标签
      vsync: this,
      initialIndex: _initialTabIndex,
    );

    // 不再在initState中设置监听器
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 在build方法中设置状态监听器
    ref.listen<LoginState>(loginBlocNotifierProvider, (previous, current) {
      if (!mounted) return;

      Log.info('LoginScreen: 状态变化检测');

      // 使用密封联合类型的pattern matching处理不同状态
      current.when(
        initial: (
          phone,
          countryCode,
          smsCode,
          password,
          isPhoneValid,
          isSmsCodeValid,
          isPasswordValid,
        ) {
          // 初始状态，无需特殊处理
        },
        smsCodeSent: (
          phone,
          countryCode,
          smsCode,
          isSmsCodeValid,
          isPhoneValid,
        ) {
          // 验证码发送成功
          Log.info('LoginScreen: 验证码发送成功');
          // 先移除当前可能存在的SnackBar，避免多次显示
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('验证码已发送，请注意查收')));
        },
        submitting: (
          phone,
          countryCode,
          smsCode,
          password,
          isPhoneValid,
          isSmsCodeValid,
          isPasswordValid,
        ) {
          // 正在提交状态，无需特殊处理
        },
        success: () {
          // 登录成功，跳转到首页
          Log.info('LoginScreen: 登录成功，准备跳转到首页');

          // 使用GoRouter导航到首页
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              // 先移除当前可能存在的SnackBar
              ScaffoldMessenger.of(context).removeCurrentSnackBar();
              Log.info('LoginScreen: 开始强制导航到首页 ${AppRoutes.home}');
              // 使用replace而不是go，避免返回到登录页面
              context.replace(AppRoutes.home);
            }
          });
        },
        failure: (
          errorMessage,
          phone,
          countryCode,
          smsCode,
          password,
          isPhoneValid,
          isSmsCodeValid,
          isPasswordValid,
        ) {
          // 显示错误信息
          Log.info('LoginScreen: 登录失败 - $errorMessage');
          // 先移除当前可能存在的SnackBar
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(errorMessage)));
        },
      );
    });

    // 不在build中设置监听器
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.pop(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  // Logo图标
                  Image.asset(
                    'assets/images/68_logo.png',
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(height: 30),
                  // 标签页头部
                  TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.blue,
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey,
                    tabs: const [
                      Tab(text: '手机'),
                      Tab(text: '邮箱'),
                      Tab(text: '密码'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // 标签页内容
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        const _PhoneLoginTab(),
                        const Center(child: Text('邮箱登录功能开发中')),
                        const _PasswordLoginTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // 底部客服信息
          _buildBottomInfo(),
        ],
      ),
    );
  }

  // 底部版本信息和客服
  Widget _buildBottomInfo() {
    // 使用唯一键确保底部信息只显示一次
    const bottomInfoKey = Key('login_bottom_info');

    return Container(
      key: bottomInfoKey,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey.shade200, width: 1)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/bottom_logo.png', height: 20),
              const SizedBox(width: 5),
              const Text(
                '联系客服',
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Text(
            '版本号: 4.0.7 20230913-0954',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class _PhoneLoginTab extends ConsumerStatefulWidget {
  const _PhoneLoginTab({super.key});

  @override
  ConsumerState<_PhoneLoginTab> createState() => _PhoneLoginTabState();
}

class _PhoneLoginTabState extends ConsumerState<_PhoneLoginTab> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _smsCodeController = TextEditingController();
  bool _initialValuesSet = false;

  @override
  void dispose() {
    _phoneController.dispose();
    _smsCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginBlocNotifierProvider);

    // 仅在初始化或状态重置时设置控制器的值
    if (!_initialValuesSet) {
      final String phone = loginState.maybeWhen(
        initial: (p, _, __, ___, ____, _____, ______) => p,
        smsCodeSent: (p, _, __, ___, ____) => p,
        submitting: (p, _, __, ___, ____, _____, ______) => p,
        failure: (_, p, __, ___, ____, _____, ______, _______) => p ?? '',
        orElse: () => '',
      );

      final String smsCode = loginState.maybeWhen(
        initial: (_, __, s, ___, ____, _____, ______) => s,
        smsCodeSent: (_, __, s, ___, ____) => s,
        submitting: (_, __, s, ___, ____, _____, ______) => s ?? '',
        failure: (_, __, ___, s, ____, _____, ______, _______) => s ?? '',
        orElse: () => '',
      );

      _phoneController.text = phone;
      _smsCodeController.text = smsCode;
      _initialValuesSet = true;
    }

    // 使用when方法匹配状态
    final isLoading = loginState.maybeWhen(
      submitting: (_, __, ___, ____, _____, ______, _______) => true,
      orElse: () => false,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildPhoneInput(context, ref),
        const SizedBox(height: 16),
        _buildSmsCodeInput(context, ref),
        const SizedBox(height: 24),
        _buildLoginButton(context, ref, isLoading),
        const SizedBox(height: 16),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '还没有账号？',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              TextButton(
                onPressed: () {
                  context.push(AppRoutes.register);
                },
                child: const Text('去注册', style: TextStyle(fontSize: 14)),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPhoneInput(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginBlocNotifierProvider);
    final loginNotifier = ref.read(loginBlocNotifierProvider.notifier);

    final String countryCode = loginState.maybeWhen(
      initial: (_, c, __, ___, ____, _____, ______) => c,
      smsCodeSent: (_, c, __, ___, ____) => c,
      submitting: (_, c, __, ___, ____, _____, ______) => c,
      failure: (_, __, c, ___, ____, _____, ______, _______) => c ?? '86',
      orElse: () => '86',
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Text('+$countryCode', style: const TextStyle(fontSize: 14)),
                const Icon(Icons.arrow_drop_down, color: Colors.grey, size: 20),
              ],
            ),
          ),
          const SizedBox(width: 8),
          const Text('|', style: TextStyle(color: Colors.grey, fontSize: 18)),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                hintText: '请输入手机号码',
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey),
              ),
              controller: _phoneController,
              onChanged: (value) {
                Log.info('LoginScreen: 手机号输入变更: $value');
                loginNotifier.add(LoginEvent.phoneChanged(value));
              },
            ),
          ),
          if (_phoneController.text.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.clear, color: Colors.grey, size: 16),
              onPressed: () {
                _phoneController.clear();
                loginNotifier.add(const LoginEvent.phoneChanged(''));
              },
            ),
        ],
      ),
    );
  }

  Widget _buildSmsCodeInput(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginBlocNotifierProvider);
    final loginNotifier = ref.read(loginBlocNotifierProvider.notifier);
    final loginBloc = ref.read(loginBlocProvider);

    // 使用when方法提取状态信息
    final isLoading = loginState.maybeWhen(
      submitting: (_, __, ___, ____, _____, ______, _______) => true,
      orElse: () => false,
    );

    // 检查是否可以发送验证码
    final canSendSms = loginBloc.canSendSmsCode;

    // 显示更多日志，帮助调试问题
    final phone = _phoneController.text;
    final isPhoneValid = phone.length == 11;
    final stateType = loginState.runtimeType.toString();

    Log.info(
      'LoginScreen: 验证码按钮状态详细检查 - '
      'canSendSms=$canSendSms, '
      'phone=$phone, '
      'isPhoneValid=$isPhoneValid, '
      'phoneLength=${phone.length}, '
      'stateType=$stateType, '
      'isLoading=$isLoading',
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: '请输入验证码',
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                hintStyle: TextStyle(color: Colors.grey),
              ),
              controller: _smsCodeController,
              onChanged: (value) {
                Log.info('LoginScreen: SMS码输入变更: $value, 长度=${value.length}');
                loginNotifier.add(LoginEvent.smsCodeChanged(value));
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 4),
            child: CountdownButton(
              text: '获取验证码',
              textColor: Colors.white,
              backgroundColor: Colors.blue,
              isLoading: isLoading,
              isEnabled: canSendSms,
              onPressed: () {
                Log.info('LoginScreen: 点击获取验证码按钮');
                loginNotifier.add(LoginEvent.sendSMSCode(phone));
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton(
    BuildContext context,
    WidgetRef ref,
    bool isLoading,
  ) {
    final loginState = ref.watch(loginBlocNotifierProvider);
    final loginBloc = ref.read(loginBlocProvider);
    final isEnabled = loginBloc.isPhoneLoginEnabled && !isLoading;

    // 获取手机号和验证码
    final phone = loginState.maybeWhen(
      initial: (p, _, __, ___, ____, _____, ______) => p,
      smsCodeSent: (p, _, __, ___, ____) => p,
      submitting: (p, _, __, ___, ____, _____, ______) => p,
      failure: (_, p, __, ___, ____, _____, ______, _______) => p ?? '',
      orElse: () => '',
    );

    final smsCode = loginState.maybeWhen(
      initial: (_, __, s, ___, ____, _____, ______) => s,
      smsCodeSent: (_, __, s, ___, ____) => s,
      submitting: (_, __, s, ___, ____, _____, ______) => s ?? '',
      failure: (_, __, ___, s, ____, _____, ______, _______) => s ?? '',
      orElse: () => '',
    );

    final countryCode = loginState.maybeWhen(
      initial: (_, c, __, ___, ____, _____, ______) => c,
      smsCodeSent: (_, c, __, ___, ____) => c,
      submitting: (_, c, __, ___, ____, _____, ______) => c,
      failure: (_, __, c, ___, ____, _____, ______, _______) => c ?? '86',
      orElse: () => '86',
    );

    Log.info(
      'LoginScreen: 登录按钮状态检查 - phone=$phone, smsCode=$smsCode, isEnabled=$isEnabled',
    );

    return ElevatedButton(
      onPressed:
          isEnabled
              ? () {
                Log.info('LoginScreen: 登录按钮点击 - 开始登录');
                loginBloc.add(
                  LoginEvent.loginSubmitted(
                    countryCode: countryCode,
                    phone: phone,
                    smsCode: smsCode,
                  ),
                );
              }
              : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: isEnabled ? Colors.blue : Colors.grey.shade300,
        disabledBackgroundColor: Colors.grey.shade300,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        minimumSize: const Size(double.infinity, 50),
      ),
      child:
          isLoading
              ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              )
              : const Text(
                '登录',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
    );
  }
}

class _PasswordLoginTab extends ConsumerStatefulWidget {
  const _PasswordLoginTab({super.key});

  @override
  ConsumerState<_PasswordLoginTab> createState() => _PasswordLoginTabState();
}

class _PasswordLoginTabState extends ConsumerState<_PasswordLoginTab> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _initialValuesSet = false;

  @override
  void dispose() {
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginBlocNotifierProvider);

    // 仅在初始化或状态重置时设置控制器的值
    if (!_initialValuesSet) {
      final phone = loginState.maybeWhen(
        initial: (p, _, __, ___, ____, _____, ______) => p,
        smsCodeSent: (p, _, __, ___, ____) => p,
        submitting: (p, _, __, ___, ____, _____, ______) => p,
        failure: (_, p, __, ___, ____, _____, ______, _______) => p ?? '',
        orElse: () => '',
      );

      final password = loginState.maybeWhen(
        initial: (_, __, ___, p, ____, _____, ______) => p,
        submitting: (_, __, ___, p, ____, _____, ______) => p ?? '',
        failure: (_, __, ___, ____, p, _____, ______, _______) => p ?? '',
        orElse: () => '',
      );

      _phoneController.text = phone;
      _passwordController.text = password;
      _initialValuesSet = true;
    }

    final isLoading = loginState.maybeWhen(
      submitting: (_, __, ___, ____, _____, ______, _______) => true,
      orElse: () => false,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildPhoneInput(context, ref),
        const SizedBox(height: 16),
        _buildPasswordInput(context, ref),
        const SizedBox(height: 24),
        _buildLoginButton(context, ref, isLoading),
        const SizedBox(height: 16),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              // 忘记密码
            },
            child: const Text(
              '忘记密码？',
              style: TextStyle(color: Colors.blue, fontSize: 14),
            ),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '还没有账号？',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              TextButton(
                onPressed: () {
                  context.push(AppRoutes.register);
                },
                child: const Text('去注册', style: TextStyle(fontSize: 14)),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPhoneInput(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginBlocNotifierProvider);
    final loginNotifier = ref.read(loginBlocNotifierProvider.notifier);

    final countryCode = loginState.maybeWhen(
      initial: (_, c, __, ___, ____, _____, ______) => c,
      smsCodeSent: (_, c, __, ___, ____) => c,
      submitting: (_, c, __, ___, ____, _____, ______) => c,
      failure: (_, __, c, ___, ____, _____, ______, _______) => c ?? '86',
      orElse: () => '86',
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Text('+$countryCode', style: const TextStyle(fontSize: 14)),
                const Icon(Icons.arrow_drop_down, color: Colors.grey, size: 20),
              ],
            ),
          ),
          const SizedBox(width: 8),
          const Text('|', style: TextStyle(color: Colors.grey, fontSize: 18)),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                hintText: '请输入手机号码',
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey),
              ),
              controller: _phoneController,
              onChanged: (value) {
                loginNotifier.add(LoginEvent.phoneChanged(value));
              },
            ),
          ),
          if (_phoneController.text.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.clear, color: Colors.grey, size: 16),
              onPressed: () {
                _phoneController.clear();
                loginNotifier.add(const LoginEvent.phoneChanged(''));
              },
            ),
        ],
      ),
    );
  }

  Widget _buildPasswordInput(BuildContext context, WidgetRef ref) {
    final loginNotifier = ref.read(loginBlocNotifierProvider.notifier);

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        obscureText: true,
        decoration: const InputDecoration(
          hintText: '请输入密码',
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          hintStyle: TextStyle(color: Colors.grey),
        ),
        controller: _passwordController,
        onChanged: (value) {
          loginNotifier.add(LoginEvent.passwordChanged(value));
        },
      ),
    );
  }

  Widget _buildLoginButton(
    BuildContext context,
    WidgetRef ref,
    bool isLoading,
  ) {
    final loginState = ref.watch(loginBlocNotifierProvider);
    final loginBloc = ref.read(loginBlocProvider);
    final isEnabled = loginBloc.isPasswordLoginEnabled && !isLoading;

    final phone = loginState.maybeWhen(
      initial: (p, _, __, ___, ____, _____, ______) => p,
      smsCodeSent: (p, _, __, ___, ____) => p,
      submitting: (p, _, __, ___, ____, _____, ______) => p,
      failure: (_, p, __, ___, ____, _____, ______, _______) => p ?? '',
      orElse: () => '',
    );

    final password = loginState.maybeWhen(
      initial: (_, __, ___, p, ____, _____, ______) => p,
      submitting: (_, __, ___, p, ____, _____, ______) => p ?? '',
      failure: (_, __, ___, ____, p, _____, ______, _______) => p ?? '',
      orElse: () => '',
    );

    final countryCode = loginState.maybeWhen(
      initial: (_, c, __, ___, ____, _____, ______) => c,
      smsCodeSent: (_, c, __, ___, ____) => c,
      submitting: (_, c, __, ___, ____, _____, ______) => c,
      failure: (_, __, c, ___, ____, _____, ______, _______) => c ?? '86',
      orElse: () => '86',
    );

    Log.info(
      'LoginScreen: 密码登录按钮状态检查 - phone=$phone, password=$password, isEnabled=$isEnabled',
    );

    return ElevatedButton(
      onPressed:
          isEnabled
              ? () {
                Log.info('LoginScreen: 密码登录按钮点击 - 开始登录');
                loginBloc.add(
                  LoginEvent.loginWithPassword(
                    countryCode: countryCode,
                    phone: phone,
                    password: password,
                  ),
                );
              }
              : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: isEnabled ? Colors.blue : Colors.grey.shade300,
        disabledBackgroundColor: Colors.grey.shade300,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        minimumSize: const Size(double.infinity, 50),
      ),
      child:
          isLoading
              ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              )
              : const Text(
                '登录',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
    );
  }
}
