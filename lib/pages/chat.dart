import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';

class CHat extends StatefulWidget {
  const CHat({super.key});

  @override
  State<CHat> createState() => _CHatState();
}

class details {
  final String name;
  details(this.name);
}

class _CHatState extends State<CHat> {
  details _details = new details("name of the user");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        // leading:
        // this title will give the circle avatar for the profile pic and the name of the user
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            SizedBox(
              width: 2.0,
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 223, 223, 223),
              child: Center(
                child: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              width: 7.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name"),
                Text(
                  "last seen 2:34 pm",
                  style: TextStyle(fontSize: 12.0),
                )
              ],
            )
          ],
        ),
        centerTitle: false,

        // here the action will take place
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.video_call,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(left: 4.0),
                child: AppBar(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    actions: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.file_present_outlined)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.currency_rupee)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt))
                    ],
                    leading: IconButton(
                        onPressed: () {}, icon: Icon(Icons.emoji_emotions)),
                    backgroundColor: Color.fromARGB(255, 36, 49, 68),
                    title: TextFormField()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
