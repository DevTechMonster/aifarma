import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/chat_state.dart';
import '../models/message.dart';
import 'ai_service.dart';

part 'chat_provider.g.dart';

@riverpod
class ChatNotifier extends _$ChatNotifier {
  @override
  ChatState build() {
    return const ChatState();
  }

  Future<void> sendMessage(String content) async {
    if (content.trim().isEmpty) return;

    final aiService = ref.read(aiServiceProvider);
    final userMessage = Message(
      id: aiService.generateMessageId(),
      content: content.trim(),
      type: MessageType.user,
      timestamp: DateTime.now(),
    );

    state = state.copyWith(
      messages: [...state.messages, userMessage],
      isLoading: true,
    );

    try {
      final aiMessage = Message(
        id: aiService.generateMessageId(),
        content: '',
        type: MessageType.ai,
        timestamp: DateTime.now(),
        isStreaming: true,
      );

      state = state.copyWith(
        messages: [...state.messages, aiMessage],
        isLoading: false,
      );

      aiService.getAiResponse(content).listen(
        (chunk) {
          final updatedMessages = state.messages.map((msg) {
            if (msg.id == aiMessage.id) {
              return msg.copyWith(
                content: msg.content + chunk,
              );
            }
            return msg;
          }).toList();

          state = state.copyWith(messages: updatedMessages);
        },
        onDone: () {
          final updatedMessages = state.messages.map((msg) {
            if (msg.id == aiMessage.id) {
              return msg.copyWith(isStreaming: false);
            }
            return msg;
          }).toList();

          state = state.copyWith(messages: updatedMessages);
        },
        onError: (error) {
          state = state.copyWith(
            error: error.toString(),
            isLoading: false,
          );
        },
      );
    } catch (error) {
      state = state.copyWith(
        error: error.toString(),
        isLoading: false,
      );
    }
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  void clearMessages() {
    state = const ChatState();
  }
}