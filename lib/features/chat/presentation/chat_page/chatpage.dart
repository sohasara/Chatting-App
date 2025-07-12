import 'package:flutter/material.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Page"),
        backgroundColor: Color(0xFFF5F4FE),
        actions: [
          IconButton(
            icon: Icon(Icons.videocam_sharp, color: Colors.black),
            onPressed: () {
              // Implement more options functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.phone, color: Colors.black),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              // Implement more options functionality
            },
          ),
        ],
      ),
    );
  }
}
