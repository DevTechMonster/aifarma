import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final aiServiceProvider = Provider((ref) => AiService());

class AiService {
  Stream<String> getAiResponse(String userMessage) async* {
    await Future.delayed(const Duration(milliseconds: 500));

    final mockResponses = [
      'Based on your question about \'$userMessage\', I can help you with that.',
      'Here\'s some detailed information about your query.',
      'As an AI assistant, I\'m designed to provide helpful and accurate responses.',
      'Let me know if you need any clarification or have additional questions!',
    ];

    final selectedResponse = mockResponses[userMessage.length % mockResponses.length];
    final words = selectedResponse.split(' ');

    for (int i = 0; i < words.length; i++) {
      await Future.delayed(const Duration(milliseconds: 150));

      if (i == 0) {
        yield words[i];
      } else {
        yield ' ${words[i]}';
      }
    }
  }

  String generateMessageId() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }
}