import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xml/xml.dart';

/// 表情工具类，用于读取和解析表情相关的plist文件
class EmojiUtils {
  // 缓存解析结果
  static List<String>? _systemEmojis;
  static List<String>? _emojiCnNames;
  static List<String>? _emojiIconNames;
  static List<EmojiData>? _combinedEmojiData;
  static Map<String, Image> cacheEmojiImage = {};

  static Future<void> init() async {
    await getSystemEmojis();
    await getEmojiCnNames();
    await getEmojiIconNames();
    await getCombinedEmojiData();
  }

  /// 读取系统表情Unicode编码
  static Future<List<String>> getSystemEmojis() async {
    if (_systemEmojis != null) return _systemEmojis!;
    
    try {
      final String content = await rootBundle.loadString(
        'assets/json_file/systemEmoji.json'  
      );
      _systemEmojis = _parsePlistArray(content);
      return _systemEmojis!;
    } catch (e) {
      print('❌ 读取系统表情文件失败: $e');
      return [];
    }
  }

  /// 读取表情中文名称
  static Future<List<String>> getEmojiCnNames() async {
    if (_emojiCnNames != null) return _emojiCnNames!;
    
    try {
      final String content = await rootBundle.loadString(
        'assets/json_file/emoji_cn.json'    
      );
      _emojiCnNames = _parsePlistArray(content);
      return _emojiCnNames!;
    } catch (e) {
      print('❌ 读取表情中文名称文件失败: $e');
      return [];
    }
  }

  /// 读取表情图标文件名 json文件 读取  
  static Future<List<String>> getEmojiIconNames() async {
    if (_emojiIconNames != null) return _emojiIconNames!;
    
    try {
      final String content = await rootBundle.loadString(
        'assets/json_file/emoji_icon.json'
      );
      _emojiIconNames = _parsePlistArray(content);  // 解析json文件 返回数组    
      return _emojiIconNames!;
    } catch (e) {
      print('❌ 读取表情图标文件失败: $e');
      return [];
    }
  }

  /// 获取完整的表情数据（包含Unicode、中文名、图标文件名）
  static Future<List<EmojiData>> getCombinedEmojiData() async {
    if (_combinedEmojiData != null) return _combinedEmojiData!;
    
    try {
      final systemEmojis = await getSystemEmojis();
      final emojiCnNames = await getEmojiCnNames();
      final emojiIconNames = await getEmojiIconNames();
      
      final List<EmojiData> result = [];
      final maxLength = [systemEmojis.length, emojiCnNames.length, emojiIconNames.length].reduce((a, b) => a > b ? a : b);
      
      for (int i = 0; i < maxLength; i++) {
        final unicodeCode = i < systemEmojis.length ? systemEmojis[i] : null;
        final cnName = i < emojiCnNames.length ? emojiCnNames[i] : null;
        final iconName = i < emojiIconNames.length ? emojiIconNames[i] : null;
        
        result.add(EmojiData(
          index: i,
          unicodeCode: unicodeCode,
          cnName: cnName,
          iconName: iconName,
          emoji: unicodeCode != null ? _convertUnicodeToEmoji(unicodeCode) : null,
        ));
      }
      
      _combinedEmojiData = result;
      return result;
    } catch (e) {
      print('❌ 获取组合表情数据失败: $e');
      return [];
    }
  }

  /// 根据中文名称查找表情
  static Future<EmojiData?> findEmojiByChineseName(String cnName) async {
    final emojiData = await getCombinedEmojiData();
    try {
      return emojiData.firstWhere((emoji) => emoji.cnName == cnName);
    } catch (e) {
      return null;
    }
  }

  /// 根据图标文件名查找表情
  static Future<EmojiData?> findEmojiByIconName(String iconName) async {
    final emojiData = await getCombinedEmojiData();
    try {
      return emojiData.firstWhere((emoji) => emoji.iconName == iconName);
    } catch (e) {
      return null;
    }
  }

  static Image? emojiImage(String named) {
        if (cacheEmojiImage[named] != null) { 
            return cacheEmojiImage[named];
        } else {
            try {
              // 使用原图尺寸，让容器来控制显示大小
              final imageObject = Image.asset(
                'assets/emoji_images/$named',
                // 不设置固定尺寸，使用原图尺寸
                fit: BoxFit.contain, // 保持原图比例
                errorBuilder: (context, error, stackTrace) {
                  print('❌ 加载自定义表情失败: $named, 错误: $error');
                  // 错误时返回占位图，但尺寸由外部容器控制
                  return Icon(
                    Icons.broken_image,
                    color: Colors.grey[400],
                  );
                },
              );
              print('✅ 使用原图尺寸加载表情: $named');
              return imageObject;
            } catch (e) {
              print('❌ 加载表情图片异常: $named, 错误: $e');
              return null;
            }
        }
    }

     // 通过索引获取自定义表情资源名称
    static Future<String?> emojiImageNameWithIndex(int index) async {
        final emojiIconNames = await getEmojiIconNames();
        if (index >= 0 && index < emojiIconNames.length) {
            return emojiIconNames[index];
        } else {
            return null;
        }
    }

    static Future<int?> emojiIndexWithEmojiName(String name) async {
        final emojiCnNames = await getEmojiCnNames();
        if (emojiCnNames.contains(name)) {
            return emojiCnNames.indexOf(name);
        } else {
            return null;
        }
    }

    // 通过自定义表情名称 获取对应的资源名称
    static Future<String?> emojiImageNameWithEmojiName(String name) async  {  
        final emojiCnNames = await getEmojiCnNames();
        if (emojiCnNames.contains(name)) {  
            return emojiImageNameWithIndex(emojiCnNames.indexOf(name));
        } else {
            return null;
        }
    }

    static Future<bool> isEmoji(String name) async {    
        final emojiCnNames = await getEmojiCnNames();
        if (emojiCnNames.contains(name)) {
            return true;
        } else {
            return false;
        }
    }

    static Future<int> emojiCount() async {
        final emojiIconNames = await getEmojiIconNames();
        return emojiIconNames.length;
    } 

  /// 获取系统表情的实际表情字符
  static Future<List<String>> getSystemEmojiCharacters() async {
    final systemEmojis = await getSystemEmojis();
    return systemEmojis.map((unicodeCode) => _convertUnicodeToEmoji(unicodeCode)).toList();
  }

  /// 分类获取表情数据
  static Future<Map<String, List<EmojiData>>> getCategorizedEmojiData() async {
    final allEmojis = await getCombinedEmojiData();
    
    // 简单的分类逻辑，可以根据需要扩展
    final Map<String, List<EmojiData>> categories = {
      '表情': [],
      '人物': [],
      '动物': [],
      '食物': [],
      '物品': [],
      '其他': [],
    };
    
    for (final emoji in allEmojis) {
      if (emoji.cnName != null) {
        final cnName = emoji.cnName!;
        
        // 根据中文名称进行简单分类
        if (_isEmotionEmoji(cnName)) {
          categories['表情']!.add(emoji);
        } else if (_isPeopleEmoji(cnName)) {
          categories['人物']!.add(emoji);
        } else if (_isAnimalEmoji(cnName)) {
          categories['动物']!.add(emoji);
        } else if (_isFoodEmoji(cnName)) {
          categories['食物']!.add(emoji);
        } else if (_isObjectEmoji(cnName)) {
          categories['物品']!.add(emoji);
        } else {
          categories['其他']!.add(emoji);
        }
      } else {
        categories['其他']!.add(emoji);
      }
    }
    
    return categories;
  }

  /// 清理缓存
  static void clearCache() {
    _systemEmojis = null;
    _emojiCnNames = null;
    _emojiIconNames = null;
    _combinedEmojiData = null;
  }

  /// 解析json文件的数组内容 (json文件本身是数组)
  static List<String> _parsePlistArray(String plistContent) {
    try {
      List<dynamic> jsonList = jsonDecode(plistContent);  
      return jsonList.map((item) => item.toString()).toList();
    } catch (e) {
      print('❌ 解析plist文件失败: $e');
      return [];
    }
  }

  /// 将Unicode编码转换为表情字符
  static String _convertUnicodeToEmoji(String unicodeCode) {
    try {
      // 处理类似 "0x1f600" 的Unicode编码
      if (unicodeCode.startsWith('0x')) {
        final codeUnit = int.parse(unicodeCode.substring(2), radix: 16);
        return String.fromCharCode(codeUnit);
      }
      
      // 处理组合表情，如 "👩‍🔧"、"💪🏻" 等
      if (unicodeCode.contains('‍') || unicodeCode.contains('🏻') || unicodeCode.contains('🏼') || 
          unicodeCode.contains('🏽') || unicodeCode.contains('🏾') || unicodeCode.contains('🏿')) {
        return unicodeCode; // 直接返回，因为已经是表情字符
      }
      
      // 其他情况直接返回
      return unicodeCode;
    } catch (e) {
      print('❌ 转换Unicode编码失败: $unicodeCode, 错误: $e');
      return unicodeCode; // 转换失败时返回原始字符串
    }
  }

  /// 判断是否为表情类
  static bool _isEmotionEmoji(String cnName) {
    final emotionKeywords = ['微笑', '撇嘴', '色', '发呆', '得意', '流泪', '害羞', '闭嘴', '睡', '大哭', '尴尬', '发怒', '调皮', '呲牙', '惊讶', '难过', '酷', '冷汗', '抓狂', '偷笑', '愉快', '白眼', '傲慢', '困', '惊恐', '流汗', '憨笑', '悠闲', '奋斗', '咒骂', '疑问', '嘘', '晕', '衰', '坏笑', '哈欠', '鄙视', '委屈', '快哭了', '阴险', '亲亲', '吓', '可怜'];
    return emotionKeywords.any((keyword) => cnName.contains(keyword));
  }

  /// 判断是否为人物类
  static bool _isPeopleEmoji(String cnName) {
    final peopleKeywords = ['握手', '胜利', '抱拳', '勾引', '拳头', '差劲', '爱你', 'OK', '强', '弱', '拥抱', '再见', '擦汗', '抠鼻', '鼓掌'];
    return peopleKeywords.any((keyword) => cnName.contains(keyword));
  }

  /// 判断是否为动物类
  static bool _isAnimalEmoji(String cnName) {
    final animalKeywords = ['猪头', '熊猫', '青蛙', '瓢虫'];
    return animalKeywords.any((keyword) => cnName.contains(keyword));
  }

  /// 判断是否为食物类
  static bool _isFoodEmoji(String cnName) {
    final foodKeywords = ['西瓜', '啤酒', '咖啡', '饭', '蛋糕', '香蕉', '棒棒糖', '奶瓶', '吃面'];
    return foodKeywords.any((keyword) => cnName.contains(keyword));
  }

  /// 判断是否为物品类
  static bool _isObjectEmoji(String cnName) {
    final objectKeywords = ['菜刀', '篮球', '乒乓', '玫瑰', '凋谢', '嘴唇', '爱心', '心碎', '闪电', '炸弹', '刀', '足球', '便便', '月亮', '太阳', '礼物', '双喜', '鞭炮', '灯笼', '话筒', '庆祝', '飞机', '汽车', '高铁', '枪', '气球', '邮件', '灯泡', '雨伞', '象棋', '麻将', '钱', '闹钟', '药丸', '多云', '下雨', '纸巾', '风车', '沙发'];
    return objectKeywords.any((keyword) => cnName.contains(keyword));
  }

   //  预加载 生成图片对象缓存   本地图片获取方式
  static Future<void> preloadEmojiResource() async {
    var emojiImageDict = <String, Image>{};  
    final emojiImageAarray =  await getEmojiIconNames();  
    for (var emojiImage in emojiImageAarray) {
      try {
        // 使用原图尺寸进行预加载
        final imageObject = Image.asset(
          'assets/emoji_images/$emojiImage',
          fit: BoxFit.contain, // 保持原图比例
          width: 33,
          height: 33,
          errorBuilder: (context, error, stackTrace) {
            print('❌ 预加载表情失败: $emojiImage, 错误: $error');
            // 错误时返回占位图
            return Icon(
              Icons.broken_image,
              color: Colors.grey[400],
            );
          },
        );
        print('✅ 预加载表情（原图尺寸）: $emojiImage');
        emojiImageDict[emojiImage] = imageObject;
      } catch (e) {
        print('❌ 预加载表情异常: $emojiImage, 错误: $e');
      }
    }
    cacheEmojiImage = emojiImageDict;
  }


  // 提前计算文本宽高
  static Future<Size> calculateTextSize(String text) async {
    final textPainter = TextPainter(text: TextSpan(text: text), textDirection: TextDirection.ltr);
    textPainter.layout();
    return textPainter.size;
  }

/// 解析文本 返回表情token列表
  static Future<List<InputTextToken>> parseEmojiContent(String content) async {  
    final emojiRegexStr = r"\[.+?\]";
    final emojiRegex = RegExp(emojiRegexStr, caseSensitive: false);
    
    if (!emojiRegex.hasMatch(content)) {
      // 没有表情，返回纯文本token
      final token = InputTextToken();
      token.text = content;
      token.type = InputTokenType.text;
      token.textRange = TextRange(start: 0, end: content.length);
      return [token];
    }
    
    var textTokens = <InputTextToken>[];
    var lastEnd = 0;
    
    for (final match in emojiRegex.allMatches(content)) {
      // 添加表情前的文本
      if (match.start > lastEnd) {
        final token = InputTextToken();
        token.text = content.substring(lastEnd, match.start);
        token.type = InputTokenType.text;
        token.textRange = TextRange(start: lastEnd, end: match.start);
        textTokens.add(token);
      }
      
      final subStr = content.substring(match.start, match.end);
      final imageName = await emojiImageNameWithEmojiName(subStr);
      if (imageName != null) {
        final token = InputTextToken();
        token.text = subStr;
        token.imageName = imageName;
        token.type = InputTokenType.emoji;
        textTokens.add(token);
      } else {    
        final token = InputTextToken();
        token.text = subStr;
        token.type = InputTokenType.text;
        token.textRange = TextRange(start: 0, end: subStr.length);
        textTokens.add(token);
      }
      lastEnd =  match.end;
    }
    
    // 添加最后剩余的文本
    if (lastEnd < content.length) {
      final token = InputTextToken();
      token.text = content.substring(lastEnd);
      token.type = InputTokenType.text;
      textTokens.add(token);
    }
    
    return textTokens;
  }

}

/// 表情数据模型
class EmojiData {
  final int index;
  final String? unicodeCode;
  final String? cnName;
  final String? iconName;
  final String? emoji;

  EmojiData({
    required this.index,
    this.unicodeCode,
    this.cnName,
    this.iconName,
    this.emoji,
  });

  @override
  String toString() {
    return 'EmojiData(index: $index, unicodeCode: $unicodeCode, cnName: $cnName, iconName: $iconName, emoji: $emoji)';
  }

  /// 获取图标资源路径
  String? get iconPath {
    if (iconName == null) return null;
    return 'lib/src/features/common/utils/emoji_chat/Resource/image/$iconName';
  }

  /// 判断是否有有效数据
  bool get isValid {
    return unicodeCode != null || cnName != null || iconName != null;
  }

  /// 获取显示文本（优先级：emoji > cnName > unicodeCode）
  String get displayText {
    if (emoji != null && emoji!.isNotEmpty) return emoji!;
    if (cnName != null && cnName!.isNotEmpty) return cnName!;
    if (unicodeCode != null && unicodeCode!.isNotEmpty) return unicodeCode!;
    return 'Unknown';
  }


} 

enum InputTokenType {
    text,
    emoji
}

class InputTextToken {
    String text = "";
    String? imageName;
    InputTokenType type = InputTokenType.text;
    TextRange? textRange;
  }