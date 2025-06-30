/// 演示用图片URL管理类
/// 提供稳定可靠的图片资源用于聊天演示
class DemoImageUrls {
  // 私有构造函数，防止实例化
  DemoImageUrls._();

  /// 头像图片URLs - 使用稳定的图片服务
  static const List<String> avatarUrls = [
    'https://picsum.photos/200/200?random=1', // Lorem Picsum - 稳定的图片服务
    'https://picsum.photos/200/200?random=2',
    'https://picsum.photos/200/200?random=3',
    'https://picsum.photos/200/200?random=4',
    'https://picsum.photos/200/200?random=5',
  ];

  /// 聊天图片URLs - 用于图片消息
  static const List<String> chatImageUrls = [
    'https://picsum.photos/400/300?random=10',
    'https://picsum.photos/300/400?random=11',
    'https://picsum.photos/500/300?random=12',
    'https://picsum.photos/400/400?random=13',
    'https://picsum.photos/600/400?random=14',
  ];

  /// 视频缩略图URLs
  static const List<String> videoThumbnailUrls = [
    'https://picsum.photos/400/300?random=20',
    'https://picsum.photos/500/300?random=21',
    'https://picsum.photos/400/400?random=22',
  ];

  /// 获取随机头像URL
  static String getRandomAvatarUrl() {
    final index = DateTime.now().millisecondsSinceEpoch % avatarUrls.length;
    return avatarUrls[index];
  }

  /// 获取随机聊天图片URL
  static String getRandomChatImageUrl() {
    final index = DateTime.now().millisecondsSinceEpoch % chatImageUrls.length;
    return chatImageUrls[index];
  }

  /// 获取随机视频缩略图URL
  static String getRandomVideoThumbnailUrl() {
    final index =
        DateTime.now().millisecondsSinceEpoch % videoThumbnailUrls.length;
    return videoThumbnailUrls[index];
  }

  /// 获取指定索引的头像URL（用于固定的演示数据）
  static String getAvatarUrl(int index) {
    if (index < 0 || index >= avatarUrls.length) {
      return avatarUrls[0]; // 返回默认头像
    }
    return avatarUrls[index];
  }

  /// 获取指定索引的聊天图片URL
  static String getChatImageUrl(int index) {
    if (index < 0 || index >= chatImageUrls.length) {
      return chatImageUrls[0]; // 返回默认图片
    }
    return chatImageUrls[index];
  }

  /// 获取指定索引的视频缩略图URL
  static String getVideoThumbnailUrl(int index) {
    if (index < 0 || index >= videoThumbnailUrls.length) {
      return videoThumbnailUrls[0]; // 返回默认缩略图
    }
    return videoThumbnailUrls[index];
  }

  /// 备用图片URLs（如果主要服务不可用）
  static const List<String> fallbackImageUrls = [
    'https://via.placeholder.com/200x200/4CAF50/FFFFFF?text=Avatar',
    'https://via.placeholder.com/400x300/2196F3/FFFFFF?text=Image',
    'https://via.placeholder.com/400x300/FF9800/FFFFFF?text=Video',
  ];

  /// 获取备用头像URL
  static String getFallbackAvatarUrl() {
    return fallbackImageUrls[0];
  }

  /// 获取备用图片URL
  static String getFallbackImageUrl() {
    return fallbackImageUrls[1];
  }

  /// 获取备用视频缩略图URL
  static String getFallbackVideoThumbnailUrl() {
    return fallbackImageUrls[2];
  }
}
