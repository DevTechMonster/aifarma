import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
    required String id,
    required String content,
    required MessageType type,
    required DateTime timestamp,
    @Default(false) bool isStreaming,
  }) = _Message;
}

enum MessageType {
  user,
  ai,
}