import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to Whatsapp",
                style: TextStyle(color: Colors.green, fontSize: 29.0),
              ),
              Image(image: AssetImage("assets/images/entryimage.png")),
              SizedBox(
                height: 10.0,
              ),
              Text.rich(TextSpan(text: "Read our ", children: [
                TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(color: Colors.blue)),
                TextSpan(text: 'Tap "Agree and Continue " to \n'),
                TextSpan(text: "accept the "),
                TextSpan(
                    text: " Terms and Sercies",
                    style: TextStyle(color: Colors.blue))
              ])),
              SizedBox(
                height: 10.0,
              ),
              MaterialButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
                child: Text(
                  "AGREE AND CONTINUE",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text("from",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "FACEBOOK",
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
        ),
      ),
    );
  }
}
