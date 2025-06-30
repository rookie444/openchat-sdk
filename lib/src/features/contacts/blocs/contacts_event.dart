import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openchat_client/src/rust/api/model/contacts.dart';

part '../../../../generated/src/features/contacts/blocs/contacts_event.freezed.dart';   

@freezed
class ContactsEvent with _$ContactsEvent {
  const factory ContactsEvent.loadContacts({
    required bool includePresences,
    required ContactOrderType orderType,
  }) = _LoadContacts;
  const factory ContactsEvent.refreshContacts() = _RefreshContacts;
  const factory ContactsEvent.loadMoreContacts() = _LoadMoreContacts;
  const factory ContactsEvent.toggleDisturb({required int userId}) = _ToggleDisturb;
} 