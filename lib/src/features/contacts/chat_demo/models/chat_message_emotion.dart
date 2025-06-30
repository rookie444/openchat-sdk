enum EmotionInfoType {
  normal, // 普通，默认
  add, // 添加按钮
  dice, // 筛子
  animatedGame, // 动画游戏
}

class EmoticonInfo {
  EmotionInfoType? type = EmotionInfoType.normal;
  String? imgName = ''; 
  int? gameId = 0;
  String? gameIconPath = '';
  String? emoticonUrl = '';
  int? emoticonId = 0; 
  double? width = 0;
  double? height = 0;

  //可选的构造方法，用于创建EmoticonInfo对象
  EmoticonInfo({
    this.type,
    this.imgName,
    this.gameId,
    this.gameIconPath,
    this.emoticonUrl,
    this.emoticonId,
    this.width,
    this.height,
  });

  EmoticonInfo.fromJson(Map<String, dynamic> json) {
    type = EmotionInfoType.values[json['type'] ?? 0];
    imgName = json['imgName'] ?? '';      
    gameId = json['gameId'] ?? 0;
    gameIconPath = json['gameIconPath'] ?? '';
    emoticonUrl = json['emoticonUrl'] ?? '';
    emoticonId = json['emoticonId'] ?? 0;
    width = (json['width'] ?? 0).toDouble();  
    height = (json['height'] ?? 0).toDouble();  
  }
}
