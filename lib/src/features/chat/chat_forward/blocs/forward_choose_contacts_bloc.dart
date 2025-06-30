import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openchat_client/src/core/utils/log.dart';
import 'package:openchat_client/src/rust/api/contacts_api.dart';
import 'package:openchat_client/src/rust/api/model/contacts.dart';
import 'forward_choose_contacts_event.dart';
import 'forward_choose_contacts_state.dart';

class ForwardChooseContactsBloc
    extends Bloc<ForwardChooseContactsEvent, ForwardChooseContactsState> {
  ForwardChooseContactsBloc() : super(const ForwardChooseContactsInitial()) {
    on<LoadContacts>(_onLoadContacts);
    on<RefreshContacts>(_onRefreshContacts);
    on<SearchContacts>(_onSearchContacts);
    on<ConfirmSelection>(_onConfirmSelection);
  }

  Future<void> _onLoadContacts(
    LoadContacts event,
    Emitter<ForwardChooseContactsState> emit,
  ) async {
    try {
      emit(const ForwardChooseContactsLoading());

      // 获取联系人列表
      final contacts = await getContactsList(
        includePresences: true,
        orderType: ContactOrderType.natural,
      );
      Log.info('联系人列表加载成功，共${contacts.length}个联系人');

      // 按字母分组
      final groups = _groupContactsByLetter(contacts);

      emit(
        ForwardChooseContactsLoaded(
          contactGroups: groups,
          allContacts: contacts,
          selectedContact: null, // 初始化为null
          totalCount: contacts.length,
        ),
      );
    } catch (e) {
      Log.error('加载联系人失败: $e');
      emit(ForwardChooseContactsError('加载联系人失败: $e'));
    }
  }

  Future<void> _onRefreshContacts(
    RefreshContacts event,
    Emitter<ForwardChooseContactsState> emit,
  ) async {
    await _onLoadContacts(const LoadContacts(), emit);
  }

  void _onSearchContacts(
    SearchContacts event,
    Emitter<ForwardChooseContactsState> emit,
  ) {
    if (state is ForwardChooseContactsLoaded) {
      final currentState = state as ForwardChooseContactsLoaded;

      if (event.query.isEmpty) {
        // 搜索为空时显示所有联系人
        final groups = _groupContactsByLetter(currentState.allContacts);
        emit(currentState.copyWith(contactGroups: groups));
      } else {
        // 搜索联系人
        final filteredContacts =
            currentState.allContacts.where((contact) {
              final query = event.query.toLowerCase();
              return contact.nickName.toLowerCase().contains(query) ||
                  contact.groupNickName.toLowerCase().contains(query);
            }).toList();

        final groups = _groupContactsByLetter(filteredContacts);
        emit(currentState.copyWith(contactGroups: groups));
      }
    }
  }

  void _onConfirmSelection(
    ConfirmSelection event,
    Emitter<ForwardChooseContactsState> emit,
  ) {}

  /// 按字母分组联系人
  List<ContactGroup> _groupContactsByLetter(List<FfiContactDetail> contacts) {
    final Map<String, List<FfiContactDetail>> groupedContacts = {};

    for (final contact in contacts) {
      // 获取联系人名称（优先使用群昵称，否则使用昵称）
      final name =
          contact.groupNickName.isNotEmpty
              ? contact.groupNickName
              : contact.nickName;

      // 获取首字母
      String firstLetter = '';
      if (name.isNotEmpty) {
        firstLetter = _getFirstLetter(name);
      }

      // 按首字母分组
      if (!groupedContacts.containsKey(firstLetter)) {
        groupedContacts[firstLetter] = [];
      }
      groupedContacts[firstLetter]!.add(contact);
    }

    // 转换为ContactGroup列表并排序
    final groups =
        groupedContacts.entries.map((entry) {
          // 对每个分组内的联系人按名称排序
          entry.value.sort((a, b) {
            final nameA =
                a.groupNickName.isNotEmpty ? a.groupNickName : a.nickName;
            final nameB =
                b.groupNickName.isNotEmpty ? b.groupNickName : b.nickName;
            return nameA.compareTo(nameB);
          });

          return ContactGroup(letter: entry.key, contacts: entry.value);
        }).toList();

    // 按字母排序
    groups.sort((a, b) => a.letter.compareTo(b.letter));

    return groups;
  }

  /// 获取字符串的首字母
  String _getFirstLetter(String text) {
    if (text.isEmpty) return '#';

    final firstChar = text[0];

    // 如果是中文字符，返回拼音首字母
    if (RegExp(r'[\u4e00-\u9fff]').hasMatch(firstChar)) {
      return _getChinesePinyin(firstChar).toUpperCase();
    }

    // 如果是英文字母，直接返回大写
    if (RegExp(r'[a-zA-Z]').hasMatch(firstChar)) {
      return firstChar.toUpperCase();
    }

    // 其他字符返回#
    return '#';
  }

  /// 简单的中文拼音转换（这里使用简化版本）
  String _getChinesePinyin(String char) {
    // 这里应该使用更完整的拼音库，这里只是示例
    // 实际项目中建议使用 pinyin 包
    final pinyinMap = {
      '阿': 'a',
      '八': 'b',
      '擦': 'c',
      '咑': 'd',
      '鹅': 'e',
      '发': 'f',
      '旮': 'g',
      '哈': 'h',
      '伊': 'i',
      '击': 'j',
      '喀': 'k',
      '垃': 'l',
      '妈': 'm',
      '拿': 'n',
      '哦': 'o',
      '啪': 'p',
      '期': 'q',
      '然': 'r',
      '撒': 's',
      '塌': 't',
      '屋': 'u',
      '蛙': 'w',
      '夕': 'x',
      '丫': 'y',
      '咋': 'z',
    };

    return pinyinMap[char] ?? char;
  }
}
