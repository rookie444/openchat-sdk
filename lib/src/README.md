# OpenChat客户端架构

本文档描述OpenChat客户端项目的架构和目录结构。

## 项目架构

OpenChat客户端采用特性驱动的目录结构（Feature-first），同时遵循干净架构原则。

- Flutter用于UI层
- BLoC用于状态管理（通过flutter_bloc）
- 使用flutter_riverpod提供依赖注入
- Rust用于核心业务逻辑

## 目录结构

```
lib/
├── main.dart                  # 应用入口
└── src/                       # 源代码
    ├── core/                  # 核心代码（共享组件）
    │   ├── config/            # 全局配置
    │   ├── router/            # 路由配置
    │   ├── services/          # 服务层
    │   ├── theme/             # 主题相关
    │   ├── utils/             # 工具类
    │   └── widgets/           # 共享组件
    ├── features/              # 功能模块
    │   ├── auth/              # 认证功能
    │   │   ├── blocs/         # BLoC 组件
    │   │   ├── models/        # 数据模型
    │   │   ├── screens/       # 页面
    │   │   └── widgets/       # 认证相关组件
    │   ├── chat/              # 聊天功能
    │   │   ├── blocs/
    │   │   ├── models/
    │   │   ├── screens/
    │   │   └── widgets/
    │   ├── contacts/          # 联系人功能
    │   │   ├── blocs/
    │   │   ├── models/
    │   │   ├── screens/
    │   │   └── widgets/
    │   ├── home/              # 首页相关
    │   │   ├── blocs/
    │   │   ├── screens/
    │   │   └── widgets/
    │   ├── profile/           # 个人信息
    │   │   ├── blocs/
    │   │   ├── models/
    │   │   ├── screens/
    │   │   └── widgets/
    │   └── settings/          # 设置
    │       ├── blocs/
    │       ├── models/
    │       ├── screens/
    │       └── widgets/
    └── rust/                  # Rust FFI 交互层
        ├── api/               # Rust API 绑定
        └── models/            # Rust 模型映射
```

## 设计原则

### BLoC模式

每个功能模块应包含其自己的BLoCs，负责该功能的业务逻辑和状态管理:

- **Events**: 表示用户输入或系统触发的事件
- **States**: 描述UI的状态
- **BLoC**: 处理事件并更新状态

### 依赖注入

使用flutter_riverpod进行依赖注入:

```dart
@riverpod
LoginBloc loginBloc(LoginBlocRef ref) => createBlocProvider<LoginBloc, LoginEvent, LoginState>(
      create: () => LoginBloc(),
      onDispose: (bloc) => bloc.close(),
    );
```

### 命名约定

- BLoC文件: `feature_bloc.dart`
- 状态文件: `feature_state.dart`
- 事件文件: `feature_event.dart`
- 页面文件: `feature_screen.dart`
- 组件文件: `feature_component.dart`

### 代码生成

使用build_runner生成代码:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Rust与Flutter交互

Rust核心通过FFI为Flutter提供API服务:

1. Rust代码提供核心业务逻辑
2. 通过flutter_rust_bridge生成绑定
3. Flutter调用生成的API 