// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../../src/features/contacts/chat_demo/blocs/chat_list_bloc.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatListBlocHash() => r'4cb1a9dd1c11d5368319838cd9c842b15a8c72e1';

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

/// See also [chatListBloc].
@ProviderFor(chatListBloc)
const chatListBlocProvider = ChatListBlocFamily();

/// See also [chatListBloc].
class ChatListBlocFamily extends Family<ChatListBloc> {
  /// See also [chatListBloc].
  const ChatListBlocFamily();

  /// See also [chatListBloc].
  ChatListBlocProvider call(FfiChatType chatType, int targetId) {
    return ChatListBlocProvider(chatType, targetId);
  }

  @override
  ChatListBlocProvider getProviderOverride(
    covariant ChatListBlocProvider provider,
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
  String? get name => r'chatListBlocProvider';
}

/// See also [chatListBloc].
class ChatListBlocProvider extends AutoDisposeProvider<ChatListBloc> {
  /// See also [chatListBloc].
  ChatListBlocProvider(FfiChatType chatType, int targetId)
    : this._internal(
        (ref) => chatListBloc(ref as ChatListBlocRef, chatType, targetId),
        from: chatListBlocProvider,
        name: r'chatListBlocProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$chatListBlocHash,
        dependencies: ChatListBlocFamily._dependencies,
        allTransitiveDependencies:
            ChatListBlocFamily._allTransitiveDependencies,
        chatType: chatType,
        targetId: targetId,
      );

  ChatListBlocProvider._internal(
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
  Override overrideWith(
    ChatListBloc Function(ChatListBlocRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChatListBlocProvider._internal(
        (ref) => create(ref as ChatListBlocRef),
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
  AutoDisposeProviderElement<ChatListBloc> createElement() {
    return _ChatListBlocProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatListBlocProvider &&
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
mixin ChatListBlocRef on AutoDisposeProviderRef<ChatListBloc> {
  /// The parameter `chatType` of this provider.
  FfiChatType get chatType;

  /// The parameter `targetId` of this provider.
  int get targetId;
}

class _ChatListBlocProviderElement
    extends AutoDisposeProviderElement<ChatListBloc>
    with ChatListBlocRef {
  _ChatListBlocProviderElement(super.provider);

  @override
  FfiChatType get chatType => (origin as ChatListBlocProvider).chatType;
  @override
  int get targetId => (origin as ChatListBlocProvider).targetId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
