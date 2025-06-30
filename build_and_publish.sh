#!/bin/bash

# OpenChat Flutter模块构建和发布脚本

set -e

echo "🚀 开始构建OpenChat Flutter SDK..."

# 检查Flutter环境
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter未安装或不在PATH中"
    exit 1
fi

echo "📋 项目结构说明："
echo "  - lib/: Flutter模块代码"
echo "  - android/app/: Flutter应用模块"
echo "  - android/openchat_sdk/: SDK库模块（用于发布）"
echo ""

# 清理之前的构建
echo "🧹 清理之前的构建..."
flutter clean

# 获取依赖
echo "📦 获取Flutter依赖..."
flutter pub get

# 生成代码
echo "🔧 生成Flutter代码..."
flutter packages pub run build_runner build --delete-conflicting-outputs

# 构建Flutter AAR
echo "🏗️ 构建Flutter AAR..."
flutter build aar --release

echo "✅ Flutter AAR构建完成，位置: build/host/outputs/repo/"
echo ""

# 构建Android SDK库
echo "🏗️ 构建Android SDK库..."
cd android

# 检查SDK模块是否存在
if [ ! -d "openchat_sdk" ]; then
    echo "❌ openchat_sdk模块不存在"
    exit 1
fi

# 构建SDK模块
echo "📦 构建openchat_sdk模块..."
./gradlew :openchat_sdk:assembleRelease

# 发布到本地Maven仓库
echo "📤 发布到本地Maven仓库..."
./gradlew :openchat_sdk:publishToMavenLocal

echo ""
echo "✅ 构建和发布完成！"
echo ""
echo "📋 输出文件位置："
echo "1. Flutter AAR: build/host/outputs/repo/"
echo "2. SDK AAR: android/openchat_sdk/build/outputs/aar/"
echo "3. 本地Maven仓库: ~/.m2/repository/com/example/openchat-sdk/"
echo ""
echo "📖 使用方式："
echo "方式1 - 在其他Android项目中添加依赖："
echo "  implementation 'com.example:openchat-sdk:1.0.0'"
echo ""
echo "方式2 - 在同一个项目中添加依赖："
echo "  implementation project(':openchat_sdk')"
echo ""
echo "📖 详细集成指南请查看: INTEGRATION_GUIDE.md"
echo "📖 项目结构说明请查看: PROJECT_STRUCTURE.md" 