import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/utils/log.dart';
import '../../../core/utils/log_viewer_screen.dart';
import '../../../core/router/app_router.dart';
import '../blocs/register_bloc.dart';
import '../blocs/register_event.dart';
import '../blocs/register_state.dart';
import '../blocs/register_bloc_notifier.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen>
    with SingleTickerProviderStateMixin {
  late TextEditingController _phoneController;
  late TextEditingController _smsCodeController;
  late TextEditingController _passwordController;
  late TabController _tabController;

  String _selectedCountryCode = "86";
  final _formKey = GlobalKey<FormState>();
  bool _hasSetupListeners = false;

  @override
  void initState() {
    super.initState();
    _phoneController = TextEditingController();
    _smsCodeController = TextEditingController();
    _passwordController = TextEditingController();
    _tabController = TabController(length: 2, vsync: this);

    // 在初始化时设置默认国家代码
    _selectedCountryCode = '86';

    // 在下一帧设置监听器
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _setupStateListeners();
    });
  }

  void _setupStateListeners() {
    if (_hasSetupListeners) return;

    // 监听状态变化
    ref.listen<RegisterState>(registerBlocNotifierProvider, (
      previous,
      current,
    ) {
      if (!mounted) return;

      // 处理状态变化
      final prevStatus = previous?.status;
      final currStatus = current.status;

      if (prevStatus != currStatus) {
        Log.info('RegisterScreen: 状态变化 $prevStatus -> $currStatus');

        // 处理错误消息
        if (currStatus == RegisterStatus.failure &&
            current.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('错误: ${current.errorMessage}')),
          );
        }

        // 处理成功状态
        if (currStatus == RegisterStatus.success) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('注册成功!')));
          // 注册成功后延迟跳转到登录页面
          Future.delayed(const Duration(seconds: 1), () {
            if (mounted) {
              context.go(AppRoutes.login);
            }
          });
        }

        // 处理SMS验证码发送成功状态
        if (currStatus == RegisterStatus.smsCode) {
          Log.info(
            'RegisterScreen: SMS验证码已成功发送，hasRequestedSmsCode=${current.hasRequestedSmsCode}',
          );
          // 更新UI以显示验证码已发送
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('验证码已发送，请注意查收')));
          // 清空验证码输入框，等待用户输入新的验证码
          _smsCodeController.clear();
        }
      }

      // 当手机号更新时同步到控制器
      final prevPhone = previous?.phone;
      if (prevPhone != null &&
          prevPhone != current.phone &&
          _phoneController.text != current.phone) {
        _phoneController.text = current.phone;
      }

      // 当验证码更新时同步到控制器
      final prevSmsCode = previous?.smsCode;
      if (prevSmsCode != null &&
          prevSmsCode != current.smsCode &&
          _smsCodeController.text != current.smsCode) {
        _smsCodeController.text = current.smsCode;
      }
    });

    // 特别监听hasRequestedSmsCode状态变化
    ref.listen<bool>(
      registerBlocProvider.select((bloc) => bloc.state.hasRequestedSmsCode),
      (previous, current) {
        if (previous != null) {
          Log.info(
            'RegisterScreen: hasRequestedSmsCode状态变化 $previous -> $current',
          );
        }
      },
    );

    _hasSetupListeners = true;
    Log.info('RegisterScreen: 状态监听器已设置');
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _smsCodeController.dispose();
    _passwordController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 获取当前状态，但不在build方法中设置监听器
    final registerState = ref.watch(registerBlocProvider).state;
    final isLoading = registerState.status == RegisterStatus.submitting;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () {
            Log.info('RegisterScreen: 用户点击返回按钮');
            context.pop();
          },
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Logo
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Image.asset(
                'assets/images/68_logo.png',
                width: 80,
                height: 80,
              ),
            ),
          ),
          // TabBar
          _buildTabBar(),
          // TabBarView
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildPhoneRegisterTab(isLoading),
                _buildEmailRegisterTab(), // 邮箱注册Tab
              ],
            ),
          ),
          // 底部客服信息
          _buildBottomInfo(),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: TabBar(
        controller: _tabController,
        indicatorColor: Colors.blue, // 指示器颜色
        indicatorWeight: 2.0, // 指示器高度
        labelColor: Colors.blue, // 选中标签颜色
        unselectedLabelColor: Colors.grey.shade600, // 未选中标签颜色
        labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontSize: 16),
        tabs: const [Tab(text: '手机注册'), Tab(text: '邮箱注册')],
      ),
    );
  }

  // 手机注册Tab内容
  Widget _buildPhoneRegisterTab(bool isLoading) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 30), // 增加顶部间距
            _buildPhoneInput(),
            const SizedBox(height: 20),
            _buildSmsCodeInput(),
            const SizedBox(height: 30),
            _buildRegisterButton(isLoading),
            const SizedBox(height: 20),
            _buildLoginLink(),
          ],
        ),
      ),
    );
  }

  // 邮箱注册Tab内容（占位符）
  Widget _buildEmailRegisterTab() {
    return const Center(
      child: Text(
        '邮箱注册功能暂未开放',
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
  }

  // 底部版本信息和客服
  Widget _buildBottomInfo() {
    return Container(
      padding: const EdgeInsets.only(bottom: 30, top: 15), // 增加底部和顶部间距
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 添加日志查看按钮
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: InkWell(
              onTap: () {
                Log.info('用户点击查看日志按钮');
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LogViewerScreen(),
                  ),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.article, size: 16, color: Colors.blue),
                  const SizedBox(width: 4),
                  const Text(
                    '查看日志',
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          // 客服图标
          Image.asset(
            'assets/images/kefu.png', // 使用正确的客服图标路径
            height: 20, // 稍微放大图标
          ),
          const SizedBox(height: 10), // 调整间距
          // 版本号
          const Text(
            '版本号：4.0.7 20230913-0954', // 示例版本号，应动态获取
            style: TextStyle(color: Colors.grey, fontSize: 12), // 稍微放大字体
          ),
        ],
      ),
    );
  }

  Widget _buildPhoneInput() {
    final registerBloc = ref.read(registerBlocProvider);

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100, // 调整背景色以匹配设计
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Text(
                  '+$_selectedCountryCode',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ), // 调整样式
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.blue,
                  size: 20,
                ), // 调整颜色
              ],
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '|',
            style: TextStyle(color: Colors.grey.shade300, fontSize: 18),
          ), // 调整分隔线颜色
          const SizedBox(width: 12),
          Expanded(
            child: TextFormField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              style: const TextStyle(fontSize: 16), // 调整输入文字大小
              decoration: InputDecoration(
                hintText: '请输入手机号码',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 16,
                ), // 调整提示文字样式
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 15,
                ), // 调整垂直内边距
              ),
              onChanged: (value) {
                registerBloc.add(RegisterEvent.phoneChanged(value));
                Log.info("手机号输入变更: $value");
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '请输入手机号码';
                }
                return null;
              },
            ),
          ),
          if (_phoneController.text.isNotEmpty)
            IconButton(
              icon: Icon(
                Icons.cancel,
                color: Colors.grey.shade400,
                size: 20,
              ), // 使用 cancel 图标并调整样式
              onPressed: () {
                setState(() {
                  _phoneController.clear();
                  registerBloc.add(const RegisterEvent.phoneChanged(''));
                });
              },
            ),
        ],
      ),
    );
  }

  Widget _buildSmsCodeInput() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final registerState = ref.watch(registerBlocNotifierProvider);
        final isPhoneValid = registerState.isPhoneValid;

        final registerBloc = ref.read(registerBlocProvider);
        final isLoading = registerState.status == RegisterStatus.submitting;
        final controller = _smsCodeController;

        bool canGetCode = isPhoneValid && !isLoading;

        return Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100, // 调整背景色
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  key: const Key('registerForm_smsCodeInput_textField'),
                  controller: controller,
                  keyboardType: TextInputType.number,
                  maxLength: 4, // 限制长度为4位
                  style: const TextStyle(fontSize: 16), // 调整输入文字大小
                  onChanged: (smsCode) {
                    Log.info("验证码输入变更: $smsCode");
                    registerBloc.add(RegisterEvent.smsCodeChanged(smsCode));
                  },
                  decoration: InputDecoration(
                    hintText: '验证码为4位数字', // 修改提示文字
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 15,
                    ),
                    counterText: '',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 16,
                    ), // 调整提示文字样式
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            _CountdownButton(
              key: const Key('registerForm_getSmsCode_button'),
              isEnabled: canGetCode,
              onPressed: () {
                Log.info("点击获取验证码按钮");
                _hideKeyboard(context);
                registerBloc.add(
                  RegisterEvent.sendSMSCode(_phoneController.text),
                );
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildRegisterButton(bool isLoading) {
    return Consumer(
      builder: (context, ref, child) {
        final registerState = ref.watch(registerBlocNotifierProvider);
        final registerBloc = ref.read(registerBlocProvider);

        final bool isPhoneValid = registerState.isPhoneValid;
        final bool isSmsCodeValid = registerState.isSmsCodeValid;
        final bool isLoadingStatus =
            registerState.status == RegisterStatus.submitting;
        final bool hasRequestedSmsCode = registerState.hasRequestedSmsCode;

        // 注册按钮启用条件: 手机号有效，已请求验证码，验证码有效，且不在加载中
        bool isEnabled =
            isPhoneValid &&
            hasRequestedSmsCode &&
            isSmsCodeValid &&
            !isLoadingStatus;

        // 调试日志
        if (kDebugMode) {
          Log.debug(
            "注册按钮状态: isEnabled=$isEnabled, phone=$isPhoneValid, sms=$isSmsCodeValid, loading=$isLoadingStatus",
          );
        }

        return ElevatedButton(
          key: const Key('registerForm_submit_button'),
          style: ElevatedButton.styleFrom(
            backgroundColor: isEnabled ? Colors.blue : Colors.grey.shade300,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            minimumSize: const Size(double.infinity, 50),
            elevation: isEnabled ? 1 : 0,
          ),
          onPressed:
              isEnabled
                  ? () {
                    _hideKeyboard(context);
                    registerBloc.add(
                      RegisterEvent.registerSubmitted(
                        countryCode: registerState.countryCode,
                        phone: registerState.phone,
                        smsCode: registerState.smsCode,
                      ),
                    );
                  }
                  : null,
          child: Text(
            isLoadingStatus ? '注册中...' : '注册',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }

  Widget _buildLoginLink() {
    return Center(
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
          children: [
            const TextSpan(text: '已有账户？'),
            TextSpan(
              text: ' 去登录',
              style: const TextStyle(color: Colors.blue),
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      Log.info('点击了去登录');
                      context.go(AppRoutes.login);
                    },
            ),
          ],
        ),
      ),
    );
  }

  // 隐藏键盘方法
  void _hideKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }
}

// 添加倒计时按钮组件
class _CountdownButton extends StatefulWidget {
  final bool isEnabled;
  final VoidCallback onPressed;

  const _CountdownButton({
    super.key,
    required this.isEnabled,
    required this.onPressed,
  });

  @override
  _CountdownButtonState createState() => _CountdownButtonState();
}

class _CountdownButtonState extends State<_CountdownButton> {
  bool _isCountingDown = false;
  int _countdownSeconds = 60;

  @override
  void dispose() {
    super.dispose();
  }

  void _startCountdown() {
    setState(() {
      _isCountingDown = true;
      _countdownSeconds = 60;
    });

    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        _decrementCounter();
      }
    });
  }

  void _decrementCounter() {
    if (!mounted) return;

    setState(() {
      if (_countdownSeconds > 1) {
        _countdownSeconds--;
        Future.delayed(const Duration(seconds: 1), _decrementCounter);
      } else {
        _isCountingDown = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor:
            (_isCountingDown || !widget.isEnabled)
                ? Colors.grey.shade400
                : Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      ),
      onPressed:
          (_isCountingDown || !widget.isEnabled)
              ? null
              : () {
                widget.onPressed();
                _startCountdown();
              },
      child: Text(
        _isCountingDown ? '$_countdownSeconds秒' : '获取验证码',
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}
