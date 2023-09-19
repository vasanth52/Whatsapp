import 'package:flutter/material.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  // list for the drop down button
  List<String> country = <String>[
    "India",
    "America",
    "Australia",
    "Israel",
    "Switzedland"
  ];
  List<String> countryCode = <String>["+91", "+44", "+97", "41", "+56"];

  @override
  Widget build(BuildContext context) {
    String firstValue = country.first;
    String countryValue = countryCode.first;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 50, 83),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Verify your phone number",
                style: TextStyle(
                    color: Color.fromARGB(255, 18, 154, 140), fontSize: 20.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Whatsapp will send an SMS message(carrier\ncharges may apply) to verify your phone number\n Enter your country code and phone number",
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: Container(
                  height: 170.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 4.0)),
                  child: ListView(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: DropdownButton(
                            value: firstValue,
                            alignment: AlignmentDirectional.center,
                            // hint: Text(
                            //   "$",
                            //   style: TextStyle(color: Colors.white),
                            // ),
                            style: TextStyle(color: Colors.white),
                            dropdownColor: Colors.black,
                            items: country
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem(
                                child: Text(value),
                                value: value,
                              );
                            }).toList(),
                            onChanged: (itemValue) {
                              setState(() {
                                firstValue = itemValue!;
                              });
                            }),
                      ),
                      Row(
                        children: [],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
