import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/widgets/widgets.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
      ),
      // here the body will come
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            children: [
              tile(Icon(Icons.key), "Accounts",
                  "security notification, change number", context, '/accounts'),
              tile(Icon(Icons.face), "Avatar", "create, edit, profile photo",
                  context, ""),
              tile(Icon(Icons.lock), "Privacy",
                  "Bloack contacts, disappering messages", context, "/privacy"),
              tile(Icon(Icons.chat_sharp), "Chats",
                  "Theme, wallpaper, chat history", context, ""),
              tile(Icon(Icons.notifications), "Notifications",
                  "Messages, groups and call tones", context, '/notifications'),
              tile(Icon(Icons.circle_outlined), "Storage and Data",
                  "Network usage, Auto-download", context, ""),
              tile(Icon(Icons.language), "App Language",
                  "English (phone's language)", context, ""),
              tile(Icon(Icons.help_outline), "Help",
                  "Help center, contact us, privacy policy", context, '/help'),
              tileonly(Icon(Icons.group), "Invite a friend"),
              SizedBox(
                height: 40.0,
              ),
              Text("from",
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 12.0,
              ),
              Text(
                "Meta",
                style: TextStyle(color: Colors.black, fontSize: 20.0),
                textAlign: TextAlign.center,
              )
            ],
          )),
    );
  }
}
