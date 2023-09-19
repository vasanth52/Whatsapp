import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/widgets/widgets.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  bool read = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy"),
        backgroundColor: appBarColor,
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: ListView(children: [
        Row(
          children: [
            SizedBox(
              width: 14.0,
            ),
            Text(
              "Who can see my personal info",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            )
          ],
        ),
        textTile("Last seen and Online", "My contacts"),
        textTile("Profile Photo", "My Contacts"),
        textTile("About", "My Contacts"),
        textTile("Status", "My Contacts"),
        tileWithSwitch("Read receipts",
            "if turnd off, you won't send or receive Read receipts.Read receipts are always sent for group chats"),
        Row(
          children: [
            SizedBox(
              width: 14.0,
            ),
            Text(
              "Disappearing messages",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            )
          ],
        ),
        SizedBox(
          height: 7.0,
        ),
        tileWithText("Default message timer",
            "start new chats with disappearing messages set to your timer"),
        textTile("Groups", "My Contacts"),
        textTile("Live location", "None"),
        textTile("Blocked contacts", "None"),
        textTile("Fingerprint lock", "Enabled immediately")
      ]),
    );
  }

// this is for the switch to use the setStage
  tileWithSwitch(String title, String subtitle) {
    // start
    final MaterialStateProperty<Color?> trackColor =
        MaterialStateProperty.resolveWith<Color?>((states) {
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.red;
        } else {
          return Colors.green;
        }
      };
    });

    return ListTile(
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        Text(
          subtitle,
          style: TextStyle(color: Colors.grey, fontSize: 13.0),
        )
      ]),
      trailing: Switch(
          activeColor: Colors.teal,
          value: read,
          onChanged: (bool value) {
            setState(() {
              read = value;
            });
          }),
    );
  }
}
