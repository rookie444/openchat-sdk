import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:io';
import 'log.dart';

class LogViewerScreen extends StatefulWidget {
  const LogViewerScreen({super.key});

  @override
  State<LogViewerScreen> createState() => _LogViewerScreenState();
}

class _LogViewerScreenState extends State<LogViewerScreen> {
  String _logContent = '加载中...';
  String _logFilePath = '';
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadLogContent();
  }

  Future<void> _loadLogContent() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final content = await Log.readLogContent();
      final path = await Log.getLogFilePath();

      setState(() {
        _logContent = content;
        _logFilePath = path;
        _isLoading = false;
      });

      // 滚动到底部
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scrollController.hasClients) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        }
      });
    } catch (e) {
      setState(() {
        _logContent = '加载日志失败: $e';
        _isLoading = false;
      });
    }
  }

  Future<void> _shareLogFile() async {
    try {
      final path = await Log.getLogFilePath();
      final file = File(path);
      if (await file.exists()) {
        await Share.shareFiles([path], text: '应用日志文件');
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('日志文件不存在')));
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('分享日志失败: $e')));
    }
  }

  Future<void> _copyLogToClipboard() async {
    await Clipboard.setData(ClipboardData(text: _logContent));
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('日志已复制到剪贴板')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('应用日志'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadLogContent,
            tooltip: '刷新',
          ),
          IconButton(
            icon: const Icon(Icons.copy),
            onPressed: _copyLogToClipboard,
            tooltip: '复制',
          ),
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: _shareLogFile,
            tooltip: '分享',
          ),
        ],
      ),
      body: Column(
        children: [
          // 显示日志文件路径
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '日志文件: $_logFilePath',
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          // 日志内容
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.black,
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      child: SelectableText(
                        _logContent,
                        style: const TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 12,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_scrollController.hasClients) {
            _scrollController.animateTo(
              _scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          }
        },
        tooltip: '滚动到底部',
        child: const Icon(Icons.keyboard_arrow_down),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
