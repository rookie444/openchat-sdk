import 'dart:async';
import 'package:flutter/material.dart';
import '../../../core/utils/log.dart';

class CountdownButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final int totalSeconds;
  final Color? textColor;
  final Color? backgroundColor;
  final bool isEnabled;

  const CountdownButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.totalSeconds = 60,
    this.textColor,
    this.backgroundColor,
    this.isEnabled = true,
  });

  @override
  State<CountdownButton> createState() => _CountdownButtonState();
}

class _CountdownButtonState extends State<CountdownButton> {
  bool _isCountingDown = false;
  int _countdownSeconds = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _countdownSeconds = widget.totalSeconds;
    Log.info(
      'CountdownButton: 初始化 - isEnabled=${widget.isEnabled}, isLoading=${widget.isLoading}',
    );
  }

  @override
  void didUpdateWidget(CountdownButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isEnabled != widget.isEnabled ||
        oldWidget.isLoading != widget.isLoading) {
      Log.info(
        'CountdownButton: 参数更新 - isEnabled=${widget.isEnabled}, isLoading=${widget.isLoading}',
      );
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startCountdown() {
    setState(() {
      _isCountingDown = true;
      _countdownSeconds = widget.totalSeconds;
    });

    Log.info('CountdownButton: 开始倒计时 - totalSeconds=${widget.totalSeconds}');

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_countdownSeconds > 0) {
          _countdownSeconds--;
        } else {
          _isCountingDown = false;
          timer.cancel();
          Log.info('CountdownButton: 倒计时结束');
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isDisabled =
        !widget.isEnabled || widget.isLoading || _isCountingDown;

    Log.info(
      'CountdownButton: 构建 - isDisabled=$isDisabled, isEnabled=${widget.isEnabled}, isLoading=${widget.isLoading}, isCountingDown=$_isCountingDown',
    );

    return SizedBox(
      height: 36,
      width: 100,
      child: ElevatedButton(
        onPressed:
            isDisabled
                ? null
                : () {
                  widget.onPressed();
                  _startCountdown();
                },
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.backgroundColor ?? const Color(0xFF3A7FE4),
          foregroundColor: widget.textColor ?? Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          elevation: 0,
          disabledBackgroundColor: (widget.backgroundColor ??
                  const Color(0xFF3A7FE4))
              .withOpacity(0.5),
          padding: EdgeInsets.zero,
        ),
        child: Text(
          _isCountingDown ? '$_countdownSeconds秒' : widget.text,
          style: TextStyle(
            fontSize: 13,
            color:
                isDisabled
                    ? (widget.textColor ?? Colors.white).withOpacity(0.7)
                    : widget.textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
