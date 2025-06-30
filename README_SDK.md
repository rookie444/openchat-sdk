# OpenChat Flutter SDK

将Flutter+Rust项目制作成第三方库，支持集成到原生Android项目中。

## 🚀 快速开始

### 1. 构建SDK

```bash
# 运行构建脚本
chmod +x build_and_publish.sh
./build_and_publish.sh
```

### 2. 在Android项目中集成

```gradle
// app/build.gradle
dependencies {
    implementation 'com.example:openchat-sdk:1.0.0'
    implementation 'io.flutter:flutter_embedding_release:1.0.0-3316dd8728419ad3534e3f6112aa6291f587078a'
}
```

```kotlin
// MainActivity.kt
class MainActivity : AppCompatActivity() {
    private lateinit var openChatSDK: OpenChatSDK
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        // 初始化SDK
        openChatSDK = OpenChatSDK.getInstance()
        val config = OpenChatConfig(
            phone = "your_phone@example.com",
            password = "your_password"
        )
        
        openChatSDK.initialize(this, config) { success, error ->
            if (success) {
                // 初始化成功，可以打开聊天界面
                openChatSDK.openChatActivity(this)
            }
        }
    }
}
```

## 📁 项目结构

```
openchat_client/
├── lib/
│   ├── module_entry.dart              # Flutter模块入口
│   └── src/core/platform/
│       └── method_channel_handler.dart # 方法通道处理器
├── android/
│   ├── openchat_sdk/                  # Android SDK库
│   │   ├── build.gradle.kts
│   │   └── src/main/java/
│   │       └── com/example/openchat_sdk/
│   │           └── OpenChatSDK.kt
│   └── app/
│       └── src/main/java/
│           └── com/example/openchat_client/
│               └── OpenChatSDK.kt
├── example_usage/                     # 使用示例
│   └── MainActivity.kt
├── build_and_publish.sh              # 构建脚本
├── INTEGRATION_GUIDE.md              # 详细集成指南
└── README_SDK.md                     # 本文档
```

## 🔧 主要功能

### 1. SDK初始化
```kotlin
openChatSDK.initialize(context, config) { success, error ->
    // 处理初始化结果
}
```

### 2. 打开聊天界面
```kotlin
// 打开主界面
openChatSDK.openChatActivity(activity)

// 打开聊天详情
openChatSDK.openChatDetail(activity, chatType = 0, targetId = 123)

// 打开聊天Demo
openChatSDK.openChatDemo(activity, chatType = 0, targetId = 123)
```

### 3. 用户管理
```kotlin
// 获取用户信息
openChatSDK.getCurrentUser { user, error ->
    // 处理用户信息
}

// 登出
openChatSDK.logout { success, error ->
    // 处理登出结果
}
```

## 📋 配置参数

| 参数 | 类型 | 必填 | 说明 |
|------|------|------|------|
| phone | String | 是 | 用户手机号或邮箱 |
| password | String | 是 | 用户密码 |
| countryCode | String | 否 | 国家代码 |
| uid | Int | 否 | 用户ID（0表示自动登录） |
| customBaseDir | String | 否 | 自定义数据目录 |

## 🛠️ 开发指南

### 1. 添加新的页面路由

1. 在Flutter模块的 `app_router.dart` 中添加新路由
2. 在Android SDK的 `OpenChatSDK.kt` 中添加对应方法

### 2. 自定义UI主题

修改 `module_entry.dart` 中的主题配置：

```dart
theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  // 自定义主题配置
),
```

### 3. 添加新的API接口

1. 在 `MethodChannelHandler` 中添加处理方法
2. 在 `OpenChatSDK.kt` 中添加对应方法
3. 更新集成指南文档

## 🔍 调试

### 查看日志
```bash
adb logcat | grep OpenChatSDK
```

### 启用调试模式
在初始化时设置调试参数（具体实现可根据需要添加）。

## 📚 文档

- [详细集成指南](INTEGRATION_GUIDE.md) - 完整的集成步骤和示例
- [API文档](docs/api.md) - 详细的API接口文档
- [常见问题](docs/faq.md) - 常见问题和解决方案

## 🤝 贡献

1. Fork 项目
2. 创建功能分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 打开 Pull Request

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 🆘 支持

如果遇到问题：

1. 查看 [常见问题](docs/faq.md)
2. 检查日志输出
3. 验证配置参数
4. 提交 Issue 或联系技术支持团队

---

**注意**: 这是一个示例项目，实际使用时请根据你的具体需求进行调整。 