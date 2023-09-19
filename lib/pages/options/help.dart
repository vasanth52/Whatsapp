import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/widgets/widgets.dart';

class help extends StatefulWidget {
  const help({super.key});

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
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
        title: Text("help"),
      ),
      body: ListView(children: [
        tileonly(Icon(Icons.help_outline), "Help Center"),
        tile(Icon(Icons.group), "Contact us", "Question? Need help?", context,
            ""),
        tileonly(Icon(Icons.file_present_rounded), "Terms and Privacy Policy"),
        tileonly(Icon(Icons.info_outline), "App info")
      ]),
    );
  }
}
