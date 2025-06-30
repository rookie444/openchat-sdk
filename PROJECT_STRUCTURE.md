# OpenChat Flutter SDK 项目结构

## 📁 项目架构

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
├── INTEGRATION_GUIDE.md                     # 集成指南
└── README_SDK.md                           # SDK文档
```

## 🔧 模块说明

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

## 🚀 使用方式

### 方式1：作为独立SDK使用（推荐）
```gradle
// 在其他Android项目中
dependencies {
    implementation 'com.example:openchat-sdk:1.0.0'
}
```

### 方式2：作为模块依赖使用
```gradle
// 在同一个项目中
dependencies {
    implementation project(':openchat_sdk')
}
```

## 📦 构建流程

1. **构建Flutter AAR**:
   ```bash
   flutter build aar --release
   ```

2. **构建SDK模块**:
   ```bash
   cd android
   ./gradlew :openchat_sdk:assembleRelease
   ```

3. **发布到Maven**:
   ```bash
   ./gradlew :openchat_sdk:publishToMavenLocal
   ```

## 🎯 优势

1. **清晰的模块分离**: SDK和应用代码完全分离
2. **易于发布**: SDK模块可以独立发布到Maven仓库
3. **便于维护**: 每个模块职责明确
4. **灵活集成**: 支持多种集成方式

## 📝 注意事项

1. **包名区分**: 
   - 应用模块: `com.example.openchat_client`
   - SDK模块: `com.example.openchat_sdk`

2. **依赖管理**: 
   - 应用模块依赖SDK模块
   - SDK模块包含Flutter依赖

3. **构建顺序**: 
   - 先构建Flutter AAR
   - 再构建SDK模块
   - 最后发布到Maven