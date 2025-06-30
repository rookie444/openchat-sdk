import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/utils/log.dart';

part '../../../../generated/src/features/contacts/service/test_service.g.dart';

// 使用riverpod的provider简单提供AuthService实例
@riverpod
ContactsTestService contactsTestService(Ref ref) {
  return ContactsTestService();
}

//获取联系人列表
class ContactsTestService {
  /// 获取联系人列表
  
  Future<dynamic> getContactsList({
    required int pageNum,
    required int pageSize,
    int? time,
  }) async {
    // try {
    //   final response = await contacts_api.getContactsList(
    //     pageNum: pageNum,
    //     pageSize: pageSize,
    //     time: time,
    //   );
    //   Log.info('获取联系人列表成功: ${response.contactsList.length} 个联系人');
    //   return response;
    // } catch (e, stackTrace) {
    //   Log.error('获取联系人列表失败', error: e, stackTrace: stackTrace);
    //   rethrow;
    // }
  }
}
