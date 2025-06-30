import '../../../core/utils/log.dart';
import 'contacts_event.dart';
import 'contacts_state.dart';
import '../service/contacts_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:async';
import 'contacts_bloc.dart';

part '../../../../generated/src/features/contacts/blocs/contacts_notifier.g.dart';

@riverpod
class ContactsNotifier extends _$ContactsNotifier {
  // 保存对 BLoC 流的订阅
  StreamSubscription? _blocSubscription;

  /// build 方法：初始化 notifier 并返回初始状态
  @override
  ContactsState build() {
    Log.debug("ContactsNotifier: build() called");
    final bloc = ref.watch(contactsBlocProvider);

    // 订阅 bloc 的状态流
    _blocSubscription = bloc.stream.listen((newState) {
      Log.debug(
        "ContactsNotifier: Received new state from Bloc stream: $newState",
      );
      // 更新 notifier 的状态，这会触发 UI 监听器
      state = newState;
    });

    // 组件销毁时取消订阅
    ref.onDispose(() {
      Log.info("ContactsNotifier: Disposing - cancelling Bloc subscription");
      _blocSubscription?.cancel();
    });

    Log.debug("ContactsNotifier: Returning initial state: ${bloc.state}");
    return bloc.state;
  }

  /// 向底层 BLoC 发送事件
  void add(ContactsEvent event) {
    Log.debug("ContactsNotifier: Adding event: $event");
    ref.read(contactsBlocProvider).add(event);
  }

  void toggleDisturb(int userId) {
    add(ContactsEvent.toggleDisturb(userId: userId));
  }


  /// 获取联系人免打扰状态
  bool getContactDisturbStatus(int contactsId) {
    final contactsService = ref.read(contactsServiceProvider);
    return contactsService.getContactDisturbStatus(contactsId);
  }
}
