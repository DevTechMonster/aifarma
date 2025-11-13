import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../providers/chat_providers.dart';
import '../../shared/components/message_bubble.dart';
import '../../shared/utils/extensions.dart';
import 'conversation_drawer.dart';

class ChatScreen extends HookConsumerWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final question1 =
        'List the differences between Priority 1, Priority 2A, Priority 2B, and Priority 3 ICU admissions.';
    final question2 =
        'Describe the recommended management steps for anaphylactic shock in the ICU.';
    final question3 =
        'what is the steps of weaning from mechanical ventilation';
    final asyncChatState = ref.watch(chatProvider);
    final chatNotifier = ref.read(chatProvider.notifier);

    // Debugging
    final questions = [question1, question2, question3];
    final randomIndex =
        DateTime.now().millisecondsSinceEpoch % questions.length;
    final textController =
        useTextEditingController(text: questions[randomIndex]);
    final focusNode = useFocusNode();

    final scrollController = useScrollController();
    final asycnMessage = asyncChatState.value?.messages ?? [];

    // Auto-scroll when messages change
    useEffect(
      () {
        if (asycnMessage.isNotEmpty && scrollController.hasClients) {
          Future.microtask(() {
            scrollController.animateTo(
              scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          });
        }
        return null;
      },
      [asyncChatState.hasValue],
    );

    ref.listen(
      chatProvider,
      (previous, next) {
        log('listener called');
        final previousMessages = previous?.value?.messages ?? [];
        final currentMessages = next.value?.messages ?? [];
        if (currentMessages.length > previousMessages.length) {
          log('future microtask here');
          Future.microtask(() {
            if (scrollController.hasClients) {
              scrollController.animateTo(
                scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
              );
            }
          });
        }
      },
    );

    return switch (asyncChatState) {
      AsyncData(value: final chatState) => Scaffold(
          appBar: AppBar(
            title: Text(chatState.conversationTitle ?? 'AI Chat'),
            backgroundColor: context.colorScheme.surfaceContainer,
            actions: [
              IconButton(
                onPressed: () => chatNotifier.startNewConversation(),
                icon: const Icon(Icons.add),
                tooltip: 'New Conversation',
              ),
            ],
          ),
          drawer: const ConversationDrawer(),
          body: Column(
            children: [
              Expanded(
                child: chatState.messages.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chat_bubble_outline,
                              size: 64,
                              color: context.colorScheme.outline,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Start a conversation',
                              style: context.textTheme.headlineSmall?.copyWith(
                                color: context.colorScheme.outline,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Ask me anything and I\'ll help you!',
                              style: context.textTheme.bodyMedium?.copyWith(
                                color: context.colorScheme.outline,
                              ),
                            ),
                          ],
                        ),
                      )
                    : ListView.builder(
                        controller: scrollController,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        itemCount: chatState.messages.length,
                        itemBuilder: (context, index) {
                          final message = chatState.messages[index];
                          return MessageBubble(message: message);
                        },
                      ),
              ),
              if (chatState.error != null)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  color: context.colorScheme.errorContainer,
                  child: Row(
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: context.colorScheme.onErrorContainer,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          chatState.error!,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: context.colorScheme.onErrorContainer,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () => chatNotifier.clearError(),
                        icon: Icon(
                          Icons.close,
                          color: context.colorScheme.onErrorContainer,
                        ),
                      ),
                    ],
                  ),
                ),
              Container(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 16,
                  bottom: 16 + context.paddingOf.bottom,
                ),
                decoration: BoxDecoration(
                  color: context.colorScheme.surface,
                  border: Border(
                    top: BorderSide(
                      color: context.colorScheme.outline.withValues(alpha: 0.2),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: textController,
                        focusNode: focusNode,
                        maxLines: null,
                        textCapitalization: TextCapitalization.sentences,
                        decoration: InputDecoration(
                          hintText: 'Type your message...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                        ),
                        onSubmitted: (value) {
                          if (value.trim().isNotEmpty) {
                            chatNotifier.sendMessage(value);
                            textController.clear();
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    FloatingActionButton.small(
                      onPressed: chatState.isLoading
                          ? null
                          : () {
                              final message = textController.text;
                              if (message.trim().isNotEmpty) {
                                chatNotifier.sendMessage(message);
                                textController.clear();
                                focusNode.unfocus();
                              }
                            },
                      child: chatState.isLoading
                          ? SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  context.colorScheme.onPrimary,
                                ),
                              ),
                            )
                          : const Icon(Icons.send),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      _ => SizedBox(),
    };
  }
}
