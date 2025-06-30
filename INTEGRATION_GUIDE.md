# OpenChat Flutter模块集成指南

本指南将帮助你将OpenChat Flutter+Rust项目作为第三方库集成到原生Android项目中。

## 项目结构

```
openchat_client/
├── lib/
│   ├── module_entry.dart                    # Flutter模块入口
│   └── src/core/platform/
│       └── method_channel_handler.dart      # 方法通道处理器
├── android/
│   ├── app/                                 # 主应用模块（Flutter应用）
│   │   ├── build.gradle.kts
│   │   └── src/main/java/
│   │       └── com/example/openchat_client/
│   │           └── MainActivity.kt          # Flutter应用入口
│   ├── openchat_sdk/                        # SDK库模块（用于发布）
│   │   ├── build.gradle.kts
│   │   └── src/main/java/
│   │       └── com/example/openchat_sdk/
│   │           └── OpenChatSDK.kt           # SDK主要接口
│   ├── settings.gradle.kts                  # 包含两个模块
│   └── build.gradle.kts                     # 根项目配置
├── example_usage/                           # 使用示例
├── build_and_publish.sh                     # 构建脚本
├── INTEGRATION_GUIDE.md                     # 本文档
└── PROJECT_STRUCTURE.md                     # 项目结构说明
```

## 模块说明

### 1. Flutter模块 (`lib/`)
- **module_entry.dart**: Flutter模块的入口点，提供模块化接口
- **method_channel_handler.dart**: 处理来自Android的方法调用

### 2. Android应用模块 (`android/app/`)
- 这是Flutter应用的主模块
- 包含Flutter应用的Android部分
- 依赖openchat_sdk模块

### 3. Android SDK模块 (`android/openchat_sdk/`)
- 独立的Android库模块
- 包含SDK的核心接口和实现
- 可以被发布到Maven仓库
- 其他Android项目可以直接依赖这个模块

## 1. 构建Flutter模块

### 1.1 构建Flutter AAR

```bash
# 在openchat_client目录下
flutter build aar --release
```

这将在 `build/host/outputs/repo` 目录下生成AAR文件。

### 1.2 构建和发布SDK

```bash
# 运行完整的构建脚本
chmod +x build_and_publish.sh
./build_and_publish.sh
```

或者手动执行：

```bash
# 构建SDK模块
cd android
./gradlew :openchat_sdk:assembleRelease

# 发布到本地Maven仓库
./gradlew :openchat_sdk:publishToMavenLocal
```

## 2. 在原生Android项目中集成

### 2.1 添加依赖

在目标Android项目的 `app/build.gradle` 中添加：

```gradle
dependencies {
    // OpenChat SDK
    implementation 'com.example:openchat-sdk:1.0.0'
    
    // Flutter依赖（SDK模块已包含，通常不需要手动添加）
    // implementation 'io.flutter:flutter_embedding_release:1.0.0-xxx'
}
```

### 2.2 初始化SDK

在你的Application类或MainActivity中初始化：

```kotlin
class MainActivity : AppCompatActivity() {
    private lateinit var openChatSDK: OpenChatSDK
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        
        // 初始化OpenChat SDK
        openChatSDK = OpenChatSDK.getInstance()
        
        val config = OpenChatConfig(
            phone = "your_phone@example.com",
            password = "your_password",
            countryCode = "",
            uid = 0
        )
        
        openChatSDK.initialize(this, config) { success, error ->
            if (success) {
                Log.d("MainActivity", "OpenChat SDK初始化成功")
            } else {
                Log.e("MainActivity", "OpenChat SDK初始化失败: $error")
            }
        }
    }
}
```

### 2.3 打开OpenChat界面

```kotlin
// 打开主界面
openChatSDK.openChatActivity(this)

// 打开聊天详情页面
openChatSDK.openChatDetail(this, chatType = 0, targetId = 123)

// 打开聊天Demo页面
openChatSDK.openChatDemo(this, chatType = 0, targetId = 123)
```

### 2.4 获取用户信息

```kotlin
openChatSDK.getCurrentUser { user, error ->
    if (user != null) {
        val uid = user["uid"] as Int
        val sessionId = user["sessionId"] as String
        val nickName = user["nickName"] as String
        val avatar = user["avatar"] as String
        
        Log.d("MainActivity", "当前用户: $nickName (UID: $uid)")
    } else {
        Log.e("MainActivity", "获取用户信息失败: $error")
    }
}
```

### 2.5 登出

```kotlin
openChatSDK.logout { success, error ->
    if (success) {
        Log.d("MainActivity", "登出成功")
    } else {
        Log.e("MainActivity", "登出失败: $error")
    }
}
```

## 3. 生命周期管理

### 3.1 在Activity中管理

```kotlin
class MainActivity : AppCompatActivity() {
    private lateinit var openChatSDK: OpenChatSDK
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        openChatSDK = OpenChatSDK.getInstance()
        // 初始化代码...
    }
    
    override fun onDestroy() {
        super.onDestroy()
        // 注意：不要在这里调用destroy()，因为SDK是单例
        // 只在应用完全退出时才调用destroy()
    }
}
```

### 3.2 在Application中管理

```kotlin
class MyApplication : Application() {
    private lateinit var openChatSDK: OpenChatSDK
    
    override fun onCreate() {
        super.onCreate()
        openChatSDK = OpenChatSDK.getInstance()
        // 初始化代码...
    }
    
    override fun onTerminate() {
        super.onTerminate()
        openChatSDK.destroy()
    }
}
```

## 4. 配置说明

### 4.1 OpenChatConfig参数

- `phone`: 用户手机号或邮箱
- `password`: 用户密码
- `countryCode`: 国家代码（可选）
- `uid`: 用户ID（如果为0，将自动登录）
- `customBaseDir`: 自定义数据目录（可选）

### 4.2 路由说明

- `/`: 主界面（根据登录状态显示首页或登录页）
- `/conversationDetail/{chatType}/{targetId}`: 聊天详情页面
- `/chatDemo/{chatType}/{targetId}`: 聊天Demo页面
- `/home`: 首页
- `/login`: 登录页
- `/register`: 注册页

## 5. 错误处理

```kotlin
openChatSDK.initialize(this, config) { success, error ->
    if (success) {
        // 初始化成功
        showSuccessMessage("OpenChat初始化成功")
    } else {
        // 初始化失败
        when (error) {
            "网络连接失败" -> showErrorMessage("请检查网络连接")
            "认证失败" -> showErrorMessage("用户名或密码错误")
            else -> showErrorMessage("初始化失败: $error")
        }
    }
}
```

## 6. 性能优化建议

1. **延迟初始化**: 在需要时才初始化SDK，避免在应用启动时阻塞主线程
2. **缓存引擎**: SDK会自动缓存Flutter引擎，避免重复创建
3. **内存管理**: 在应用退出时调用`destroy()`释放资源
4. **错误重试**: 对网络相关操作实现重试机制

## 7. 调试

### 7.1 启用调试日志

```kotlin
// 在初始化时启用调试模式
val config = OpenChatConfig(
    phone = "your_phone@example.com",
    password = "your_password",
    // 其他配置...
)
```

### 7.2 查看日志

```bash
adb logcat | grep OpenChatSDK
```

## 8. 常见问题

### Q: 为什么有两个OpenChatSDK文件？
A: 项目中有两个模块：
- `android/app/`: Flutter应用模块（包含MainActivity）
- `android/openchat_sdk/`: SDK库模块（包含OpenChatSDK.kt，用于发布）

### Q: 初始化失败怎么办？
A: 检查网络连接、用户名密码是否正确，查看日志获取详细错误信息。

### Q: Flutter引擎启动慢怎么办？
A: 这是正常现象，首次启动需要加载Flutter运行时。后续启动会使用缓存的引擎。

### Q: 如何自定义UI主题？
A: 在Flutter模块中修改`module_entry.dart`中的主题配置。

### Q: 如何添加新的页面路由？
A: 在Flutter模块的`app_router.dart`中添加新路由，然后在Android SDK中添加对应的方法。

## 9. 技术支持

如果遇到问题，请：
1. 查看日志输出
2. 检查网络连接
3. 验证配置参数
4. 查看项目结构说明文档
5. 联系技术支持团队 