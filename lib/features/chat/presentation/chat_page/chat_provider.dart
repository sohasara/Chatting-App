import 'package:chatting_application/features/chat/domain/message_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'chat_notifer.dart';

final chatProvider = StateNotifierProvider<ChatNotifier, List<Message>>(
  (ref) => ChatNotifier([]),
);
