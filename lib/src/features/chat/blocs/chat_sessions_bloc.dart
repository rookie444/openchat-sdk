import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:convert';
import '../../../core/utils/log.dart';
import '../services/chat_service.dart';
import '../models/chat_session.dart';

import '../../../rust/api/model/conversation.dart';

import '../../../rust/api/chat_api.dart' as chat_api;
import '../../../common/ffi.dart';

import '../models/chat_message_converter.dart';
import 'chat_sessions_event.dart';
import 'chat_sessions_state.dart';

part '../../../../generated/src/features/chat/blocs/chat_sessions_bloc.g.dart';

/// 全局单例BLoC Provider
@Riverpod(keepAlive: true)
ChatSessionsBloc chatSessionsBloc(Ref ref) {
  final chatService = ref.read(chatServiceProvider);
  Log.info('ChatSessionsBloc Provider 初始化 - 全局单例模式');
  final bloc = ChatSessionsBloc(chatService: chatService);

  // 添加应用生命周期结束时的资源释放
  ref.onDispose(() {
    Log.info('ChatSessionsBloc Provider 销毁 - 应用程序退出');
    // 确保在应用退出前释放资源
    bloc.close();
  });

  // 立即初始化数据
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Log.info('ChatSessionsBloc 预加载会话数据');
    bloc.add(const ChatSessionsEvent.loadSessionsWithArchived());
  });

  return bloc;
}

/// 聊天会话列表BLoC - 处理业务逻辑
class ChatSessionsBloc extends Bloc<ChatSessionsEvent, ChatSessionsState> {
  final ChatService _chatService;
  StreamSubscription? _messageSubscription;
  bool _hasSubscribed = false;
  bool _isClosed = false;

  ChatSessionsBloc({required ChatService chatService})
    : _chatService = chatService,
      super(const ChatSessionsState.initial()) {
    Log.info('ChatSessionsBloc 进行初始化');
    // 使用单一事件处理器，按照flutter_riverpod_bloc.mdc模式实现
    on<ChatSessionsEvent>((event, emit) async {
      // 处理异步操作
      await event.maybeMap(
        loadSessions: (e) async => await _onLoadSessions(emit),
        loadSessionsWithArchived: (e) async => await _onLoadSessionsWithArchived(emit),
        refreshSessions: (e) async => await _onRefreshSessions(emit),
        markSessionAsRead:
            (e) async => await _onMarkSessionAsRead(emit, e.conversationId),
        pinSession: (e) async => await _onPinSession(emit, e.conversationId),
        unpinSession:
            (e) async => await _onUnpinSession(emit, e.conversationId),
        muteSession: (e) async => await _onMuteSession(emit, e.conversationId),
        unmuteSession:
            (e) async => await _onUnmuteSession(emit, e.conversationId),
        deleteSession:
            (e) async => await _onDeleteSession(emit, e.conversationId),
        newMessageReceived:
            (e) async => await _onNewMessageReceived(emit, e.message),
        multipleMessagesReceived:
            (e) async => await _onMultipleMessagesReceived(emit, e.messages),
        archiveSession:
            (e) async => await _onArchiveSession(emit, e.conversationId),
        unarchiveSession:
            (e) async => await _onUnarchiveSession(emit, e.conversationId),
        loadArchivedGroup: (e) async => await _onLoadArchivedGroup(emit),
        orElse: () async {},
      );
    });

    // 确保只订阅一次
    _ensureSubscribed();
  }

  /// 确保消息订阅只初始化一次
  void _ensureSubscribed() {
    if (_isClosed) return;

    if (!_hasSubscribed) {
      Log.info('ChatSessionsBloc 初始化消息订阅');
      _messageSubscription = _chatService.listenForMessages().listen((
        chat_api.Rust2ClientMessagePayload message,
      ) {
        if (_isClosed) return;

        final payload = message.payload;
        final messageType = message.messageType;

        // 处理不同类型的消息
        if (messageType == chat_api.Rust2ClientMessageType.conversationListUpdate) {
          try {
            // 解析会话列表更新消息
            List<dynamic> jsonList = jsonDecode(payload);

            List<FfiConversation> conversations = [];
            for (final e in jsonList) {
              try {
                conversations.add(FfiConversation.fromJson(e));
              } catch (e) {
                Log.error('会话更新消息转换失败', error: e);
              }
            }

            Log.info('会话列表更新消息: ${conversations.length}条');

            // 只触发一次事件更新，避免多次UI重建
            if (conversations.isNotEmpty && !_isClosed) {
              final updatedConversations = conversations;
                      // .map((conversation) => conversation.toFlutterModel())
                      // .toList();
              add(
                ChatSessionsEvent.multipleMessagesReceived(
                  messages: updatedConversations,
                ),
              );
            }
          } catch (e) {
            Log.error('解析会话列表更新失败', error: e);
          }
        }
      });
      _hasSubscribed = true;
    }
  }

  /// 在需要时重新订阅消息
  void resubscribe() {
    if (_isClosed || _hasSubscribed) return;

    Log.info('ChatSessionsBloc 重新订阅消息');
    _hasSubscribed = false;
    _ensureSubscribed();
  }

  /// 加载会话列表
  Future<void> _onLoadSessions(Emitter<ChatSessionsState> emit) async {
    Log.debug('加载会话列表');

    // 显示加载状态
    emit(const ChatSessionsState.loading());

    try {
      // 获取会话列表
      final sessions = await _chatService.getChatSessions();
      Log.info('会话列表: ${sessions.length}条');
      Log.info('会话列表: ${sessions.map((e) => e.name).join(', ')}');

      // 排序：置顶的在前，未置顶的按最后消息时间排序
      sessions.sort((a, b) {
        if (a.isArchive != b.isArchive) {
          return a.isArchive ? -1 : 1;
        }
        if (a.isTopPinned != b.isTopPinned) {
          return a.isTopPinned ? -1 : 1;
        }
        // 新增逻辑：同为置顶时，topPinnedAt更晚的排前面
        if (a.isTopPinned && b.isTopPinned) {
          final aPinned = a.topPinnedAt ?? 0;
          final bPinned = b.topPinnedAt ?? 0;
          return bPinned.compareTo(aPinned);
        }
        return b.lastMessageTime.compareTo(a.lastMessageTime);
      });

      // 更新状态
      emit(ChatSessionsState.success(sessions: sessions));
    } catch (e, stack) {
      Log.error('加载会话列表失败', error: e, stackTrace: stack);
      emit(ChatSessionsState.failure(errorMessage: e.toString()));
    }
  }

  /// 加载会话列表（包含归档分组）
  Future<void> _onLoadSessionsWithArchived(Emitter<ChatSessionsState> emit) async {
    Log.debug('加载会话列表（包含归档分组）');

    // 显示加载状态
    emit(const ChatSessionsState.loading());

    try {
      // 获取会话列表（包含归档分组）
      final sessions = await _chatService.getConversationsWithArchived();
      Log.info('会话列表（包含归档分组）: ${sessions.length}条');
      Log.info('会话列表（包含归档分组）: ${sessions.map((e) => e.name).join(', ')}');

      // 排序：置顶的在前，未置顶的按最后消息时间排序
      sessions.sort((a, b) {
        if (a.isArchive != b.isArchive) {
          return a.isArchive ? -1 : 1;
        }
        if (a.isTopPinned != b.isTopPinned) {
          return a.isTopPinned ? -1 : 1;
        }
        // 新增逻辑：同为置顶时，topPinnedAt更晚的排前面
        if (a.isTopPinned && b.isTopPinned) {
          final aPinned = a.topPinnedAt ?? 0;
          final bPinned = b.topPinnedAt ?? 0;
          return bPinned.compareTo(aPinned);
        }
        return b.lastMessageTime.compareTo(a.lastMessageTime);
      });

      // 更新状态
      emit(ChatSessionsState.success(sessions: sessions));
    } catch (e, stack) {
      Log.error('加载会话列表（包含归档分组）失败', error: e, stackTrace: stack);
      emit(ChatSessionsState.failure(errorMessage: e.toString()));
    }
  }

  /// 刷新会话列表
  Future<void> _onRefreshSessions(Emitter<ChatSessionsState> emit) async {
    Log.debug('刷新会话列表');

    try {
      // 获取会话列表
      final sessions = await _chatService.getChatSessions();

      // 排序：置顶的在前，未置顶的按最后消息时间排序
      sessions.sort((a, b) {
        if (a.isArchive != b.isArchive) {
          return a.isArchive ? -1 : 1;
        }
        if (a.isTopPinned != b.isTopPinned) {
          return a.isTopPinned ? -1 : 1;
        }
        // 新增逻辑：同为置顶时，topPinnedAt更晚的排前面
        if (a.isTopPinned && b.isTopPinned) {
          final aPinned = a.topPinnedAt ?? 0;
          final bPinned = b.topPinnedAt ?? 0;
          return bPinned.compareTo(aPinned);
        }
        return b.lastMessageTime.compareTo(a.lastMessageTime);
      });

      // 更新状态
      emit(ChatSessionsState.success(sessions: sessions));
    } catch (e, stack) {
      Log.error('刷新会话列表失败', error: e, stackTrace: stack);

      // 保持当前状态，避免显示错误
      state.maybeMap(
        success: (successState) {
          // 如果之前已经加载成功，保持之前的数据
          // 不作任何操作
        },
        orElse: () {
          // 如果之前未加载成功，显示错误
          emit(ChatSessionsState.failure(errorMessage: e.toString()));
        },
      );
    }
  }

  /// 标记会话为已读
  Future<void> _onMarkSessionAsRead(
    Emitter<ChatSessionsState> emit,
    String conversationId,
  ) async {
    Log.debug('标记会话为已读: $conversationId');

    try {
      // 调用服务标记为已读
      await _chatService.markSessionAsReadWithConversationId(conversationId: conversationId);

      // 更新本地状态
      state.maybeMap(
        success: (successState) {
          final updatedSessions = List.of(successState.sessions);
          final index = updatedSessions.indexWhere(
            (s) => s.conversationId == conversationId,
          );

          if (index != -1) {
            final oldSession = updatedSessions[index];
            updatedSessions[index] = oldSession.copyWith(unreadCount: 0);
            emit(ChatSessionsState.success(sessions: updatedSessions));
          }
        },
        orElse: () {},
      );
    } catch (e, stack) {
      Log.error('标记会话为已读失败', error: e, stackTrace: stack);
    }
  }

  /// 置顶会话
  Future<void> _onPinSession(
    Emitter<ChatSessionsState> emit,
    String conversationId,
  ) async {
    Log.debug('置顶会话: $conversationId');

    try {
      // 调用服务置顶会话
      final success = await _chatService.pinChatSession(
        conversationId: conversationId,
      );

      if (success) {
        // 更新本地状态
        state.maybeMap(
          success: (successState) {
            final updatedSessions = List.of(successState.sessions);
            final index = updatedSessions.indexWhere(
              (s) => s.conversationId == conversationId,
            );

            if (index != -1) {
              final oldSession = updatedSessions[index];
              updatedSessions[index] = oldSession.copyWith(
                isTopPinned: true, 
                topPinnedAt: DateTime.now().millisecondsSinceEpoch
              );

              // 重新排序
              updatedSessions.sort((a, b) {
                if (a.isArchive != b.isArchive) {
                  return a.isArchive ? -1 : 1;
                }
                if (a.isTopPinned != b.isTopPinned) {
                  return a.isTopPinned ? -1 : 1;
                }
                // 新增逻辑：同为置顶时，topPinnedAt更晚的排前面
                if (a.isTopPinned && b.isTopPinned) {
                  final aPinned = a.topPinnedAt ?? 0;
                  final bPinned = b.topPinnedAt ?? 0;
                  return bPinned.compareTo(aPinned);
                }
                return b.lastMessageTime.compareTo(a.lastMessageTime);
              });

              emit(ChatSessionsState.success(sessions: updatedSessions));
            }
          },
          orElse: () {},
        );
      }
    } catch (e, stack) {
      Log.error('置顶会话失败', error: e, stackTrace: stack);
    }
  }

  /// 取消置顶会话
  Future<void> _onUnpinSession(
    Emitter<ChatSessionsState> emit,
    String conversationId,
  ) async {
    Log.debug('取消置顶会话: $conversationId');

    try {
      // 调用服务取消置顶会话
      final success = await _chatService.unpinChatSession(
        conversationId: conversationId,
      );

      if (success) {
        // 更新本地状态
        state.maybeMap(
          success: (successState) {
            final updatedSessions = List.of(successState.sessions);
            final index = updatedSessions.indexWhere(
              (s) => s.conversationId == conversationId,
            );

            if (index != -1) {
              final oldSession = updatedSessions[index];
              updatedSessions[index] = oldSession.copyWith(
                isTopPinned: false, 
                topPinnedAt: 0
              );

              // 重新排序
              updatedSessions.sort((a, b) {
                if (a.isArchive != b.isArchive) {
                  return a.isArchive ? -1 : 1;
                }
                if (a.isTopPinned != b.isTopPinned) {
                  return a.isTopPinned ? -1 : 1;
                }
                // 新增逻辑：同为置顶时，topPinnedAt更晚的排前面
                if (a.isTopPinned && b.isTopPinned) {
                  final aPinned = a.topPinnedAt ?? 0;
                  final bPinned = b.topPinnedAt ?? 0;
                  return bPinned.compareTo(aPinned);
                }
                return b.lastMessageTime.compareTo(a.lastMessageTime);
              });

              emit(ChatSessionsState.success(sessions: updatedSessions));
            }
          },
          orElse: () {},
        );
      }
    } catch (e, stack) {
      Log.error('取消置顶会话失败', error: e, stackTrace: stack);
    }
  }

  /// 静音会话
  Future<void> _onMuteSession(
    Emitter<ChatSessionsState> emit,
    String conversationId,
  ) async {
    Log.debug('静音会话: $conversationId');

    try {
      // 调用服务静音会话
      final success = await _chatService.muteChatSession(
        conversationId: conversationId,
      );

      if (success) {
        // 更新本地状态
        state.maybeMap(
          success: (successState) {
            final updatedSessions = List.of(successState.sessions);
            final index = updatedSessions.indexWhere(
              (s) => s.conversationId == conversationId,
            );

            if (index != -1) {
              final oldSession = updatedSessions[index];
              updatedSessions[index] = oldSession.copyWith(isMuted: true);
              emit(ChatSessionsState.success(sessions: updatedSessions));
            }
          },
          orElse: () {},
        );
      }
    } catch (e, stack) {
      Log.error('静音会话失败', error: e, stackTrace: stack);
    }
  }

  /// 取消静音会话
  Future<void> _onUnmuteSession(
    Emitter<ChatSessionsState> emit,
    String conversationId,
  ) async {
    Log.debug('取消静音会话: $conversationId');

    try {
      // 调用服务取消静音会话
      final success = await _chatService.unmuteChatSession(
        conversationId: conversationId,
      );

      if (success) {
        // 更新本地状态
        state.maybeMap(
          success: (successState) {
            final updatedSessions = List.of(successState.sessions);
            final index = updatedSessions.indexWhere(
              (s) => s.conversationId == conversationId,
            );

            if (index != -1) {
              final oldSession = updatedSessions[index];
              updatedSessions[index] = oldSession.copyWith(isMuted: false);
              emit(ChatSessionsState.success(sessions: updatedSessions));
            }
          },
          orElse: () {},
        );
      }
    } catch (e, stack) {
      Log.error('取消静音会话失败', error: e, stackTrace: stack);
    }
  }

  /// 删除会话
  Future<void> _onDeleteSession(
    Emitter<ChatSessionsState> emit,
    String conversationId,
  ) async {
    Log.debug('删除会话: $conversationId');

    try {
      // 调用服务删除会话
      final success = await _chatService.deleteChatSession(
        conversationId: conversationId,
      );

      if (success) {
        // 更新本地状态
        state.maybeMap(
          success: (successState) {
            final updatedSessions = List.of(successState.sessions)
              ..removeWhere((s) => s.conversationId == conversationId);
            emit(ChatSessionsState.success(sessions: updatedSessions));
          },
          orElse: () {},
        );
      }
    } catch (e, stack) {
      Log.error('删除会话失败', error: e, stackTrace: stack);
    }
  }

  /// 接收到新消息后更新会话列表
  Future<void> _onNewMessageReceived(
    Emitter<ChatSessionsState> emit,
    FfiConversation session,
  ) async {
    Log.info('会话ID: ${session.conversationId}, 会话名称: ${session.name}');

    // 只在当前状态为成功状态时进行更新
    await state.maybeMap(
      success: (successState) async {
        final updatedSessions = List.of(successState.sessions);
        final conversationId = session.conversationId;

        // 查找消息所属的会话
        final sessionIndex = updatedSessions.indexWhere(
          (s) => s.conversationId == conversationId,
        );

        Log.info('会话ID: $conversationId, 会话索引: $sessionIndex');

        if (sessionIndex != -1) {
          // 更新现有会话
          final existingSession = updatedSessions[sessionIndex];

          // 更新会话的最后消息内容和时间
          final updatedSession = existingSession.copyWith(
            lastMessage: session.lastMessage,
            lastMessageTime: session.lastMessageTime,
            unreadCount: existingSession.unreadCount + 1,
          );

          // 替换会话
          updatedSessions[sessionIndex] = updatedSession;

          // 重新排序：置顶的在前，未置顶的按最后消息时间排序
          updatedSessions.sort((a, b) { 
            if (a.isArchive != b.isArchive) {
              return a.isArchive ? -1 : 1;
            }
            if (a.isTopPinned != b.isTopPinned) {
              return a.isTopPinned ? -1 : 1;
            }
            // 新增逻辑：同为置顶时，topPinnedAt更晚的排前面
            if (a.isTopPinned && b.isTopPinned) {
              final aPinned = a.topPinnedAt ?? 0;
              final bPinned = b.topPinnedAt ?? 0;
              return bPinned.compareTo(aPinned);
            }
            return b.lastMessageTime.compareTo(a.lastMessageTime);
          });

          // 更新状态
          emit(ChatSessionsState.success(sessions: updatedSessions));
        } else {
          // 如果会话不存在于当前列表，添加新会话
          updatedSessions.add(session);

          // 重新排序
          updatedSessions.sort((a, b) {
            if (a.isArchive != b.isArchive) {
              return a.isArchive ? -1 : 1;
            }
            if (a.isTopPinned != b.isTopPinned) {
              return a.isTopPinned ? -1 : 1;
            }
            // 新增逻辑：同为置顶时，topPinnedAt更晚的排前面
            if (a.isTopPinned && b.isTopPinned) {
              final aPinned = a.topPinnedAt ?? 0;
              final bPinned = b.topPinnedAt ?? 0;
              return bPinned.compareTo(aPinned);
            }
            return b.lastMessageTime.compareTo(a.lastMessageTime);
          });

          emit(ChatSessionsState.success(sessions: updatedSessions));
        }
        return null; // 显式返回，确保异步操作完成
      },
      orElse: () async {
        // 如果当前不是成功状态，则加载会话列表
        await _onLoadSessionsWithArchived(emit);
        return null; // 显式返回，确保异步操作完成
      },
    );
  }

  /// 处理多条新消息
  Future<void> _onMultipleMessagesReceived(
    Emitter<ChatSessionsState> emit,
    List<FfiConversation> messages,
  ) async {
    Log.info('收到多条消息: ${messages.length}条');

    // 只在当前状态为成功状态时进行更新
    await state.maybeMap(
      success: (successState) async {
        final updatedSessions = List.of(successState.sessions);
        bool needUpdate = false;

        // 获取归档分组
        final archivedGroup = await _chatService.getArchivedGroup();
        final archiveGroupIndex = updatedSessions.indexWhere(
          (s) => s.conversationId == "archived_group" && s.isArchive,
        );

        if (archivedGroup != null) {
          if (archiveGroupIndex != -1) {
            updatedSessions[archiveGroupIndex] = archivedGroup;
            needUpdate = true;
          } else {
            updatedSessions.add(archivedGroup);
            needUpdate = true;
          }
        } else if (archiveGroupIndex != -1) {
          // 如果归档分组为空且存在归档分组，则移除
          updatedSessions.removeAt(archiveGroupIndex);
          needUpdate = true;
        }

        // 遍历所有新消息
        for (final session in messages) {
          final conversationId = session.conversationId;

          // 跳过已归档的会话
          if (session.isArchive) {
            continue;
          }

          // 更新或添加非归档会话
          final sessionIndex = updatedSessions.indexWhere(
            (s) => s.conversationId == conversationId,
          );

          if (sessionIndex != -1) {
            // 更新现有会话
            updatedSessions[sessionIndex] = session;
            needUpdate = true;
          } else {
            // 添加新会话
            updatedSessions.add(session);
            needUpdate = true;
          }
        }

        if (needUpdate) {
          // 重新排序：置顶的在前，未置顶的按最后消息时间排序
          updatedSessions.sort((a, b) {
            if (a.isArchive != b.isArchive) {
              return a.isArchive ? -1 : 1;
            }
            if (a.isTopPinned != b.isTopPinned) {
              return a.isTopPinned ? -1 : 1;
            }
            // 新增逻辑：同为置顶时，topPinnedAt更晚的排前面
            if (a.isTopPinned && b.isTopPinned) {
              final aPinned = a.topPinnedAt ?? 0;
              final bPinned = b.topPinnedAt ?? 0;
              return bPinned.compareTo(aPinned);
            }
            return b.lastMessageTime.compareTo(a.lastMessageTime);
          });

          // 更新状态
          emit(ChatSessionsState.success(sessions: updatedSessions));
        }
        return null;
      },
      orElse: () async {
        // 如果当前不是成功状态，则加载会话列表
        await _onLoadSessionsWithArchived(emit);
        return null;
      },
    );
  }

  /// 归档会话
  Future<void> _onArchiveSession(
    Emitter<ChatSessionsState> emit,
    String conversationId,
  ) async {
    Log.debug('归档会话: $conversationId');

    try {
      // 调用服务归档会话
      final success = await _chatService.archiveChatSession(
        conversationId: conversationId,
      );

      if (success) {
        // 更新本地状态
        await state.maybeMap(
          success: (successState) async {
            final updatedSessions = List<FfiConversation>.from(successState.sessions);
            final index = updatedSessions.indexWhere(
              (s) => s.conversationId == conversationId,
            );
            Log.info('会话索引: $index');

            if (index != -1) {
              // 从列表中移除会话
              updatedSessions.removeAt(index);
              // 获取最新的归档分组
              final archivedGroup = await _chatService.getArchivedGroup();
              
              // 如果存在归档分组，更新或添加它
              if (archivedGroup != null) {
                final archiveGroupIndex = updatedSessions.indexWhere(
                  (s) => s.conversationId == "archived_group" && s.isArchive,
                );
                
                if (archiveGroupIndex != -1) {
                  updatedSessions[archiveGroupIndex] = archivedGroup;
                } else {
                  updatedSessions.add(archivedGroup);
                }
              }
              // 重新排序：归档的会话排在前面
              updatedSessions.sort((a, b) {
                if (a.isArchive != b.isArchive) {
                  return a.isArchive ? -1 : 1;
                }
                if (a.isTopPinned != b.isTopPinned) {
                  return a.isTopPinned ? -1 : 1;
                }
                if (a.isTopPinned && b.isTopPinned) {
                  final aPinned = a.topPinnedAt ?? 0;
                  final bPinned = b.topPinnedAt ?? 0;
                  return bPinned.compareTo(aPinned);
                }
                return b.lastMessageTime.compareTo(a.lastMessageTime);
              });
              if (!emit.isDone) {
                emit(ChatSessionsState.success(sessions: updatedSessions));
              }
            }
            return null;
          },
          orElse: () async => null,
        );
      }
    } catch (e, stack) {
      Log.error('归档会话失败', error: e, stackTrace: stack);
    }
  }

  /// 取消归档会话
  Future<void> _onUnarchiveSession(
    Emitter<ChatSessionsState> emit,
    String conversationId,
  ) async {
    Log.debug('取消归档会话: $conversationId');

    try {
      // 调用服务取消归档会话
      final success = await _chatService.unarchiveChatSession(
        conversationId: conversationId,
      );

      if (success) {
        // 更新本地状态
        state.maybeMap(
          success: (successState) {
            final updatedSessions = List.of(successState.sessions);
            final index = updatedSessions.indexWhere(
              (s) => s.conversationId == conversationId,
            );

            if (index != -1) {
              final oldSession = updatedSessions[index];
              updatedSessions[index] = oldSession.copyWith(
                isArchive: false,
              );

              // 重新排序：归档的会话排在前面
              updatedSessions.sort((a, b) {
                if (a.isArchive != b.isArchive) {
                  return a.isArchive ? -1 : 1;
                }
                if (a.isTopPinned != b.isTopPinned) {
                  return a.isTopPinned ? -1 : 1;
                }
                if (a.isTopPinned && b.isTopPinned) {
                  final aPinned = a.topPinnedAt ?? 0;
                  final bPinned = b.topPinnedAt ?? 0;
                  return bPinned.compareTo(aPinned);
                }
                return b.lastMessageTime.compareTo(a.lastMessageTime);
              });

              emit(ChatSessionsState.success(sessions: updatedSessions));
            }
          },
          orElse: () {},
        );
      }
    } catch (e, stack) {
      Log.error('取消归档会话失败', error: e, stackTrace: stack);
    }
  }

  /// 加载归档会话的分组标题
  Future<void> _onLoadArchivedGroup(Emitter<ChatSessionsState> emit) async {
    Log.debug('加载归档会话的分组标题');

    try {
      // 获取归档分组
      final archivedGroup = await _chatService.getArchivedGroup();
      
      // 更新状态
      state.maybeMap(
        success: (successState) {
          final updatedSessions = List<FfiConversation>.from(successState.sessions);
          
          // 查找并更新归档分组
          final archiveGroupIndex = updatedSessions.indexWhere(
            (s) => s.conversationId == "archived_group" && s.isArchive,
          );
          
          if (archiveGroupIndex != -1 && archivedGroup != null) {
            // 确保 archivedGroup 不为空后再赋值
            updatedSessions[archiveGroupIndex] = archivedGroup;
            Log.info('会话索引: 666');
            if (!emit.isDone) {
              emit(ChatSessionsState.success(sessions: updatedSessions));
            }
          } else if (archivedGroup != null) {
            // 如果找不到归档分组但获取到了新的归档分组，则添加它
            updatedSessions.add(archivedGroup);
            if (!emit.isDone) {
              emit(ChatSessionsState.success(sessions: updatedSessions));
            }
          }
        },
        orElse: () {},
      );
    } catch (e, stack) {
      Log.error('加载归档会话的分组标题失败', error: e, stackTrace: stack);
    }
  }

  @override
  Future<void> close() {
    _isClosed = true;
    Log.info('ChatSessionsBloc 进行关闭');
    if (_hasSubscribed) {
      _messageSubscription?.cancel();
      // 通知服务取消订阅
      _chatService.unsubscribeMessages();
      _hasSubscribed = false;
    }
    return super.close();
  }
}
