# Progress Image Widget

一个可以监听下载进度的图片组件，支持加密和非加密两种模式。

## 功能特性

- ✅ **进度监听**: 实时监听图片下载和解密进度
- ✅ **加密支持**: 支持加密图片的下载和解密（可选）
- ✅ **状态管理**: 完整的加载状态管理（空闲、下载中、解密中、成功、失败）
- ✅ **错误处理**: 完善的错误处理和重试机制
- ✅ **缓存机制**: 自动缓存已下载的图片
- ✅ **自定义UI**: 支持自定义占位符和错误界面
- ✅ **回调支持**: 提供进度、错误、成功等回调

## 使用方法

### 基础用法

```dart
ProgressImageWidget(
  imageUrl: 'https://example.com/image.jpg',
  width: 200,
  height: 150,
  fit: BoxFit.cover,
)
```

### 带进度监听

```dart
ProgressImageWidget(
  imageUrl: 'https://example.com/image.jpg',
  width: 200,
  height: 150,
  onProgress: (progress) {
    print('下载进度: ${(progress * 100).toInt()}%');
  },
  onError: (error) {
    print('下载失败: $error');
  },
  onSuccess: () {
    print('下载成功');
  },
)
```

### 加密图片

```dart
ProgressImageWidget(
  imageUrl: 'https://example.com/encrypted_image.jpg',
  encryptionKey: 'your_encryption_key',
  width: 200,
  height: 150,
  onProgress: (progress) {
    // progress < 0.7: 下载中
    // progress >= 0.7: 解密中
    if (progress < 0.7) {
      print('下载中: ${(progress * 100).toInt()}%');
    } else {
      print('解密中: ${((progress - 0.7) / 0.3 * 100).toInt()}%');
    }
  },
)
```

### 自定义UI

```dart
ProgressImageWidget(
  imageUrl: 'https://example.com/image.jpg',
  placeholder: Container(
    color: Colors.grey[200],
    child: Icon(Icons.image),
  ),
  errorWidget: Container(
    color: Colors.red[100],
    child: Column(
      children: [
        Icon(Icons.error),
        Text('加载失败'),
      ],
    ),
  ),
)
```

## 参数说明

| 参数 | 类型 | 必需 | 默认值 | 说明 |
|------|------|------|--------|------|
| `imageUrl` | `String` | ✅ | - | 图片URL |
| `encryptionKey` | `String?` | ❌ | `null` | 加密密钥，为null时不解密 |
| `width` | `double?` | ❌ | `null` | 图片宽度 |
| `height` | `double?` | ❌ | `null` | 图片高度 |
| `fit` | `BoxFit` | ❌ | `BoxFit.cover` | 图片适配方式 |
| `placeholder` | `Widget?` | ❌ | `null` | 自定义占位符 |
| `errorWidget` | `Widget?` | ❌ | `null` | 自定义错误界面 |
| `onProgress` | `Function(double)?` | ❌ | `null` | 进度回调 |
| `onError` | `Function(String)?` | ❌ | `null` | 错误回调 |
| `onSuccess` | `Function()?` | ❌ | `null` | 成功回调 |
| `autoLoad` | `bool` | ❌ | `true` | 是否自动加载 |

## 状态说明

### ImageLoadState 枚举

- `idle`: 空闲状态，等待开始下载
- `loading`: 下载中
- `decrypting`: 解密中（仅加密图片）
- `success`: 加载成功
- `error`: 加载失败

### 进度值说明

- **普通图片**: `0.0 - 1.0` 表示下载进度
- **加密图片**: 
  - `0.0 - 0.7`: 下载进度
  - `0.7 - 1.0`: 解密进度

## 演示页面

运行应用后，在聊天页面的底部功能区点击"图片组件演示"按钮，可以查看完整的演示效果。

演示页面包含：
- 6张测试图片（其中每3张有1张是加密的）
- 实时进度显示
- 状态统计
- 详细的加载日志
- 批量刷新功能

## 技术实现

### 核心组件

1. **ProgressImageWidget**: 主要的图片组件
2. **ProgressImageNotifier**: 状态管理器
3. **ProgressImageState**: 状态数据类
4. **progressImageProvider**: Riverpod Provider

### 加密方案

目前实现了简单的XOR加密作为示例，可以根据需要替换为更安全的加密算法（如AES）。

```dart
// 简单XOR加密示例
Future<Uint8List> _decryptData(Uint8List encryptedData) async {
  if (encryptionKey != null) {
    final keyBytes = utf8.encode(encryptionKey!);
    final decrypted = Uint8List(encryptedData.length);
    
    for (int i = 0; i < encryptedData.length; i++) {
      decrypted[i] = encryptedData[i] ^ keyBytes[i % keyBytes.length];
    }
    
    return decrypted;
  }
  return encryptedData;
}
```

### 缓存机制

- 使用MD5哈希作为缓存文件名
- 缓存到系统临时目录
- 支持缓存清理和管理

## 注意事项

1. **网络权限**: 确保应用有网络访问权限
2. **存储权限**: 缓存功能需要存储权限
3. **内存管理**: 大图片可能占用较多内存，建议适当控制图片尺寸
4. **错误处理**: 建议在生产环境中添加更详细的错误处理逻辑

## 依赖包

```yaml
dependencies:
  flutter_riverpod: ^2.4.9
  cached_network_image: ^3.3.0
  http: ^1.1.0
  path_provider: ^2.1.1
  crypto: ^3.0.3
``` 