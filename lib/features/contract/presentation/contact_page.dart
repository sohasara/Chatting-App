import 'package:flutter/material.dart';

import '../data/contact_data.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Contact')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            final contact = contacts[index];
            return ListTile(
              leading: CircleAvatar(child: Text(contact['name'][0])),
              title: Text(contact['name']),
              subtitle: Text(contact['phone']),
              onTap: () {
                // Handle contact selection
                Navigator.pop(context, contact);
              },
            );
          },
        ),
      ),
    );
  }
}
