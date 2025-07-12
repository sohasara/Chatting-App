import 'package:flutter/material.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 208, 231),
      appBar: AppBar(
        title: Text("Chat Page"),
        backgroundColor: const Color.fromARGB(255, 151, 148, 247),
        actions: [
          IconButton(
            icon: Icon(Icons.videocam_rounded, color: Colors.white),
            onPressed: () {
              // Implement more options functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.phone, color: Colors.white),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // Implement more options functionality
            },
          ),
        ],
      ),
    );
  }
}
