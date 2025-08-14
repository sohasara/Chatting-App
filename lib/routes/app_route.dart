import 'package:chatting_application/features/auth/presentation/pages/log_in.dart';
import 'package:chatting_application/features/chat/presentation/chat_page/chatpage.dart';
import 'package:chatting_application/features/chat/presentation/home/homePage.dart';
import 'package:chatting_application/features/chat/presentation/home/personList.dart';
import 'package:chatting_application/features/contract/presentation/contact_page.dart';
import 'package:chatting_application/features/group/presentation/groups.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'login',
      builder: (context, state) => const LogInPage(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/chat-chatpage',
      name: 'chatpage',
      builder: (context, state) => const Chatpage(),
    ),
    GoRoute(
      path: '/contact-contacts',
      name: 'contactpage',
      builder: (context, state) => const ContactPage(),
    ),
    GoRoute(
      path: '/home-allChats',
      name: 'home-chats',
      builder: (context, state) => const ChatListScreen(),
    ),
    GoRoute(
      path: '/home-groups',
      name: 'groups',
      builder: (context, state) => const GroupPage(),
    ),
    GoRoute(
      path: '/home-contacts',
      name: 'contacts',
      builder: (context, state) => const Text("Contacts Page"),
    ),
  ],
);
