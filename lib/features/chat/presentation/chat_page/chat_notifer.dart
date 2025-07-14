import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatNotifier extends StateNotifier<List<String>> {
  ChatNotifier(super.state);
  void sendMessage(String message) {
    if (message.trim().isEmpty) return; // Prevent sending empty messages
    // Add the message to the state
    state = [...state, message];
  }
}
