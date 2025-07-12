import 'package:flutter/material.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 208, 231),
      appBar: AppBar(
        title: Text("Chat Page"),
        backgroundColor: const Color.fromARGB(255, 141, 137, 248),
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
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,

              child: ListView.builder(
                // controller: _scrollController,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 10,
                      ),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "message[index]",
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    minLines: 1,
                    maxLines: 5,
                    onSubmitted: (_) {},
                    //controller: messageController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      hintText: 'Type a message...',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(Icons.send, color: Colors.blue),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
