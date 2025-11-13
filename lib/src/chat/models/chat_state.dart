import 'package:freezed_annotation/freezed_annotation.dart';
import 'message.dart';

part 'chat_state.freezed.dart';

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState({
    @Default([]) List<Message> messages,
    @Default(false) bool isLoading,
    String? error,
    String? conversationId,
    String? conversationTitle,
  }) = _ChatState;
}