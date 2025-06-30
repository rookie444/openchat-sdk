import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openchat_client/src/features/contacts/service/contacts_service.dart';
import '../../../core/utils/log.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'contacts_state.dart';
import 'contacts_event.dart';
import '../../../rust/api/model/contacts.dart';

part '../../../../generated/src/features/contacts/blocs/contacts_bloc.g.dart';

// 使用riverpod的provider简单提供ContactsBloc实例
@Riverpod(keepAlive: true)
ContactsBloc contactsBloc(Ref ref) {
  final contactsService = ref.read(contactsServiceProvider);
  final bloc = ContactsBloc(contactsService: contactsService);
  Log.info('contactsBlocProvider: 创建ContactsBloc实例 (全局单例)');
  return bloc;
}

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  final ContactsService _contactsService;

  ContactsBloc({required ContactsService contactsService})
    : _contactsService = contactsService,
      super(const ContactsState.initial()) {
    Log.info('ContactsBloc: 初始化');

    on<ContactsEvent>((event, emit) async {
      Log.info('ContactsBloc: 收到事件 $event');

      // 处理异步操作
      await event.maybeMap(
        loadContacts: (e) async => await _onLoadContacts(emit, e.includePresences, e.orderType),
        refreshContacts: (e) async => await _onRefreshContacts(emit),
        loadMoreContacts: (_) async => await _onLoadMoreContacts(emit),
        toggleDisturb: (e) async => await _onToggleDisturb(emit, e.userId),
        orElse: () async {},
      );
    });
  }

  Future<void> _onLoadContacts(Emitter<ContactsState> emit,
    bool includePresences,
    ContactOrderType orderType,
  ) async {
    try {
      emit(const ContactsState.loading());
      final contactsList = await _contactsService.getContactsList(
        includePresences: includePresences,
        orderType: orderType,
      );
      emit(ContactsState.loaded(
        contacts: contactsList,
        starredContacts: contactsList.where((c) => c.bfStar).toList(),
        totalCount: contactsList.length,
      ));
    } catch (e) {
      emit(ContactsState.error(e.toString()));
    }
  }

  Future<void> _onRefreshContacts(Emitter<ContactsState> emit) async {
    try {
      emit(const ContactsState.loading());
      final contactsList = await _contactsService.getContactsList(
        includePresences: true,
        orderType: ContactOrderType.presence,
      );
      emit(ContactsState.loaded(
        contacts: contactsList,
        starredContacts: contactsList.where((c) => c.bfStar).toList(),
        totalCount: contactsList.length,
      ));
    } catch (e) {
      emit(ContactsState.error(e.toString()));
    }
  }

  Future<void> _onLoadMoreContacts(Emitter<ContactsState> emit) async {
    // Implementation of _onLoadMoreContacts method
  }

  Future<void> _onToggleDisturb(Emitter<ContactsState> emit, int userId) async {
    bool updateSuccess = false;
    String? errorMessage;
    FfiContactDetail? targetContact;
    bool? originalState;
    bool? newState;
    
    try {
      Log.debug('ContactsBloc: 开始切换联系人免打扰状态 - 用户ID: $userId');
      
      // 查找目标联系人
      targetContact = _contactsService.ffiContactsList.firstWhere(
        (c) => c.userId == userId,
        orElse: () => throw StateError('联系人不存在: $userId'),
      );
      
      originalState = targetContact.bfDisturb;
      newState = !originalState;
      
      Log.debug('ContactsBloc: 联系人状态 - ID: $userId, 原状态: $originalState, 新状态: $newState');
      
      // 调用服务更新免打扰状态，使用变量接收结果
      updateSuccess = await _contactsService.updateContactDisturb(
        contactsId: userId, 
        bfDisturb: newState,
      );
      
      if (updateSuccess) {
        Log.info('ContactsBloc: 免打扰状态更新成功 - 用户ID: $userId, 新状态: $newState');
        
        // 更新本地状态
        final updatedContacts = _contactsService.ffiContactsList.map((c) => 
          c.userId == userId ? c.copyWith(bfDisturb: newState!) : c
        ).toList();
        
        _contactsService.ffiContactsList = [...updatedContacts];
        
        emit(ContactsState.loaded(
          contacts: updatedContacts,
          starredContacts: _contactsService.ffiContactsList.where((c) => c.bfStar).toList(),
          totalCount: updatedContacts.length,
        ));
      } else {
        errorMessage = '服务器更新失败，请重试';
        Log.error('ContactsBloc: 免打扰状态更新失败 - 用户ID: $userId, 服务返回失败');
        emit(ContactsState.error(errorMessage));
      }
      
    } on StateError catch (e, stackTrace) {
      errorMessage = '联系人不存在: $userId';
      Log.error('ContactsBloc: 切换免打扰状态失败 - 联系人不存在', error: e, stackTrace: stackTrace);
      emit(ContactsState.error(errorMessage));
    } on FormatException catch (e, stackTrace) {
      errorMessage = '数据格式错误';
      Log.error('ContactsBloc: 切换免打扰状态失败 - 数据格式错误', error: e, stackTrace: stackTrace);
      emit(ContactsState.error(errorMessage));
    } on Exception catch (e, stackTrace) {
      errorMessage = '操作失败: ${e.toString()}';
      if (e.toString().contains('网络') || e.toString().contains('连接')) {
        errorMessage = '网络连接失败，请检查网络后重试';
        Log.error('ContactsBloc: 切换免打扰状态失败 - 网络错误', error: e, stackTrace: stackTrace);
      } else if (e.toString().contains('权限') || e.toString().contains('认证')) {
        errorMessage = '权限不足，请重新登录';
        Log.error('ContactsBloc: 切换免打扰状态失败 - 权限错误', error: e, stackTrace: stackTrace);
      } else {
        Log.error('ContactsBloc: 切换免打扰状态失败 - 业务异常', error: e, stackTrace: stackTrace);
      }
      emit(ContactsState.error(errorMessage));
    } catch (e, stackTrace) {
      errorMessage = '未知错误: ${e.toString()}';
      Log.error('ContactsBloc: 切换免打扰状态失败 - 未知错误', error: e, stackTrace: stackTrace);
      emit(ContactsState.error(errorMessage));
    } finally {
      Log.debug('ContactsBloc: 切换免打扰状态完成 - 用户ID: $userId, 原状态: $originalState, 新状态: $newState, 成功: $updateSuccess, 错误: $errorMessage');
    }
  }
}
