import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'chat_notifer.dart';

final chatProvider = StateNotifierProvider<ChatNotifier, List<String>>(
  (ref) => ChatNotifier([]),
);
