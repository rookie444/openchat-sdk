#!/bin/bash

# OpenChat SDK 发布到Maven仓库脚本

set -e

echo "🚀 开始发布OpenChat SDK到Maven仓库..."

# 检查环境变量
check_env() {
    local var_name=$1
    local env_var=$2
    local value=${!env_var}
    
    if [ -z "$value" ]; then
        echo "❌ 环境变量 $env_var 未设置"
        echo "请设置环境变量: export $env_var=your_value"
        exit 1
    fi
}

# 选择发布目标
echo "📋 选择发布目标："
echo "1. GitHub Packages (推荐)"
echo "2. Maven Central"
echo "3. 本地Maven仓库"
read -p "请选择 (1-3): " choice

case $choice in
    1)
        echo "📦 发布到 GitHub Packages"
        check_env "GitHub用户名" "GITHUB_USERNAME"
        check_env "GitHub Token" "GITHUB_TOKEN"
        
        # 构建和发布
        echo "🏗️ 构建Flutter AAR..."
        flutter build aar --release
        
        echo "🏗️ 构建SDK模块..."
        cd android
        ./gradlew :openchat_sdk:assembleRelease
        
        echo "📤 发布到GitHub Packages..."
        ./gradlew :openchat_sdk:publishReleasePublicationToGitHubPackagesRepository
        
        echo "✅ 发布到GitHub Packages完成！"
        echo "📋 使用方式："
        echo "在目标项目的 build.gradle 中添加："
        echo "repositories {"
        echo "    maven { url 'https://maven.pkg.github.com/$GITHUB_USERNAME/openchat-client' }"
        echo "}"
        echo ""
        echo "dependencies {"
        echo "    implementation 'com.example:openchat-sdk:1.0.0'"
        echo "}"
        ;;
        
    2)
        echo "📦 发布到 Maven Central"
        check_env "OSSRH用户名" "OSSRH_USERNAME"
        check_env "OSSRH密码" "OSSRH_PASSWORD"
        
        # 检查签名配置
        if [ -z "$SIGNING_KEY_ID" ] || [ -z "$SIGNING_PASSWORD" ] || [ -z "$SIGNING_SECRET_KEY_RING_FILE" ]; then
            echo "❌ Maven Central需要签名配置"
            echo "请设置以下环境变量："
            echo "export SIGNING_KEY_ID=your_key_id"
            echo "export SIGNING_PASSWORD=your_password"
            echo "export SIGNING_SECRET_KEY_RING_FILE=path/to/secret.gpg"
            exit 1
        fi
        
        # 构建和发布
        echo "🏗️ 构建Flutter AAR..."
        flutter build aar --release
        
        echo "🏗️ 构建SDK模块..."
        cd android
        ./gradlew :openchat_sdk:assembleRelease
        
        echo "📤 发布到Maven Central..."
        ./gradlew :openchat_sdk:publishReleasePublicationToMavenCentralRepository
        
        echo "✅ 发布到Maven Central完成！"
        echo "📋 注意：Maven Central需要审核，可能需要几小时到几天时间"
        ;;
        
    3)
        echo "📦 发布到本地Maven仓库"
        
        # 构建和发布
        echo "🏗️ 构建Flutter AAR..."
        flutter build aar --release
        
        echo "🏗️ 构建SDK模块..."
        cd android
        ./gradlew :openchat_sdk:assembleRelease
        
        echo "📤 发布到本地Maven仓库..."
        ./gradlew :openchat_sdk:publishToMavenLocal
        
        echo "✅ 发布到本地Maven仓库完成！"
        echo "📋 本地仓库位置: ~/.m2/repository/com/example/openchat-sdk/"
        echo "📋 使用方式："
        echo "dependencies {"
        echo "    implementation 'com.example:openchat-sdk:1.0.0'"
        echo "}"
        ;;
        
    *)
        echo "❌ 无效选择"
        exit 1
        ;;
esac

echo ""
echo "🎉 发布完成！"
echo "📖 详细使用说明请查看: INTEGRATION_GUIDE.md" 