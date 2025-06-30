# OpenChat SDK 发布指南

本指南将帮助你将OpenChat SDK发布到Maven仓库，让其他Android项目可以作为独立SDK使用。

## 🚀 发布方式选择

### 方式1：JitPack（最简单，推荐）

**优点：**
- 完全免费
- 基于GitHub自动构建
- 无需配置复杂的环境变量
- 支持版本标签

**步骤：**

1. **推送代码到GitHub**
   ```bash
   git add .
   git commit -m "Release v1.0.0"
   git tag v1.0.0
   git push origin main
   git push origin v1.0.0
   ```

2. **访问JitPack**
   - 打开 https://jitpack.io
   - 登录GitHub账号
   - 找到你的仓库
   - 点击 "Get it"

3. **使用方式**
   ```gradle
   // 在目标项目的 build.gradle 中添加
   repositories {
       maven { url 'https://jitpack.io' }
   }
   
   dependencies {
       implementation 'com.github.your-username:openchat-client:v1.0.0'
   }
   ```

### 方式2：GitHub Packages

**步骤：**

1. **创建GitHub Token**
   - 访问 GitHub Settings > Developer settings > Personal access tokens
   - 创建新token，选择 `write:packages` 权限

2. **设置环境变量**
   ```bash
   export GITHUB_USERNAME=your-username
   export GITHUB_TOKEN=your-token
   ```

3. **运行发布脚本**
   ```bash
   chmod +x publish_to_maven.sh
   ./publish_to_maven.sh
   # 选择选项1
   ```

4. **使用方式**
   ```gradle
   repositories {
       maven { 
           url 'https://maven.pkg.github.com/your-username/openchat-client'
           credentials {
               username = project.findProperty("gpr.user") ?: System.getenv("GITHUB_USERNAME")
               password = project.findProperty("gpr.key") ?: System.getenv("GITHUB_TOKEN")
           }
       }
   }
   
   dependencies {
       implementation 'com.example:openchat-sdk:1.0.0'
   }
   ```

### 方式3：Maven Central

**步骤：**

1. **申请OSSRH账号**
   - 访问 https://s01.oss.sonatype.org/
   - 注册账号并申请发布权限

2. **配置GPG签名**
   ```bash
   # 生成GPG密钥
   gpg --gen-key
   
   # 导出密钥
   gpg --export-secret-keys > ~/.gnupg/secring.gpg
   
   # 设置环境变量
   export OSSRH_USERNAME=your-username
   export OSSRH_PASSWORD=your-password
   export SIGNING_KEY_ID=your-key-id
   export SIGNING_PASSWORD=your-key-password
   export SIGNING_SECRET_KEY_RING_FILE=~/.gnupg/secring.gpg
   ```

3. **运行发布脚本**
   ```bash
   ./publish_to_maven.sh
   # 选择选项2
   ```

4. **使用方式**
   ```gradle
   dependencies {
       implementation 'com.example:openchat-sdk:1.0.0'
   }
   ```

## 📦 版本管理

### 语义化版本

使用语义化版本号：`主版本.次版本.修订版本`

- **主版本**：不兼容的API修改
- **次版本**：向下兼容的功能性新增
- **修订版本**：向下兼容的问题修正

### 发布新版本

1. **更新版本号**
   ```kotlin
   // 在 android/openchat_sdk/build.gradle.kts 中
   version = "1.0.1"  // 更新版本号
   ```

2. **提交并打标签**
   ```bash
   git add .
   git commit -m "Release v1.0.1"
   git tag v1.0.1
   git push origin main
   git push origin v1.0.1
   ```

3. **发布**
   - JitPack：自动构建
   - GitHub Packages：运行发布脚本
   - Maven Central：运行发布脚本

## 🔧 配置说明

### build.gradle.kts 配置

```kotlin
plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
    id("maven-publish")
    id("signing")  // 仅Maven Central需要
}

// 发布配置
publishing {
    publications {
        create<MavenPublication>("release") {
            from(components["release"])
            
            groupId = "com.example"
            artifactId = "openchat-sdk"
            version = "1.0.0"
            
            pom {
                name.set("OpenChat SDK")
                description.set("A Flutter+Rust based chat SDK for Android")
                // ... 其他元数据
            }
        }
    }
    
    repositories {
        // 配置发布仓库
    }
}
```

### 环境变量配置

创建 `.env` 文件（不要提交到Git）：

```bash
# GitHub Packages
GITHUB_USERNAME=your-username
GITHUB_TOKEN=your-token

# Maven Central
OSSRH_USERNAME=your-username
OSSRH_PASSWORD=your-password
SIGNING_KEY_ID=your-key-id
SIGNING_PASSWORD=your-key-password
SIGNING_SECRET_KEY_RING_FILE=~/.gnupg/secring.gpg
```

## 🎯 最佳实践

### 1. 自动化发布

使用GitHub Actions自动发布：

```yaml
# .github/workflows/publish.yml
name: Publish SDK

on:
  push:
    tags:
      - 'v*'

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions/setup-java@v2
        with:
          java-version: '11'
      - uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.7.2'
      - run: flutter build aar --release
      - run: cd android && ./gradlew :openchat_sdk:publishReleasePublicationToGitHubPackagesRepository
        env:
          GITHUB_USERNAME: ${{ secrets.GITHUB_USERNAME }}
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

### 2. 文档维护

- 更新 `README.md` 说明使用方法
- 维护 `CHANGELOG.md` 记录版本变更
- 提供示例代码和集成指南

### 3. 测试发布

在正式发布前，先发布到本地Maven仓库测试：

```bash
./gradlew :openchat_sdk:publishToMavenLocal
```

## 🆘 常见问题

### Q: 发布失败怎么办？
A: 检查环境变量、网络连接、权限设置

### Q: 版本冲突怎么解决？
A: 使用不同的groupId或artifactId

### Q: 如何回滚版本？
A: 删除GitHub上的release，重新发布

### Q: 依赖冲突怎么处理？
A: 在SDK中排除冲突的依赖，让使用者自己管理

## 📚 相关资源

- [JitPack文档](https://jitpack.io/docs/)
- [GitHub Packages文档](https://docs.github.com/en/packages)
- [Maven Central发布指南](https://central.sonatype.org/publish/publish-guide/)
- [语义化版本](https://semver.org/) 