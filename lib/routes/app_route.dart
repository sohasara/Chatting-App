import 'package:chatting_application/features/chat/presentation/chat_page/chatpage.dart';
import 'package:chatting_application/features/chat/presentation/home/homePage.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/chat',
      name: 'chat',
      builder: (context, state) => const Chatpage(),
    ),
  ],
);
