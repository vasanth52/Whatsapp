import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: GestureDetector(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              child: CircleAvatar(
                radius: 25.0,
                backgroundColor: Color.fromARGB(255, 222, 220, 220),
                child: Center(
                  child: Icon(
                    Icons.edit,
                    color: Color.fromARGB(255, 83, 83, 83),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            GestureDetector(
              child: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.teal,
                child: Center(
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
              ),
              onTap: () async {},
            ),
          ],
        ),
      ),
    );
  }
}
