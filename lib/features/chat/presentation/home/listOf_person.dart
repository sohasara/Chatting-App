import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        ChatTile(
          name: "Larry Machigo",
          message: "Ok. Let me check",
          time: "09:38 AM",
          avatarUrl: "https://i.pravatar.cc/150?img=1",
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const ChatDetailScreen()),
          ),
        ),
        ChatTile(
          name: "Natalie Nora",
          message: "Natalie is typing...",
          time: "02:03 AM",
          avatarUrl: "https://i.pravatar.cc/150?img=2",
          unread: true,
          onTap: () {},
        ),
      ],
    );
  }
}

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final bool unread;
  final VoidCallback onTap;

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl,
    required this.onTap,
    this.unread = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(avatarUrl),
        radius: 26,
      ),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(
        message,
        style: TextStyle(color: unread ? Colors.blue : Colors.grey.shade700),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time, style: const TextStyle(fontSize: 12, color: Colors.grey)),
          if (unread) const SizedBox(height: 6),
          if (unread)
            const CircleAvatar(
              radius: 8,
              backgroundColor: Colors.blue,
              child: Text(
                "2",
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }
}

class ChatDetailScreen extends StatelessWidget {
  const ChatDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6B4EFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.white),
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=1"),
            ),
            SizedBox(width: 10),
            Text("Larry Machigo", style: TextStyle(color: Colors.white)),
          ],
        ),
        actions: const [
          Icon(Icons.call, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.videocam, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(40)),
        child: Container(
          color: const Color(0xFF6B4EFF),
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: const [
                    ChatBubble(text: "Hey 👋", isSender: false),
                    ChatBubble(
                      text: "Are you available for a New UI Project",
                      isSender: false,
                    ),
                    ChatBubble(text: "Hello!", isSender: true),
                    ChatBubble(
                      text: "yes, have some space for the new task",
                      isSender: true,
                    ),
                    ChatBubble(
                      text: "Cool, should I share the details now?",
                      isSender: false,
                    ),
                    ChatBubble(text: "Yes Sure, please", isSender: true),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Ok. Let me check",
                        hintStyle: const TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.send, color: Color(0xFF6B4EFF)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;

  const ChatBubble({super.key, required this.text, required this.isSender});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        constraints: const BoxConstraints(maxWidth: 250),
        decoration: BoxDecoration(
          color: isSender ? Colors.white : const Color(0xFF8D74FF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSender ? Colors.black : Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
