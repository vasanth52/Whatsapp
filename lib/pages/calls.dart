import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
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
              Icons.add_ic_call,
              color: Colors.white,
            ),
          ),
        ),
        onTap: () async {},
      ),
    );
  }
}
