import 'package:chatting_application/features/chat/domain/message_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatNotifier extends StateNotifier<List<Message>> {
  ChatNotifier(super.state);
  void sendMessage(String message, {required bool isMe}) {
    if (message.trim().isEmpty) return; // Prevent sending empty messages
    // Add the message to the state
    state = [...state, Message(message, isMe: true)];
  }
}
