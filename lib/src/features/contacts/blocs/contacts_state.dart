import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../rust/api/model/contacts.dart';

part '../../../../generated/src/features/contacts/blocs/contacts_state.freezed.dart';

@freezed
class ContactsState with _$ContactsState {
  const factory ContactsState.initial() = _Initial;
  const factory ContactsState.loading() = _Loading;
  const factory ContactsState.loaded({
    required List<FfiContactDetail> contacts,
    required List<FfiContactDetail> starredContacts,
    required int totalCount,
  }) = _Loaded;
  const factory ContactsState.error(String message) = _Error;
}
