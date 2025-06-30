import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:openchat_client/src/core/utils/log.dart';
import 'package:openchat_client/src/rust/frb_generated.dart';
import '../../core/router/app_router.dart';
import 'blocs/contacts_bloc.dart';
import 'blocs/contacts_event.dart';
import 'blocs/contacts_notifier.dart';
import 'blocs/contacts_state.dart';
import '../../rust/api/model/contacts.dart';

class ContactsPage extends ConsumerStatefulWidget {
  const ContactsPage({super.key});

  @override
  ConsumerState<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends ConsumerState<ContactsPage> {
  @override
  void initState() {
    super.initState();
    // 在组件初始化时加载联系人列表
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Log.info('初始化联系人列表');
      ref.read(contactsNotifierProvider.notifier).add(
        const ContactsEvent.loadContacts(
          includePresences: true,
          orderType: ContactOrderType.presence,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // 监听联系人状态
    final contactsState = ref.watch(contactsNotifierProvider);
    final contactsNotifier = ref.read(contactsNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('联系人'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              contactsNotifier.add(const ContactsEvent.loadContacts(
                includePresences: true,
                orderType: ContactOrderType.presence,
              ));
            },
          ),
        ],
      ),
      body: contactsState.maybeWhen(
        initial: () => const Center(child: CircularProgressIndicator()),
        loading: () => const Center(child: CircularProgressIndicator()),
        loaded: (contacts, starredContacts, totalCount) => ListView.separated(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            final contact = contacts[index];
            return ContactListItem(contact: contact,onToggleDisturb: () => contactsNotifier.toggleDisturb(contact.userId));
          },
          separatorBuilder: (context, index) => Container(
            margin: const EdgeInsets.only(left: 72, right: 16),
            child: const Divider(
              thickness: 0.5,
              height: 0,
              color: Color(0xFFE5E5E5),
            ),
          ),
        ),
        error: (message) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('加载失败: $message'),
              ElevatedButton(
                onPressed: () {
                  contactsNotifier.add(const ContactsEvent.refreshContacts());
                },
                child: const Text('重试'),
              ),
            ],
          ),
        ),
        orElse: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class ContactListItem extends StatelessWidget {
  final FfiContactDetail contact;
  final VoidCallback? onToggleDisturb;

  const ContactListItem({super.key, required this.contact, this.onToggleDisturb});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

         showDialog(
          context: context,
          barrierDismissible: true,
          builder: (context) => _ContactActionDialog(
            contact: contact,
            onToggleDisturb: onToggleDisturb,
          ),
        );
      },
      // onLongPress: () {
      //   showDialog(
      //     context: context,
      //     barrierDismissible: true,
      //     builder: (context) => _ContactActionDialog(
      //       contact: contact,
      //       onToggleDisturb: onToggleDisturb,
      //     ),
      //   );
      // },
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: contact.avatar.isNotEmpty
                    ? NetworkImage(contact.avatar)
                    : null,
                child: contact.avatar.isEmpty
                    ? Text(contact.nickName.isNotEmpty ? contact.nickName[0].toUpperCase() : '?')
                    : null,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(child:  Container(
              height: 50,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      contact.nickName,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      contact.signature.isNotEmpty ? contact.signature : contact.depict,
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),),
            const SizedBox(width: 8),
            SizedBox(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '星期四',
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  contact.bfDisturb
                      ? const Icon(Icons.notifications_off, color: Colors.grey, size: 18)
                      : const SizedBox.shrink(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactActionDialog extends StatefulWidget {
  final FfiContactDetail contact;
  final VoidCallback? onToggleDisturb;
  const _ContactActionDialog({Key? key, required this.contact, this.onToggleDisturb}) : super(key: key);

  @override
  State<_ContactActionDialog> createState() => _ContactActionDialogState();
}

class _ContactActionDialogState extends State<_ContactActionDialog> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnim;
  

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    );
    _scaleAnim = CurvedAnimation(parent: _controller, curve: Curves.easeOutBack);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _scaleAnim,
        child: Material(
          color: Colors.transparent,
          child: Container(
            width: 280,
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 16,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildAction(context, '进入聊天室demo', () {
                  Navigator.pop(context);
                  // 传递chatType和targetId参数
                  // chatType: 1表示私聊，targetId使用联系人的userId
                  final chatType = 0; // 私聊类型
                  final targetId = widget.contact.userId;
                  context.push('${AppRoutes.chatDemo}/$chatType/$targetId');
                  
                  Log.info('进入聊天室demo: chatType=$chatType, targetId=$targetId');
                }),
                _buildAction(context, '免打扰', () {
                  Navigator.pop(context);
                  if (widget.onToggleDisturb != null) {
                    widget.onToggleDisturb!();
                  }
                  Log.info('免打扰: \\${widget.contact.userId}');
                }),
                // _buildAction(context, '标记未读', () {
                //   Navigator.pop(context);
                //   Log.info('标记未读: \\${widget.contact.userId}');
                // }),
                // _buildAction(context, '归档', () {
                //   Navigator.pop(context);
                //   Log.info('归档: \\${widget.contact.userId}');
                // }),
                // _buildAction(context, '删除', () {
                //   Navigator.pop(context);
                //   Log.info('删除: \\${widget.contact.userId}');
                // }),
                // _buildAction(context, '批量编辑', () {
                //   Navigator.pop(context);
                //   Log.info('批量编辑: \\${widget.contact.userId}');
                // }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAction(BuildContext context, String text, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

