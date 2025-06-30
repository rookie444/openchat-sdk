import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import '../models/chat_message.dart';
import '../../../common/utils/emoji_chat/emoji_utils.dart';

/// 聊天列表文本消息组件
/// 支持Unicode表情显示、自定义表情图片显示和HTTP链接高亮点击功能
class ChatListTextWidget extends StatelessWidget {
  final ChatMessageTextModel message;
  final Color textColor;

  const ChatListTextWidget({
    super.key,
    required this.message,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    // 优先使用预解析的tokens
    final preCalculatedTokens = _getPreCalculatedTokens();
    
    if (preCalculatedTokens != null && preCalculatedTokens.isNotEmpty) {
      // 使用预解析的tokens直接渲染
      return _buildFromTokens(context, preCalculatedTokens, textColor);
    } else {
      // 回退到异步解析方式
      return FutureBuilder<List<InlineSpan>>(
        future: _parseContentWithEmojis(message.textContent.text, textColor), 
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return RichText(
              text: TextSpan(children: snapshot.data!),
              textAlign: TextAlign.left,
              softWrap: true,
            );
          } else {
            // 加载中或出错时显示原始文本
            return _buildRichText(context, message.textContent.text, textColor);
          }
        },
      );
    }
  }

  /// 获取预解析的tokens
  List<InputTextToken>? _getPreCalculatedTokens() {
    // 优先使用contentCalculteModel中的tokens
    if (message.contentCalculteModel?.textTokens != null) {
      return message.contentCalculteModel!.textTokens;
    }
    
    // 其次使用message.textTokens
    if (message.textTokens != null) {
      return message.textTokens;
    }
    
    return null;
  }

  /// 从预解析的tokens构建Widget
  Widget _buildFromTokens(BuildContext context, List<InputTextToken> tokens, Color textColor) {
    final spans = <InlineSpan>[];
    
    for (final token in tokens) {
      if (token.type == InputTokenType.emoji && token.imageName != null) {
        // 渲染自定义表情图片
        spans.add(_createEmojiSpan(token.imageName!));
      } else {
        // 处理普通文本（包括URL链接）
        spans.addAll(_parseTextWithLinks(context, token.text, textColor));
      }
    }
    
    return RichText(
      text: TextSpan(children: spans),
      textAlign: TextAlign.left,
      softWrap: true,
    );
  }

  /// 解析包含自定义表情的内容
  Future<List<InlineSpan>> _parseContentWithEmojis(String content, Color textColor) async {
    try {
      // 使用EmojiUtils解析文本，获取token列表
      final tokens = await EmojiUtils.parseEmojiContent(content);
      return _buildSpansFromTokens(tokens, textColor);
    } catch (e) {
      // 出错时回退到原始解析方式
      return [_createTextSpan(content, textColor)];
    }
  }

  /// 从tokens构建spans
  List<InlineSpan> _buildSpansFromTokens(List<InputTextToken> tokens, Color textColor) {
    final spans = <InlineSpan>[];
    
    for (final token in tokens) {
      if (token.type == InputTokenType.emoji && token.imageName != null) {
        // 渲染自定义表情图片
        spans.add(_createEmojiSpan(token.imageName!));
      } else {
        // 处理普通文本（包括URL链接），这里不需要BuildContext
        spans.addAll(_parseTextWithLinksSync(token.text, textColor));
      }
    }
    
    return spans;
  }

  /// 同步解析文本中的链接，不使用BuildContext
  List<InlineSpan> _parseTextWithLinksSync(String content, Color textColor) {
    // URL正则表达式 - 支持 http、https、ftp 等协议
    final urlPattern = RegExp(
      r'(https?://[^\s]+|www\.[^\s]+|ftp://[^\s]+)',
      caseSensitive: false, 
    );
    
    final spans = <InlineSpan>[];
    int lastEnd = 0;
    
    // 处理链接
    for (final match in urlPattern.allMatches(content)) {
      // 添加链接前的普通文本
      if (match.start > lastEnd) {
        final beforeText = content.substring(lastEnd, match.start);
        spans.add(_createTextSpan(beforeText, textColor));
      }
      
      // 添加链接文本
      final url = match.group(0)!;
      spans.add(TextSpan(
        text: url,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () => _copyUrlToClipboard(url),
      ));
      
      lastEnd = match.end;
    }
    
    // 添加剩余的普通文本
    if (lastEnd < content.length) {
      final remainingText = content.substring(lastEnd);
      spans.add(_createTextSpan(remainingText, textColor));
    }
    
    // 如果没有找到链接，返回整个内容的文本
    if (spans.isEmpty) {
      spans.add(_createTextSpan(content, textColor));
    }
    
    return spans;
  }

  /// 直接复制URL到剪贴板，不需要context
  void _copyUrlToClipboard(String url) async {
    try {
      await Clipboard.setData(ClipboardData(text: url));
      // 这里无法显示SnackBar，因为没有context
      // 可以考虑使用其他提示方式，如flutter_toast等
    } catch (e) {
      // 复制失败，静默处理
    }
  }

  /// 创建自定义表情图片span
  WidgetSpan _createEmojiSpan(String imageName) {
    return WidgetSpan(
      child: Container(
        width: 20,
        height: 20,
        margin: const EdgeInsets.symmetric(horizontal: 1),
        child: EmojiUtils.emojiImage(imageName) ?? 
               Icon(Icons.broken_image, size: 20, color: Colors.grey[400]),
      ),
      alignment: PlaceholderAlignment.middle,
    );
  }

  /// 解析文本中的链接，返回TextSpan列表
  List<InlineSpan> _parseTextWithLinks(BuildContext context, String content, Color textColor) {
    // URL正则表达式 - 支持 http、https、ftp 等协议
    final urlPattern = RegExp(
      r'(https?://[^\s]+|www\.[^\s]+|ftp://[^\s]+)',
      caseSensitive: false, 
    );
    
    final spans = <InlineSpan>[];
    int lastEnd = 0;
    
    // 处理链接
    for (final match in urlPattern.allMatches(content)) {
      // 添加链接前的普通文本
      if (match.start > lastEnd) {
        final beforeText = content.substring(lastEnd, match.start);
        spans.add(_createTextSpan(beforeText, textColor));
      }
      
      // 添加链接文本
      final url = match.group(0)!;
      spans.add(TextSpan(
        text: url,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () => _handleLinkTap(context, url),
      ));
      
      lastEnd = match.end;
    }
    
    // 添加剩余的普通文本
    if (lastEnd < content.length) {
      final remainingText = content.substring(lastEnd);
      spans.add(_createTextSpan(remainingText, textColor));
    }
    
    // 如果没有找到链接，返回整个内容的文本
    if (spans.isEmpty) {
      spans.add(_createTextSpan(content, textColor));
    }
    
    return spans;
  }

  /// 处理链接点击 - 复制到剪贴板
  void _handleLinkTap(BuildContext context, String url) async {
    try {
      await Clipboard.setData(ClipboardData(text: url));
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('链接已复制到剪贴板: $url'),
            duration: const Duration(seconds: 2),
            backgroundColor: Colors.blue,
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('复制失败')),
        );
      }
    }
  }

  /// 构建富文本，支持链接高亮和Unicode表情显示 加上自定义emoji显示
  Widget _buildRichText(BuildContext context, String content, Color textColor) {
    final spans = _parseTextWithLinks(context, content, textColor);
    
    return RichText(
      text: TextSpan(children: spans),
      textAlign: TextAlign.left,
      softWrap: true,
    );
  }

  /// 创建支持表情的文本片段
  TextSpan _createTextSpan(String text, Color textColor) {
    return TextSpan(
      text: text,
      style: TextStyle(
        color: textColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        // 确保Unicode表情正确显示
        fontFamilyFallback: const [
          'Apple Color Emoji',
          'Noto Color Emoji',
          'Segoe UI Emoji',
          'Noto Emoji',
        ],
        // 添加表情符号支持的字体特性
        fontFeatures: const [
          FontFeature.enable('cmap'),
          FontFeature.enable('kern'),
        ],
      ),
    );
  }
}
