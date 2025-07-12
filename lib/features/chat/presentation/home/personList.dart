// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          '', // Replace with a valid image URL
        ),
      ),
      title: Text('John Doe'),
      subtitle: Text('Hey, how are you?'),
      trailing: Text('10:30 AM'),
      onTap: () {
        // Navigate to chat details
      },
    );
  }
}
