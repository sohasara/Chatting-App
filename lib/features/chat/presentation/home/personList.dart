// ignore_for_file: file_names

import 'package:chatting_application/features/chat/data/person_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: personList.length, // Example item count
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/profle.jpeg'),
          ),
          title: Text(personList[index]["name"]),
          subtitle: Text('Hey, how are you?'),
          trailing: Text('10:30 AM'),
          onTap: () {
            context.pushNamed('chatpage');
          },
        );
      },
    );
  }
}
