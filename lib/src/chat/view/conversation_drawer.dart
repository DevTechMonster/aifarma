import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import '../models/message.dart';
import '../providers/chat_providers.dart';
import '../../shared/utils/extensions.dart';

class ConversationDrawer extends ConsumerWidget {
  const ConversationDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final conversationsAsync = ref.watch(conversationsListProvider);
    final chatNotifier = ref.read(chatProvider.notifier);
    final asyncConversationId = ref.watch(conversationIdAsyncProvider);

    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: context.colorScheme.primaryContainer,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.chat,
                  size: 48,
                  color: context.colorScheme.onPrimaryContainer,
                ),
                const SizedBox(height: 8),
                Text(
                  'Conversations',
                  style: context.textTheme.headlineSmall?.copyWith(
                    color: context.colorScheme.onPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FilledButton.icon(
              onPressed: () {
                chatNotifier.startNewConversation();
                context.pop();
              },
              icon: const Icon(Icons.add),
              label: const Text('New Conversation'),
              style: FilledButton.styleFrom(
                minimumSize: const Size(double.infinity, 48),
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: conversationsAsync.when(
              data: (conversations) {
                if (conversations.isEmpty) {
                  return Center(
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
                          'No conversations yet',
                          style: context.textTheme.bodyLarge?.copyWith(
                            color: context.colorScheme.outline,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Start a new conversation\nto see it here',
                          textAlign: TextAlign.center,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: context.colorScheme.outline,
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return switch (asyncConversationId) {
                  AsyncData(value: final conversationId) => ListView.builder(
                      itemCount: conversations.length,
                      itemBuilder: (context, index) {
                        final conversation = conversations[index];
                        final isSelected = conversation.id == conversationId;

                        return ConversationTile(
                          conversation: conversation,
                          isSelected: isSelected,
                          onTap: () {
                            chatNotifier.loadConversation(conversation.id);
                            Navigator.pop(context);
                          },
                          onDelete: () async {
                            final shouldDelete = await showDialog<bool>(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Delete Conversation'),
                                content: const Text(
                                  'Are you sure you want to delete this conversation? This action cannot be undone.',
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, false),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, true),
                                    style: TextButton.styleFrom(
                                      foregroundColor:
                                          context.colorScheme.error,
                                    ),
                                    child: const Text('Delete'),
                                  ),
                                ],
                              ),
                            );

                            if (shouldDelete ?? false) {
                              final conversationRepo =
                                  ref.read(conversationRepositoryProvider);
                              await conversationRepo
                                  .deleteConversation(conversation.id);

                              // If deleted conversation is current, start new conversation
                              if (isSelected) {
                                chatNotifier.startNewConversation();
                              }
                            }
                          },
                        );
                      },
                    ),
                  _ => SizedBox(),
                };
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (error, stack) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 48,
                      color: context.colorScheme.error,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Error loading conversations',
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: context.colorScheme.error,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      error.toString(),
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: context.colorScheme.outline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ConversationTile extends StatelessWidget {
  final Conversation conversation;
  final bool isSelected;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const ConversationTile({
    super.key,
    required this.conversation,
    required this.isSelected,
    required this.onTap,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: isSelected,
      leading: CircleAvatar(
        backgroundColor: isSelected
            ? context.colorScheme.primary
            : context.colorScheme.surfaceContainerHighest,
        child: Icon(
          Icons.chat_bubble,
          color: isSelected
              ? context.colorScheme.onPrimary
              : context.colorScheme.onSurfaceVariant,
          size: 20,
        ),
      ),
      title: Text(
        conversation.title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: isSelected
            ? context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.colorScheme.primary,
              )
            : null,
      ),
      subtitle: Text(
        _formatDate(conversation.updatedAt),
        style: context.textTheme.bodySmall,
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete_outline, size: 20),
        onPressed: onDelete,
        tooltip: 'Delete conversation',
      ),
      onTap: onTap,
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays == 0) {
      return DateFormat.jm().format(date);
    } else if (difference.inDays == 1) {
      return 'Yesterday';
    } else if (difference.inDays < 7) {
      return DateFormat.E().format(date);
    } else {
      return DateFormat.MMMd().format(date);
    }
  }
}
