import 'package:flutter/material.dart';

import '../data/contact_data.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 226, 248),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 107, 102, 241),
        title: const Text(
          'Select Contact',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            final contact = contacts[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 107, 102, 241),
                child: Text(
                  contact['name'][0],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(contact['name']),
              subtitle: Text(contact['phone']),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
