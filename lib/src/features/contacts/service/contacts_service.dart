import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openchat_client/src/rust/api/model/contacts.dart';
import 'package:openchat_client/src/rust/api/model/group.dart';
import 'package:openchat_client/src/rust/api/model/ffi_channel_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/utils/log.dart';
import '../../../rust/api/contacts_api.dart' as rust_contacts;
import '../../../rust/api/channel_api.dart' as rust_channel;
import '../../../rust/api/group_api.dart' as rust_group;

part '../../../../generated/src/features/contacts/service/contacts_service.g.dart';

// 使用riverpod的provider简单提供AuthService实例
@riverpod
ContactsService contactsService(Ref ref) {
  return ContactsService();
}

//获取联系人列表
class ContactsService {

  //缓存联系人列表 
  List<FfiContactDetail> ffiContactsList = [];
  List<FfiGroupBase> ffiGroupList = [];
  List<FfiChannelModel> ffiChannelList = [];

  /// 获取联系人列表
  Future<List<FfiContactDetail>> getContactsList({
    required bool includePresences,
    required ContactOrderType orderType,
  }) async {
    try {
      final contactsList = await rust_contacts.getContactsList(
        includePresences: includePresences,
        orderType: orderType,
      );
      Log.debug('获取联系人列表成功: ${contactsList.length} 个联系人');
      ffiContactsList.addAll(contactsList);

      final groupList = await rust_group.getGroupContactList();
      Log.debug('获取群列表成功: ${groupList.length} 个群');
      ffiGroupList.addAll(groupList);

      final channelList = await rust_channel.getChannelContactList();
      Log.debug('获取频道列表成功: ${channelList.length} 个频道');
      ffiChannelList.addAll(channelList);

      return contactsList;
    } catch (e, stackTrace) {
      Log.error('获取联系人列表失败', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  /// 示例：通知 Rust 端用户执行了某个操作
  Future<bool> notifyContactAction({
    required int userId,
    required String action,
    String params = '',
  }) async {
    try {
      Log.debug('通知 Rust: 用户 $userId 执行操作 $action');
      
      // 这里需要等待 flutter_rust_bridge 重新生成
      // 实际调用: final result = await rust_contacts.notifyContactAction(
      //   userId: userId,
      //   action: action,
      //   params: params,
      // );
      
      Log.debug('操作通知成功');
      return true; // 临时返回
    } catch (e, stackTrace) {
      Log.error('操作通知失败', error: e, stackTrace: stackTrace);
      return false;
    }
  }

  /// 更新联系人免打扰设置
  Future<bool> updateContactDisturb({
    required int contactsId,
    required bool bfDisturb,
  }) async {

    try {
      final response = await rust_contacts.updateContactDisturb(
        contactsId: contactsId,
        bfDisturb: bfDisturb,
      );
      Log.debug('更新联系人免打扰设置成功: ID=$contactsId, 免打扰=$bfDisturb');
      return response;
    } catch (e, stackTrace) {
      Log.error('更新联系人免打扰设置失败', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  

  /// 切换联系人免打扰状态
  Future<bool> toggleContactDisturb({required int contactsId}) async {
    try {
      // 从缓存中获取当前状态
      final currentContact = ffiContactsList.firstWhere(
        (contact) => contact.userId == contactsId,
        orElse: () => throw Exception('联系人不存在'),
      );
      
      final newDisturbState = !currentContact.bfDisturb;
      Log.debug('切换联系人免打扰状态: ID=$contactsId, 当前状态=${currentContact.bfDisturb} -> 新状态=$newDisturbState');
      
      return await updateContactDisturb(
        contactsId: contactsId,
        bfDisturb: newDisturbState,
      );
    } catch (e, stackTrace) {
      Log.error('切换联系人免打扰状态失败', error: e, stackTrace: stackTrace);
      return false;
    }
  }

  /// 获取联系人的免打扰状态
  bool getContactDisturbStatus(int contactsId) {
    try {
      final contact = ffiContactsList.firstWhere(
        (contact) => contact.userId == contactsId,
      );
      return contact.bfDisturb;
    } catch (e) {
      Log.warning('获取联系人免打扰状态失败: 联系人ID=$contactsId 不存在');
      return false;
    }
  }

  /// 更新本地缓存中的联系人免打扰状态
  void _updateLocalContactDisturb(int contactsId, bool bfDisturb) {
    try {
      final index = ffiContactsList.indexWhere(
        (contact) => contact.userId == contactsId,
      );
      
      if (index != -1) {
        // 创建新的联系人对象，更新免打扰状态
        final oldContact = ffiContactsList[index];
        final updatedContact = FfiContactDetail(
          userId: oldContact.userId,
          nickName: oldContact.nickName,
          avatar: oldContact.avatar,
          depict: oldContact.depict,
          bfStar: oldContact.bfStar,
          bfDisturb: bfDisturb, // 更新免打扰状态
          bfMyBlack: oldContact.bfMyBlack,
          letter: oldContact.letter,
          bfTop: oldContact.bfTop,
          bfVerify: oldContact.bfVerify,
          signature: oldContact.signature,
          groupNickName: oldContact.groupNickName,
          phone: oldContact.phone,
          bfReadCancel: oldContact.bfReadCancel,
          msgCancelTime: oldContact.msgCancelTime,
          bfScreenshot: oldContact.bfScreenshot,
          commonGroupNum: oldContact.commonGroupNum,
          bfReadReceipt: oldContact.bfReadReceipt,
          groupShutupTime: oldContact.groupShutupTime,
          searchType: oldContact.searchType,
        );
        
        ffiContactsList[index] = updatedContact;
        Log.debug('本地缓存更新成功: 联系人ID=$contactsId, 免打扰=$bfDisturb');
      } else {
        Log.warning('本地缓存更新失败: 未找到联系人ID=$contactsId');
      }
    } catch (e) {
      Log.error('更新本地缓存失败: $e');
    }
  }
}
