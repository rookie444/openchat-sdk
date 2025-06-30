import 'package:flutter/material.dart';
import 'package:openchat_client/src/rust/api/model/contacts.dart';

/// 联系人列表项组件
class ChooseContactListItemWidget extends StatelessWidget {
  final FfiContactDetail contact;
  final VoidCallback onTap;

  const ChooseContactListItemWidget({
    super.key,
    required this.contact,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            // 头像
            Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[300],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child:
                    contact.avatar.isNotEmpty
                        ? Image.network(
                          contact.avatar,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.grey[300],
                              child: Icon(
                                Icons.person,
                                color: Colors.grey[600],
                                size: 30,
                              ),
                            );
                          },
                        )
                        : Icon(Icons.person, color: Colors.grey[600], size: 30),
              ),
            ),
            // 联系人信息
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 联系人名称
                  Text(
                    contact.groupNickName.isNotEmpty
                        ? contact.groupNickName
                        : contact.nickName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  // 签名或描述
                  if (contact.signature.isNotEmpty)
                    Text(
                      contact.signature,
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
