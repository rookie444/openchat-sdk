import 'package:flutter/material.dart';
import 'package:openchat_client/src/rust/api/model/contacts.dart';
import 'choose_contact_list_item_widget.dart';

/// 联系人分组组件
class ChooseContactGroupWidget extends StatelessWidget {
  final String letter;
  final List<FfiContactDetail> contacts;
  final FfiContactDetail? selectedContact;
  final Function(FfiContactDetail) onContactTap;

  const ChooseContactGroupWidget({
    super.key,
    required this.letter,
    required this.contacts,
    required this.selectedContact,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 字母分组标题
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          color: Colors.grey[100],
          child: Text(
            letter,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
            ),
          ),
        ),
        // 联系人列表
        ...contacts.map((contact) {
          return ChooseContactListItemWidget(
            contact: contact,
            onTap:
                () => {
                  print('onTap: ${contact.nickName}'),
                  onContactTap(contact),
                },
          );
        }),
      ],
    );
  }
}
