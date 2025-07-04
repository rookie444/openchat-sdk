// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.9.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'model/ffi_emotion_model.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These functions are ignored because they are not marked as `pub`: `emoticon_base_to_ffi_emoticon`, `emoticon_data_to_ffi_emoticon`
// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `from`, `from`, `from`

/// 获取表情列表
/// 优先从缓存获取，如果缓存不存在或已过期则从服务器获取
Future<FfiGetEmoticonResponse> getEmoticonList() =>
    RustLib.instance.api.crateApiEmotionApiGetEmoticonList();

/// 刷新表情列表
/// 强制从服务器重新获取表情列表并更新缓存
Future<FfiGetEmoticonResponse> refreshEmoticonList() =>
    RustLib.instance.api.crateApiEmotionApiRefreshEmoticonList();

/// 清理表情缓存
Future<void> clearEmoticonCache() =>
    RustLib.instance.api.crateApiEmotionApiClearEmoticonCache();

/// 获取缓存信息
Future<String> getCacheInfo() =>
    RustLib.instance.api.crateApiEmotionApiGetCacheInfo();

/// 获取表情列表（自动模式）
/// 自动处理缓存和6小时刷新机制
Future<FfiEmoticonListResult> getEmoticonListAuto() =>
    RustLib.instance.api.crateApiEmotionApiGetEmoticonListAuto();

/// 获取最后更新时间
Future<BigInt> getLastUpdateTime() =>
    RustLib.instance.api.crateApiEmotionApiGetLastUpdateTime();

/// 检查是否需要自动刷新
Future<bool> shouldAutoRefresh() =>
    RustLib.instance.api.crateApiEmotionApiShouldAutoRefresh();

/// 强制更新表情列表并保存更新时间
Future<FfiEmoticonListResult> forceUpdateEmoticonList() =>
    RustLib.instance.api.crateApiEmotionApiForceUpdateEmoticonList();

/// 获取游戏全局配置
/// 发送POST请求到 /globalConfig/getGameGlobalConfig 获取游戏全局配置
Future<List<FfiAnimatedGameConfig>> getGameGlobalConfig() =>
    RustLib.instance.api.crateApiEmotionApiGetGameGlobalConfig();
