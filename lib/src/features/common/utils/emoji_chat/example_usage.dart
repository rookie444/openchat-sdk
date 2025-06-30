import 'package:flutter/material.dart';
import 'emoji_utils.dart';

/// 表情工具使用示例
class EmojiUtilsExample extends StatefulWidget {
  const EmojiUtilsExample({super.key});

  @override
  State<EmojiUtilsExample> createState() => _EmojiUtilsExampleState();
}

class _EmojiUtilsExampleState extends State<EmojiUtilsExample> {
  List<EmojiData> _emojiData = [];
  Map<String, List<EmojiData>> _categorizedEmojis = {};
  bool _isLoading = true;
  String _searchResult = '';

  @override
  void initState() {
    super.initState();
    _loadEmojiData();
  }

  /// 加载表情数据
  Future<void> _loadEmojiData() async {
    try {
      // 获取完整的表情数据
      final allEmojis = await EmojiUtils.getCombinedEmojiData();
      
      // 获取分类的表情数据
      final categorized = await EmojiUtils.getCategorizedEmojiData();
      
      setState(() {
        _emojiData = allEmojis;
        _categorizedEmojis = categorized;
        _isLoading = false;
      });
      
      print('✅ 成功加载 ${allEmojis.length} 个表情');
      print('📂 分类数量: ${categorized.keys.length}');
      
      // 打印每个分类的数量
      categorized.forEach((category, emojis) {
        print('   - $category: ${emojis.length} 个');
      });
      
    } catch (e) {
      print('❌ 加载表情数据失败: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  /// 搜索表情示例
  Future<void> _searchEmojiExample() async {
    // 按中文名称搜索
    final foundEmoji = await EmojiUtils.findEmojiByChineseName('[微笑]');
    if (foundEmoji != null) {
      setState(() {
        _searchResult = '找到表情: ${foundEmoji.displayText} (${foundEmoji.cnName})';
      });
    } else {
      setState(() {
        _searchResult = '未找到对应表情';
      });
    }
  }

  /// 获取系统表情字符示例
  Future<void> _getSystemEmojiExample() async {
    final systemEmojis = await EmojiUtils.getSystemEmojiCharacters();
    print('🎭 系统表情字符示例 (前10个): ${systemEmojis.take(10).join(' ')}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('表情工具使用示例'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 操作按钮
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: _searchEmojiExample,
                        child: const Text('搜索[微笑]'),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: _getSystemEmojiExample,
                        child: const Text('获取系统表情'),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {
                          EmojiUtils.clearCache();
                          _loadEmojiData();
                        },
                        child: const Text('重新加载'),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // 搜索结果
                  if (_searchResult.isNotEmpty)
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        _searchResult,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  
                  const SizedBox(height: 16),
                  
                  // 统计信息
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '📊 统计信息',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text('总表情数量: ${_emojiData.length}'),
                        const SizedBox(height: 4),
                        ..._categorizedEmojis.entries.map((entry) =>
                            Text('${entry.key}: ${entry.value.length} 个')),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // 表情分类展示
                  Expanded(
                    child: DefaultTabController(
                      length: _categorizedEmojis.keys.length,
                      child: Column(
                        children: [
                          TabBar(
                            isScrollable: true,
                            tabs: _categorizedEmojis.keys
                                .map((category) => Tab(text: category))
                                .toList(),
                          ),
                          Expanded(
                            child: TabBarView(
                              children: _categorizedEmojis.values
                                  .map((emojis) => _buildEmojiGrid(emojis))
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  /// 构建表情网格
  Widget _buildEmojiGrid(List<EmojiData> emojis) {
    if (emojis.isEmpty) {
      return const Center(
        child: Text('该分类暂无表情'),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 6,
        childAspectRatio: 1.0,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: emojis.length,
      itemBuilder: (context, index) {
        final emoji = emojis[index];
        return GestureDetector(
          onTap: () {
            _showEmojiDetails(emoji);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  emoji.emoji ?? emoji.cnName ?? '?',
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                if (emoji.cnName != null)
                  Text(
                    emoji.cnName!,
                    style: const TextStyle(fontSize: 8),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  /// 显示表情详情
  void _showEmojiDetails(EmojiData emoji) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('表情详情 #${emoji.index}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (emoji.emoji != null)
              Text('表情: ${emoji.emoji}', style: const TextStyle(fontSize: 24)),
            if (emoji.cnName != null)
              Text('中文名: ${emoji.cnName}'),
            if (emoji.unicodeCode != null)
              Text('Unicode: ${emoji.unicodeCode}'),
            if (emoji.iconName != null)
              Text('图标文件: ${emoji.iconName}'),
            if (emoji.iconPath != null)
              Text('图标路径: ${emoji.iconPath}'),
            Text('显示文本: ${emoji.displayText}'),
            Text('有效性: ${emoji.isValid ? '有效' : '无效'}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('关闭'),
          ),
        ],
      ),
    );
  }
} 