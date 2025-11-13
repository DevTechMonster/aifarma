// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for ChatService

@ProviderFor(chatService)
const chatServiceProvider = ChatServiceProvider._();

/// Provider for ChatService

final class ChatServiceProvider
    extends $FunctionalProvider<ChatService, ChatService, ChatService>
    with $Provider<ChatService> {
  /// Provider for ChatService
  const ChatServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chatServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chatServiceHash();

  @$internal
  @override
  $ProviderElement<ChatService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ChatService create(Ref ref) {
    return chatService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChatService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChatService>(value),
    );
  }
}

String _$chatServiceHash() => r'edc1505c5e326bfe2d58661adb9ec9e2c9824888';

/// Provider for ChatRepository

@ProviderFor(chatRepository)
const chatRepositoryProvider = ChatRepositoryProvider._();

/// Provider for ChatRepository

final class ChatRepositoryProvider
    extends $FunctionalProvider<ChatRepository, ChatRepository, ChatRepository>
    with $Provider<ChatRepository> {
  /// Provider for ChatRepository
  const ChatRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chatRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chatRepositoryHash();

  @$internal
  @override
  $ProviderElement<ChatRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ChatRepository create(Ref ref) {
    return chatRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChatRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChatRepository>(value),
    );
  }
}

String _$chatRepositoryHash() => r'7f5232fb0302d23737f8e08f190f988fca572dbe';

/// Provider for ConversationRepository

@ProviderFor(conversationRepository)
const conversationRepositoryProvider = ConversationRepositoryProvider._();

/// Provider for ConversationRepository

final class ConversationRepositoryProvider
    extends
        $FunctionalProvider<
          ConversationRepository,
          ConversationRepository,
          ConversationRepository
        >
    with $Provider<ConversationRepository> {
  /// Provider for ConversationRepository
  const ConversationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'conversationRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$conversationRepositoryHash();

  @$internal
  @override
  $ProviderElement<ConversationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ConversationRepository create(Ref ref) {
    return conversationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConversationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConversationRepository>(value),
    );
  }
}

String _$conversationRepositoryHash() =>
    r'682095b714c120fb354832539aebdac174d3b0f0';

/// Provider to watch all conversations

@ProviderFor(conversationsList)
const conversationsListProvider = ConversationsListProvider._();

/// Provider to watch all conversations

final class ConversationsListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Conversation>>,
          List<Conversation>,
          Stream<List<Conversation>>
        >
    with
        $FutureModifier<List<Conversation>>,
        $StreamProvider<List<Conversation>> {
  /// Provider to watch all conversations
  const ConversationsListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'conversationsListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$conversationsListHash();

  @$internal
  @override
  $StreamProviderElement<List<Conversation>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Conversation>> create(Ref ref) {
    return conversationsList(ref);
  }
}

String _$conversationsListHash() => r'4a562c813d8e1a6d8afb332520213e0aad044e1b';

/// Main chat controller that manages chat state

@ProviderFor(ChatNotifier)
const chatProvider = ChatNotifierProvider._();

/// Main chat controller that manages chat state
final class ChatNotifierProvider
    extends $AsyncNotifierProvider<ChatNotifier, ChatState> {
  /// Main chat controller that manages chat state
  const ChatNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chatProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chatNotifierHash();

  @$internal
  @override
  ChatNotifier create() => ChatNotifier();
}

String _$chatNotifierHash() => r'52fc0be7fd9725bea320ff18735e03f2f57f4dff';

/// Main chat controller that manages chat state

abstract class _$ChatNotifier extends $AsyncNotifier<ChatState> {
  FutureOr<ChatState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<ChatState>, ChatState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ChatState>, ChatState>,
              AsyncValue<ChatState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(chatMessagesAsync)
const chatMessagesAsyncProvider = ChatMessagesAsyncProvider._();

final class ChatMessagesAsyncProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Message>>,
          List<Message>,
          FutureOr<List<Message>>
        >
    with $FutureModifier<List<Message>>, $FutureProvider<List<Message>> {
  const ChatMessagesAsyncProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chatMessagesAsyncProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chatMessagesAsyncHash();

  @$internal
  @override
  $FutureProviderElement<List<Message>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Message>> create(Ref ref) {
    return chatMessagesAsync(ref);
  }
}

String _$chatMessagesAsyncHash() => r'a10f1ddf855bc7bc1c0acf3ceddeee62182b8520';

@ProviderFor(conversationIdAsync)
const conversationIdAsyncProvider = ConversationIdAsyncProvider._();

final class ConversationIdAsyncProvider
    extends $FunctionalProvider<AsyncValue<String?>, String?, FutureOr<String?>>
    with $FutureModifier<String?>, $FutureProvider<String?> {
  const ConversationIdAsyncProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'conversationIdAsyncProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$conversationIdAsyncHash();

  @$internal
  @override
  $FutureProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String?> create(Ref ref) {
    return conversationIdAsync(ref);
  }
}

String _$conversationIdAsyncHash() =>
    r'70f3e212bfee3423d97606877cf2435f7db69d60';
