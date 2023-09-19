import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/widgets/widgets.dart';

// enum for the popupmenu button
enum menuItem { ResetNotificationSettings }

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool read = false;
  bool read1 = false;
  bool read2 = false;
  bool read3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: appBarColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return <PopupMenuEntry<menuItem>>[
              const PopupMenuItem(
                child: Text("Resetnotification settings"),
                value: menuItem.ResetNotificationSettings,
              )
            ];
          })
        ],
      ),
      body: ListView(children: [
        Row(children: [
          SizedBox(
            width: 15.0,
          ),
          Text(
            "Messages",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ]),
        SizedBox(
          height: 7.0,
        ),
        textTile("Notification tone", "Default ringtone (Marimba_1)"),
        textTile("Vibrate", "Default"),
        textTile("Popup Notification", "Not available"),
        textTile("Light", "white"),
        tileWithSwitch0("Use high priority notifications",
            "Show previews of notifications at the top of the screen"),
        tileWithSwitch1("Reaction Notificatinos",
            "Show Notifications for reactinos to message you send"),
        SizedBox(
          height: 12.0,
        ),
        Row(children: [
          SizedBox(
            width: 15.0,
          ),
          Text(
            "Groups",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ]),
        SizedBox(
          height: 12.0,
        ),
        textTile("Notification tone", "Default ringtone (Marimba_1)"),
        textTile("Vibrate", "Default"),
        textTile("Light", "White"),
        tileWithSwitch2("Use hight priority notifications",
            "Show preview of notificatinos at the top of the screen"),
        tileWithSwitch3("Reaction Notifications",
            "Show notifications for reactions to messages you sent"),
        SizedBox(
          height: 12.0,
        ),
        Row(children: [
          SizedBox(
            width: 15.0,
          ),
          Text(
            "Calls",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ]),
        textTile("Ringtone", "Default Ringtone (ringtone_001)"),
        textTile("Vibrate", "Default"),
        SizedBox(
          height: 12.0,
        ),
      ]),
    );
  }

  //  this is for the switch to use the setStage
  tileWithSwitch0(String title, String subtitle) {
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

  tileWithSwitch1(String title, String subtitle) {
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
          value: read1,
          onChanged: (bool value) {
            setState(() {
              read1 = value;
            });
          }),
    );
  }

  tileWithSwitch2(String title, String subtitle) {
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
          value: read2,
          onChanged: (bool value) {
            setState(() {
              read2 = value;
            });
          }),
    );
  }

  tileWithSwitch3(String title, String subtitle) {
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
          value: read3,
          onChanged: (bool value) {
            setState(() {
              read3 = value;
            });
          }),
    );
  }

  tileWithSwitch4(String title, String subtitle) {
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
          value: read2,
          onChanged: (bool value) {
            setState(() {
              read2 = value;
            });
          }),
    );
  }
}
