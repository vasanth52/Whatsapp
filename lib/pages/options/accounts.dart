import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/widgets/widgets.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Account"),
      ),
      body: ListView(
        children: [
          tileonly(Icon(Icons.security), "Security Notifications"),
          tileonly(Icon(Icons.more_horiz), "Two-step verification"),
          tileonly(Icon(Icons.mobile_screen_share), "Change number"),
          tileonly(Icon(Icons.file_present_rounded), "Request account info"),
          tileonly(Icon(Icons.delete), "Delete my account"),
        ],
      ),
    );
  }
}
