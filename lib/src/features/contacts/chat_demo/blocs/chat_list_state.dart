import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/chat_message.dart';

part '../../../../../generated/src/features/contacts/chat_demo/blocs/chat_list_state.freezed.dart';

// 定义聊天详情页的状态类型
@freezed
class ChatListState with _$ChatListState {
  // 初始状态
  const factory ChatListState.initial() = _Initial;

  // 加载中状态
  const factory ChatListState.loading() = _Loading;

  // 成功状态 - 显示消息列表
  const factory ChatListState.success({
    required String conversationId,
    required String conversationName,
    @Default(0) int conversationMemberCount,
    @Default(0) int totalUnreadCount,
    String? conversationAvatar,
    required List<ChatMessage> messages,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasReachedEnd,
    ChatMessage? replyToMessage,
  }) = _Success;

  // 输入状态 - 正在输入新消息
  const factory ChatListState.input({
    required String conversationId,
    required String conversationName,
    String? conversationAvatar,
    @Default(0) int conversationMemberCount,
    @Default(0) int totalUnreadCount,
    required List<ChatMessage> messages,
    @Default('') String inputText,
    @Default(false) bool isInputValid,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasReachedEnd,
    ChatMessage? replyToMessage,
  }) = _Input;

  // 发送中状态 - 正在发送消息
  const factory ChatListState.sending({
    required String conversationId,
    required String conversationName,
    String? conversationAvatar,
    @Default(0) int conversationMemberCount,
    @Default(0) int totalUnreadCount,
    required List<ChatMessage> messages,
    @Default('') String inputText,
    required ChatMessage pendingMessage,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasReachedEnd,
    ChatMessage? replyToMessage,
  }) = _Sending;

  // 错误状态
  const factory ChatListState.failure({
    String? conversationId,
    String? conversationName,
    String? conversationAvatar,
    @Default([]) List<ChatMessage> messages,
    required String errorMessage,
  }) = _Failure;
}
