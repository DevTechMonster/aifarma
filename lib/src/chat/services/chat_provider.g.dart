// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChatNotifier)
const chatProvider = ChatNotifierProvider._();

final class ChatNotifierProvider
    extends $NotifierProvider<ChatNotifier, ChatState> {
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChatState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChatState>(value),
    );
  }
}

String _$chatNotifierHash() => r'befa0b159208837530a582578d38380fa2c3df56';

abstract class _$ChatNotifier extends $Notifier<ChatState> {
  ChatState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ChatState, ChatState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ChatState, ChatState>, ChatState, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
