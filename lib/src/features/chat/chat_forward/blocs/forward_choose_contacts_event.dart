import 'package:openchat_client/src/rust/api/model/contacts.dart';

/// 转发选择联系人事件
abstract class ForwardChooseContactsEvent {
  const ForwardChooseContactsEvent();
}

class LoadContacts extends ForwardChooseContactsEvent {
  const LoadContacts();
}

class RefreshContacts extends ForwardChooseContactsEvent {
  const RefreshContacts();
}

class SearchContacts extends ForwardChooseContactsEvent {
  final String query;

  const SearchContacts(this.query);
}

class ConfirmSelection extends ForwardChooseContactsEvent {
  const ConfirmSelection();
}
