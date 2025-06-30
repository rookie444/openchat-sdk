import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'chat_list_bloc.dart';
import 'chat_list_event.dart';
import 'chat_list_state.dart';
import '../../../../common/ffi.dart';
import '../services/chat_list_service.dart';

part '../../../../../generated/src/features/contacts/chat_demo/blocs/chat_list_notifier.g.dart';

@riverpod
class ChatListNotifier extends _$ChatListNotifier {
  StreamSubscription? _blocSubscription;

  @override
  ChatListState build(FfiChatType chatType, int targetId) {
    final bloc = ref.watch(chatListBlocProvider(chatType, targetId));

    // 订阅 bloc 的状态流
    _blocSubscription = bloc.stream.listen((newState) {
      state = newState;
    });

    ref.onDispose(() {
      _blocSubscription?.cancel();
    });

    return bloc.state;
  }

  void add(ChatListEvent event) {
    // 直接使用build方法中的chatType和targetId参数
    ref.read(chatListBlocProvider(chatType, targetId)).add(event);
  }

  /// 强制重新拉取消息历史
  void reloadHistory() {
    // 触发一次初始化事件，messagesToForward传null
    ref
        .read(chatListBlocProvider(chatType, targetId))
        .add(ChatListEvent.initialized(chatType, targetId, null));

    // 标记会话为已读，确保未读状态正确
    _markSessionAsRead();
  }

  /// 标记会话为已读
  void _markSessionAsRead() async {
    try {
      final chatListService = ref.read(chatListServiceProvider);
      await chatListService.markSessionAsRead(
        chatType: chatType,
        targetId: targetId,
      );
      print('✅ 会话已标记为已读: ${chatType.index}-$targetId');
    } catch (e) {
      print('❌ 标记会话为已读失败: $e');
    }
  }
}
