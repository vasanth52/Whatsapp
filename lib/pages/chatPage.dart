import 'package:flutter/material.dart';

// package for the contract
import 'package:contacts_service/contacts_service.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: GestureDetector(
        child: CircleAvatar(
          radius: 30.0,
          backgroundColor: Colors.teal,
          child: Center(
            child: Icon(
              Icons.message,
              color: Colors.white,
            ),
          ),
        ),
        onTap: () async {
          List<Contact> contacts = await ContactsService.getContacts();
          // ScaffoldMessenger.of(context)
          //   ..removeCurrentSnackBar()
          //   ..showSnackBar(SnackBar(content: Text("Floating Actoin Button")));
        },
      ),
    );
  }
}
