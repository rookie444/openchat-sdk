import 'package:openchat_client/src/rust/api/app_api.dart' as rust_app;
import 'package:openchat_client/src/rust/api/model/chat.dart';
import 'package:openchat_client/src/rust/api/model/ffi_message_common.dart';

/// 消息推送管理器
/// 用于管理APP内的消息推送行为，根据不同页面设置不同的推送策略
class PushNotificationManager {
  /// 私有构造函数，防止实例化
  PushNotificationManager._();

  /// 当进入会话列表页面时调用
  static void enterConversationListPage() {
    _setPushNotificationType(FfiPushNotificationType.conversationList, null, null);
  }

  /// 当进入会话详情页面时调用
  static void enterConversationPage(FfiChatType chatType, int targetId) {
    _setPushNotificationType(
      FfiPushNotificationType.conversation,
      chatType,
      targetId,
    );
  }

  /// 当退出消息相关页面时调用
  static void leaveMessagingPages() {
    _setPushNotificationType(FfiPushNotificationType.none, null, null);
  }

  /// 设置消息推送类型
  static void _setPushNotificationType(
    FfiPushNotificationType pushType,
    FfiChatType? chatType, 
    int? targetId,
  ) {
    // 调用Rust接口设置推送类型
    rust_app.setPushNotificationType(
      pushType: pushType,
      chatType: chatType,
      targetId: targetId,
    );
  }
}
