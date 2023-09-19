import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/pages/calls.dart';
import 'package:whatsapp/pages/chatPage.dart';
import 'package:whatsapp/pages/options/settings.dart';
import 'package:whatsapp/pages/status.dart';

// home details
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

enum menuItems {
  NewGroup,
  NewBoardcast,
  LinkeDevices,
  StarredMessages,
  Payments,
  Settings
}

class _HomeState extends State<Home> {
  // here the popup menu button will come
  final ImagePicker _picker = new ImagePicker();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 40.0,
            backgroundColor: appBarColor,
            title: Text("WhatsApp"),
            centerTitle: false,
            actions: [
              IconButton(
                  onPressed: () async {
                    // final XFile? image =
                    //     await _picker.pickImage(source: ImageSource.camera);
                  },
                  icon: Icon(Icons.camera_alt_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              // here the pop up menu button will come
              PopupMenuButton(onSelected: (value) {
                if (value == menuItems.Settings) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Settings()));
                } else {
                  ScaffoldMessenger.of(context)
                    ..showSnackBar(SnackBar(content: Text("$value")));
                }
              }, itemBuilder: (context) {
                return <PopupMenuEntry<menuItems>>[
                  const PopupMenuItem(
                    child: Text("New group"),
                    value: menuItems.NewGroup,
                  ),
                  const PopupMenuItem(
                    child: Text("New broadcase"),
                    value: menuItems.NewBoardcast,
                  ),
                  const PopupMenuItem(
                    child: Text("Linked Devices"),
                    value: menuItems.LinkeDevices,
                  ),
                  const PopupMenuItem(
                    child: Text("Starred messages"),
                    value: menuItems.StarredMessages,
                  ),
                  const PopupMenuItem(
                    child: Text("Payments"),
                    value: menuItems.Payments,
                  ),
                  const PopupMenuItem(
                    child: Text("Settings"),
                    value: menuItems.Settings,
                  )
                ];
              })
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Container(
                    height: 30.0,
                    child: Text(
                      "Chats",
                      style: TextStyle(fontSize: 15.0),
                    )),
                Container(
                    height: 30.0,
                    child: Text(
                      "Status",
                      style: TextStyle(fontSize: 15.0),
                    )),
                Container(
                    height: 30.0,
                    child: Text(
                      "Calls",
                      style: TextStyle(fontSize: 15.0),
                    ))
              ],
            )),
        body: TabBarView(children: [ChatPage(), Status(), Calls()]),
      ),
    );
  }
}
