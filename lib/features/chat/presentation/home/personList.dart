// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../chat_page/chatpage.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Example item count
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/profle.jpeg'),
          ),
          title: Text('John Doe'),
          subtitle: Text('Hey, how are you?'),
          trailing: Text('10:30 AM'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Chatpage()),
            );
          },
        );
      },
    );
  }
}
