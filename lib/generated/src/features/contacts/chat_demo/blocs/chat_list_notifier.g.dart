// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/features/contacts/chat_demo/blocs/chat_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatListNotifierHash() => r'a2a5b75cd02b16f20c367f4e3b89a07e8e2c9cd5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ChatListNotifier
    extends BuildlessAutoDisposeNotifier<ChatListState> {
  late final FfiChatType chatType;
  late final int targetId;

  ChatListState build(FfiChatType chatType, int targetId);
}

/// See also [ChatListNotifier].
@ProviderFor(ChatListNotifier)
const chatListNotifierProvider = ChatListNotifierFamily();

/// See also [ChatListNotifier].
class ChatListNotifierFamily extends Family<ChatListState> {
  /// See also [ChatListNotifier].
  const ChatListNotifierFamily();

  /// See also [ChatListNotifier].
  ChatListNotifierProvider call(FfiChatType chatType, int targetId) {
    return ChatListNotifierProvider(chatType, targetId);
  }

  @override
  ChatListNotifierProvider getProviderOverride(
    covariant ChatListNotifierProvider provider,
  ) {
    return call(provider.chatType, provider.targetId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'chatListNotifierProvider';
}

/// See also [ChatListNotifier].
class ChatListNotifierProvider
    extends AutoDisposeNotifierProviderImpl<ChatListNotifier, ChatListState> {
  /// See also [ChatListNotifier].
  ChatListNotifierProvider(FfiChatType chatType, int targetId)
    : this._internal(
        () =>
            ChatListNotifier()
              ..chatType = chatType
              ..targetId = targetId,
        from: chatListNotifierProvider,
        name: r'chatListNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$chatListNotifierHash,
        dependencies: ChatListNotifierFamily._dependencies,
        allTransitiveDependencies:
            ChatListNotifierFamily._allTransitiveDependencies,
        chatType: chatType,
        targetId: targetId,
      );

  ChatListNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.chatType,
    required this.targetId,
  }) : super.internal();

  final FfiChatType chatType;
  final int targetId;

  @override
  ChatListState runNotifierBuild(covariant ChatListNotifier notifier) {
    return notifier.build(chatType, targetId);
  }

  @override
  Override overrideWith(ChatListNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatListNotifierProvider._internal(
        () =>
            create()
              ..chatType = chatType
              ..targetId = targetId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        chatType: chatType,
        targetId: targetId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ChatListNotifier, ChatListState>
  createElement() {
    return _ChatListNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatListNotifierProvider &&
        other.chatType == chatType &&
        other.targetId == targetId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, chatType.hashCode);
    hash = _SystemHash.combine(hash, targetId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChatListNotifierRef on AutoDisposeNotifierProviderRef<ChatListState> {
  /// The parameter `chatType` of this provider.
  FfiChatType get chatType;

  /// The parameter `targetId` of this provider.
  int get targetId;
}

class _ChatListNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<ChatListNotifier, ChatListState>
    with ChatListNotifierRef {
  _ChatListNotifierProviderElement(super.provider);

  @override
  FfiChatType get chatType => (origin as ChatListNotifierProvider).chatType;
  @override
  int get targetId => (origin as ChatListNotifierProvider).targetId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
