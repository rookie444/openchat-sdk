import 'package:openchat_client/src/rust/api/model/contacts.dart';

/// 按字母分组的联系人数据
class ContactGroup {
  final String letter;
  final List<FfiContactDetail> contacts;

  ContactGroup({required this.letter, required this.contacts});
}

/// 转发选择联系人状态
abstract class ForwardChooseContactsState {
  const ForwardChooseContactsState();
}

class ForwardChooseContactsInitial extends ForwardChooseContactsState {
  const ForwardChooseContactsInitial();
}

class ForwardChooseContactsLoading extends ForwardChooseContactsState {
  const ForwardChooseContactsLoading();
}

class ForwardChooseContactsLoaded extends ForwardChooseContactsState {
  final List<ContactGroup> contactGroups;
  final List<FfiContactDetail> allContacts;
  final FfiContactDetail? selectedContact;
  final int totalCount;

  const ForwardChooseContactsLoaded({
    required this.contactGroups,
    required this.allContacts,
    this.selectedContact,
    required this.totalCount,
  });

  ForwardChooseContactsLoaded copyWith({
    List<ContactGroup>? contactGroups,
    List<FfiContactDetail>? allContacts,
    FfiContactDetail? selectedContact,
    int? totalCount,
  }) {
    return ForwardChooseContactsLoaded(
      contactGroups: contactGroups ?? this.contactGroups,
      allContacts: allContacts ?? this.allContacts,
      selectedContact: selectedContact,
      totalCount: totalCount ?? this.totalCount,
    );
  }
}

class ForwardChooseContactsError extends ForwardChooseContactsState {
  final String message;

  const ForwardChooseContactsError(this.message);
}
