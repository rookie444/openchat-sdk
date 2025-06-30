import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:openchat_client/src/rust/api/model/ffi_emotion_model.dart';
import '../../../common/utils/emoji_chat/emoji_utils.dart';
import 'package:openchat_client/src/rust/api/download_api.dart'
    as rust_download;

/// 表情选择器弹窗组件
class ChatListEmojiPopviewWidget extends StatefulWidget {
  final Function(int pageIndex, int index, String emoji) onEmojiSelected;
  final VoidCallback? onDelete;
  final VoidCallback? onClose;
  final List<FfiEmoticonBase> emoticonInfoArray;
  final bool isShowDice;
  final bool isShowAnimatedGame;
  final Function(FfiEmoticonBase emoticonInfo) onMediaItemTap;

  const ChatListEmojiPopviewWidget({
    super.key,
    required this.onEmojiSelected,
    this.onDelete,
    this.onClose,
    required this.emoticonInfoArray,
    required this.isShowDice,
    required this.isShowAnimatedGame,
    required this.onMediaItemTap,
  });

  @override
  State<ChatListEmojiPopviewWidget> createState() =>
      _ChatListEmojiPopviewWidgetState();
}

class _ChatListEmojiPopviewWidgetState extends State<ChatListEmojiPopviewWidget>
    with TickerProviderStateMixin {
  late PageController _pageController;
  late TabController _tabController;
  int _currentTabIndex = 0;

  //unicode 表情 第一页显示
  List<String> _unicodeEmojis = [];

  // 自定义表情图片相关状态
  List<String> _customEmojiImageNames = [];
  List<EmojiData> _recentCustomEmojis = []; // 最近使用的自定义表情
  bool _isLoadingCustomEmojis = true;

  // 表情分类数据
  List<EmojiCategory> _emojiCategories = [];

  @override
  void initState() {
    super.initState();
    _initializeEmojiCategories();
    _pageController = PageController();
    _tabController = TabController(
      length: _emojiCategories.length,
      vsync: this,
    );

    _tabController.addListener(() {
      // if (_tabController.indexIsChanging) {
      //   _pageController.animateToPage(
      //     _tabController.index,
      //     duration: const Duration(milliseconds: 300),
      //     curve: Curves.easeInOut,
      //   );
      // }
    });

    // 异步加载自定义表情
    _loadCustomEmojis();
    _loadUnicodeEmojis();
  }

  /// 异步加载unicode表情
  Future<void> _loadUnicodeEmojis() async {
    final unicodeEmojis = await EmojiUtils.getSystemEmojis();
    setState(() {
      _unicodeEmojis = unicodeEmojis;
    });
  }

  /// 初始化表情分类数据
  void _initializeEmojiCategories() {
    _emojiCategories = [
      EmojiCategory(
        name: '最近使用',
        icon: '🕒',
        emojis: [
          '😀',
          '😃',
          '😄',
          '😁',
          '😆',
          '😅',
          '😂',
          '🤣',
          '😊',
          '😇',
          '🙂',
          '🙃',
          '😉',
          '😌',
          '😍',
          '🥰',
        ],
      ),
      // 添加自定义表情分类
      EmojiCategory(
        name: '自定义表情',
        icon: '🖼️',
        emojis: [], // 自定义表情不使用emoji字符
      ),
      EmojiCategory(name: '全部', icon: '🖼️', emojis: []),
    ];
  }

  /// 异步加载自定义表情图片
  Future<void> _loadCustomEmojis() async {
    try {
      print('🖼️ 开始加载自定义表情...');

      // 获取自定义表情图片名列表
      final imageNames = await EmojiUtils.getEmojiIconNames();
      print('🖼️ 获取到${imageNames.length}个自定义表情图片');

      // 获取最近使用的自定义表情（这里简化处理，取前8个作为示例）
      final recentCount = imageNames.length > 8 ? 8 : imageNames.length;
      final recentImageNames = imageNames.take(recentCount).toList();

      // 构建最近使用的自定义表情数据
      final List<EmojiData> recentEmojis = [];
      for (int i = 0; i < recentImageNames.length; i++) {
        final imageName = recentImageNames[i];
        final emojiData = EmojiData(
          index: i,
          unicodeCode: null,
          cnName: null,
          iconName: imageName,
          emoji: null,
        );
        recentEmojis.add(emojiData);
      }

      setState(() {
        _customEmojiImageNames = imageNames;
        _recentCustomEmojis = recentEmojis;
        _isLoadingCustomEmojis = false;
      });

      print('🖼️ 自定义表情加载完成');
    } catch (e) {
      print('❌ 加载自定义表情失败: $e');
      setState(() {
        _isLoadingCustomEmojis = false;
      });
    }
  }

  /// 判断当前Tab是否为自定义表情
  bool get _isCustomEmojiTab => _currentTabIndex == 1; // 自定义表情是第2个Tab

  @override
  void dispose() {
    _pageController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Column(
        children: [
          // 表情网格区域
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentTabIndex = index;
                });
                _tabController.animateTo(index);
              },
              itemCount: _emojiCategories.length,
              itemBuilder: (context, pageIndex) {
                // 自定义表情页面
                if (pageIndex == 1) {
                  return _buildCustomEmojiGrid();
                } else if (pageIndex == 2) {
                  // 第三页 - 媒体图片选择器
                  return _buildMediaGrid();
                } else {
                  // 最近使用页面 - 显示unicode表情
                  return _buildEmojiGrid(_unicodeEmojis);
                }
              },
            ),
          ),

          // 底部控制栏
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(color: Colors.grey[200]!, width: 0.5),
              ),
            ),
            child: Row(
              children: [
                // 左侧分栏切换按钮
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: List.generate(_emojiCategories.length, (index) {
                        final isSelected = index == _currentTabIndex;
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentTabIndex = index;
                            });
                            _pageController.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            decoration: BoxDecoration(
                              color:
                                  isSelected
                                      ? Colors.blue[50]
                                      : Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                _emojiCategories[index].icon,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),

                // 右侧删除按钮
                Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: widget.onDelete,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.backspace_outlined,
                          color: Colors.grey[600],
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 构建自定义表情网格
  Widget _buildCustomEmojiGrid() {
    print('🖼️ _buildCustomEmojiGrid 开始构建');
    print('   - _isLoadingCustomEmojis: $_isLoadingCustomEmojis');
    print(
      '   - _customEmojiImageNames.length: ${_customEmojiImageNames.length}',
    );
    print('   - _recentCustomEmojis.length: ${_recentCustomEmojis.length}');

    if (_isLoadingCustomEmojis) {
      print('🖼️ _buildCustomEmojiGrid 正在加载');
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('正在加载自定义表情...', style: TextStyle(color: Colors.grey)),
          ],
        ),
      );
    }

    if (_customEmojiImageNames.isEmpty) {
      print('🖼️ 显示空状态');
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.sentiment_dissatisfied, size: 48, color: Colors.grey),
            SizedBox(height: 16),
            Text('暂无自定义表情', style: TextStyle(color: Colors.grey)),
          ],
        ),
      );
    }

    // 创建自定义表情分组

    final groups = _createCustomEmojiGroups();
    print('🖼️ 创建了${groups.length}个表情分组');

    if (groups.isEmpty) {
      print('⚠️ 表情分组为空');
      return const Center(
        child: Text('表情分组数据异常', style: TextStyle(color: Colors.grey)),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: groups.length,
      itemBuilder: (context, groupIndex) {
        final group = groups[groupIndex];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 分组标题
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
              child: Text(
                group.title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
            ),
            // 自定义表情网格
            _buildCustomEmojiGroupGrid(group.imageNames),
            const SizedBox(height: 1), // 分组间距
          ],
        );
      },
    );
  }

  /// 创建自定义表情分组数据
  List<CustomEmojiGroup> _createCustomEmojiGroups() {
    print('🖼️ _createCustomEmojiGroups 开始创建');
    print('   - _recentCustomEmojis.length: ${_recentCustomEmojis.length}');
    print(
      '   - _customEmojiImageNames.length: ${_customEmojiImageNames.length}',
    );

    final groups = <CustomEmojiGroup>[];

    try {
      // 最近使用分组（如果有最近使用的自定义表情）
      if (_recentCustomEmojis.isNotEmpty) {
        final recentImageNames =
            _recentCustomEmojis
                .map((emoji) => emoji.iconName)
                .where((name) => name != null && name.isNotEmpty)
                .cast<String>()
                .toList();

        if (recentImageNames.isNotEmpty) {
          print('🖼️ 添加最近使用分组: ${recentImageNames.length}个表情');
          groups.add(
            CustomEmojiGroup(title: '最近使用', imageNames: recentImageNames),
          );
        }
      }

      // 全部自定义表情分组
      if (_customEmojiImageNames.isNotEmpty) {
        print('🖼️ 添加全部表情分组: ${_customEmojiImageNames.length}个表情');
        groups.add(
          CustomEmojiGroup(title: '全部', imageNames: _customEmojiImageNames),
        );
      }

      print('🖼️ _createCustomEmojiGroups 完成，共${groups.length}个分组');
      return groups;
    } catch (e, stackTrace) {
      print('❌ _createCustomEmojiGroups 异常: $e');
      print('❌ StackTrace: $stackTrace');
      return [];
    }
  }

  /// 构建自定义表情组网格
  Widget _buildCustomEmojiGroupGrid(List<String> imageNames) {
    return GridView.builder(
      shrinkWrap: true, // 重要：让GridView适应内容
      physics: const NeverScrollableScrollPhysics(), // 禁用GridView自身滚动
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 6, // 每行6个表情
        childAspectRatio: 1.4,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
      ),
      itemCount: imageNames.length,
      itemBuilder: (context, index) {
        final imageName = imageNames[index];
        return _buildCustomEmojiItem(index, imageName);
      },
    );
  }

  /// 构建单个自定义表情项
  Widget _buildCustomEmojiItem(int selecetIndex, String imageName) {
    return GestureDetector(
      onTap: () => _onCustomEmojiTap(selecetIndex),
      child: Container(
        width: 33,
        height: 33,
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7.5),
          child: _buildEmojiImage(imageName),
        ),
      ),
    );
  }

  /// 构建表情图片Widget
  Widget _buildEmojiImage(String imageName) {
    try {
      // 尝试使用 EmojiUtils.emojiImage 方法
      final emojiImage = EmojiUtils.emojiImage(imageName);
      if (emojiImage != null) {
        return SizedBox(
          width: 33,
          height: 33,
          child: Center(child: emojiImage),
        );
      }
    } catch (e) {
      print('⚠️ 使用 EmojiUtils.emojiImage 失败: $e');
    }

    // 降级方案：直接使用 Image.asset
    return SizedBox(
      width: 33,
      height: 33,
      child: Image.asset(
        'assets/emoji_images/$imageName',
        fit: BoxFit.fill,
        width: 33,
        height: 33,
        errorBuilder: (context, error, stackTrace) {
          print('❌ 加载自定义表情图片失败: $imageName, 错误: $error');
          return Container(
            color: Colors.grey[100],
            child: Icon(Icons.broken_image, color: Colors.grey[400], size: 16),
          );
        },
      ),
    );
  }

  /// 处理自定义表情点击事件
  void _onCustomEmojiTap(int selecetIndex) async {
    print('🖼️ 点击自定义表情: $selecetIndex');

    // 将图片表情以特殊格式插入到输入框
    // 格式: [em:图片名] 例如: [em:smile.png]
    final emojiCode = '[em:$selecetIndex]';

    final emojiCnNames = await EmojiUtils.getEmojiCnNames();
    print('🖼️ emojiCnNames: $emojiCnNames');
    widget.onEmojiSelected(
      1,
      selecetIndex,
      emojiCnNames[selecetIndex],
    ); // 固定使用页面索引1

    // // 更新最近使用（简化处理，将点击的表情放到最前面）
    // _updateRecentCustomEmoji(selecetIndex.toString());
  }

  /// 更新最近使用的自定义表情
  void _updateRecentCustomEmoji(String imageName) {
    setState(() {
      // 移除已存在的相同表情
      _recentCustomEmojis.removeWhere((emoji) => emoji.iconName == imageName);

      // 添加到最前面
      _recentCustomEmojis.insert(
        0,
        EmojiData(
          index: _recentCustomEmojis.length,
          unicodeCode: null,
          cnName: null,
          iconName: imageName,
          emoji: null,
        ),
      );

      // 限制最近使用的数量（最多8个）
      if (_recentCustomEmojis.length > 8) {
        _recentCustomEmojis = _recentCustomEmojis.take(8).toList();
      }
    });

    print('🖼️ 更新最近使用自定义表情，当前数量: ${_recentCustomEmojis.length}');
  }

  Widget _buildEmojiGrid(List<String> emojis) {
    // 为每个分类创建分组数据
    final groups = _createEmojiGroups(emojis);

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: groups.length,
      itemBuilder: (context, groupIndex) {
        final group = groups[groupIndex];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 分组标题
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
              child: Text(
                group.title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
            ),
            // 表情网格
            _buildEmojiGroupGrid(group.emojis),
            const SizedBox(height: 16), // 分组间距
          ],
        );
      },
    );
  }

  /// 创建表情分组数据
  List<EmojiGroup> _createEmojiGroups(List<String> allEmojis) {
    if (_currentTabIndex == 0) {
      // 全部分类 - 分为常用和全部两组
      final recentEmojis = allEmojis.take(10).toList();
      return [
        EmojiGroup(title: '常用的表情', emojis: recentEmojis),
        EmojiGroup(title: '全部', emojis: allEmojis),
      ];
    } else if (_currentTabIndex == 1) {
      // 全部分类 - 分为常用和全部两组
      final recentEmojis = [
        '😀',
        '😃',
        '😄',
        '😁',
        '😆',
        '😅',
        '😂',
        '🤣',
        '😊',
        '😇',
        '🙂',
        '🙃',
        '😉',
        '😌',
        '😍',
        '🥰',
        '😘',
        '😗',
        '😙',
        '😚',
        '😋',
        '😛',
        '😝',
        '😜',
        '🤪',
        '🤨',
        '🧐',
        '🤓',
        '😎',
        '🤩',
        '🥳',
        '😏',
      ];
      return [
        EmojiGroup(title: '常用的emoji', emojis: recentEmojis),
        EmojiGroup(title: '全部', emojis: allEmojis),
      ];
    } else if (_currentTabIndex == 2) {
      // 动物分类 - 按动物类型分组
      final mammals = [
        '🐶',
        '🐱',
        '🐭',
        '🐹',
        '🐰',
        '🦊',
        '🐻',
        '🐼',
        '🐨',
        '🐯',
        '🦁',
        '🐮',
        '🐷',
        '🐽',
        '🐵',
        '🐒',
      ];
      final birds = [
        '🐔',
        '🐧',
        '🐦',
        '🐤',
        '🐣',
        '🐥',
        '🦆',
        '🦅',
        '🦉',
        '🦇',
      ];
      final others =
          allEmojis
              .where(
                (emoji) => !mammals.contains(emoji) && !birds.contains(emoji),
              )
              .toList();

      return [
        EmojiGroup(title: '哺乳动物', emojis: mammals),
        EmojiGroup(title: '鸟类', emojis: birds),
        EmojiGroup(title: '其他动物', emojis: others),
      ];
    } else if (_currentTabIndex == 4) {
      // 食物分类 - 按食物类型分组
      final fruits = [
        '🍎',
        '🍐',
        '🍊',
        '🍋',
        '🍌',
        '🍉',
        '🍇',
        '🍓',
        '🫐',
        '🍈',
        '🍒',
        '🍑',
        '🥭',
        '🍍',
        '🥥',
        '🥝',
      ];
      final vegetables = [
        '🍅',
        '🍆',
        '🥑',
        '🥦',
        '🥬',
        '🥒',
        '🌶️',
        '🫑',
        '🌽',
        '🥕',
        '🫒',
        '🧄',
        '🧅',
        '🥔',
        '🍠',
      ];
      final others =
          allEmojis
              .where(
                (emoji) =>
                    !fruits.contains(emoji) && !vegetables.contains(emoji),
              )
              .toList();

      return [
        EmojiGroup(title: '水果', emojis: fruits),
        EmojiGroup(title: '蔬菜', emojis: vegetables),
        EmojiGroup(title: '其他食物', emojis: others),
      ];
    } else {
      // 其他分类 - 按类别分组
      return [
        EmojiGroup(title: _getGroupTitle(_currentTabIndex), emojis: allEmojis),
      ];
    }
  }

  /// 获取分组标题
  String _getGroupTitle(int tabIndex) {
    switch (tabIndex) {
      case 3:
        return '动物和自然';
      case 4:
        return '食物和饮料';
      case 5:
        return '活动和运动';
      case 6:
        return '旅行和地点';
      case 7:
        return '物品和工具';
      case 8:
        return '符号和标志';
      default:
        return '表情';
    }
  }

  /// 构建表情组网格
  Widget _buildEmojiGroupGrid(List<String> emojis) {
    return GridView.builder(
      shrinkWrap: true, // 重要：让GridView适应内容
      physics: const NeverScrollableScrollPhysics(), // 禁用GridView自身滚动
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 6, // 每行6个表情
        childAspectRatio: 1.3,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
      ),
      itemCount: emojis.length,
      itemBuilder: (context, index) {
        final emoji = emojis[index];
        return GestureDetector(
          onTap:
              () => widget.onEmojiSelected(
                0, // 固定使用页面索引0，表示第一个分栏（最近使用）
                index,
                emoji.contains("0x")
                    ? String.fromCharCodes(<int>[int.parse(emoji)])
                    : emoji,
              ),
          child: Container(
            color: Colors.transparent,
            child: Center(
              child: Text(
                emoji.contains("0x")
                    ? String.fromCharCodes(<int>[int.parse(emoji)])
                    : emoji,
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
        );
      },
    );
  }

  /// 构建媒体图片网格
  Widget _buildMediaGrid() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        children: [
          const SizedBox(height: 12),
          // 媒体内容网格
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // 每行4个
                childAspectRatio: 1.0,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: widget.emoticonInfoArray.length,
              itemBuilder: (context, index) {
                return _buildMediaItem(widget.emoticonInfoArray[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  /// 获取媒体项数量
  int _getMediaItemCount() {
    // 返回一些示例媒体项
    return 12;
  }

  /// 构建单个媒体项
  Widget _buildMediaItem(FfiEmoticonBase emoticonInfo) {
    return GestureDetector(
      onTap: () => _onMediaItemTap(emoticonInfo),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          border: Border.all(color: Colors.grey[200]!, width: 0.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: _buildMediaContent(emoticonInfo),
        ),
      ),
    );
  }

  /// 构建媒体内容
  Widget _buildMediaContent(FfiEmoticonBase emoticonInfo) {
    //新增磁盘本地文件读取image.png
    if (emoticonInfo.emotionType == FfiEmotionInfoType.add ||
        emoticonInfo.emotionType == FfiEmotionInfoType.dice) {
      return Image.asset("assets/images/chat/${emoticonInfo.imgName}.png");
    } else if (emoticonInfo.emotionType == FfiEmotionInfoType.animatedGame) {
      // 处理相对路径，需要规范化为绝对路径
      return FutureBuilder<String>(
        future: _getAbsoluteImagePath(emoticonInfo.gameIconPath),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
              color: Colors.grey[100],
              child: const Center(
                child: SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
            );
          }

          if (snapshot.hasError || !snapshot.hasData) {
            return Container(
              color: Colors.grey[200],
              child: Icon(
                Icons.broken_image,
                color: Colors.grey[400],
                size: 20,
              ),
            );
          }

          final absolutePath = snapshot.data!;
          return Image.file(
            File(absolutePath),
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              print('加载游戏图标失败: $absolutePath, 错误: $error');
              return Container(
                color: Colors.grey[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.broken_image, color: Colors.grey[400], size: 16),
                    const SizedBox(height: 2),
                    Text(
                      '加载失败',
                      style: TextStyle(fontSize: 8, color: Colors.grey[500]),
                    ),
                  ],
                ),
              );
            },
          );
        },
      );
    } else {
      return CachedNetworkImage(
        imageUrl: emoticonInfo.emoticonUrl,
        key: Key(emoticonInfo.emoticonUrl),
        placeholder: (context, url) => const SizedBox.shrink(),
        errorWidget: (context, url, error) => const SizedBox.shrink(),
      );
    }
  }

  /// 获取图片文件的绝对路径
  Future<String> _getAbsoluteImagePath(String relativePath) async {
    try {
      // 使用Rust API规范化路径（处理iOS沙盒）
      final normalizedPath = await rust_download.normalizeFilePath(
        path: relativePath,
      );
      return normalizedPath;
    } catch (e) {
      print('路径规范化失败: $relativePath, 错误: $e');
      // 如果规范化失败，返回原路径
      return relativePath;
    }
  }

  /// 处理媒体项点击 把这个放外层 然后调用这个方法
  void _onMediaItemTap(FfiEmoticonBase emoticonInfo) {
    widget.onMediaItemTap(emoticonInfo);
  }
}

/// 表情分类数据模型
class EmojiCategory {
  final String name;
  final String icon;
  final List<String> emojis;

  EmojiCategory({required this.name, required this.icon, required this.emojis});
}

/// 表情分组数据模型
class EmojiGroup {
  final String title;
  final List<String> emojis;

  EmojiGroup({required this.title, required this.emojis});
}

/// 自定义表情分组数据模型
class CustomEmojiGroup {
  final String title;
  final List<String> imageNames;

  CustomEmojiGroup({required this.title, required this.imageNames});
}
