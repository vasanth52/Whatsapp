import 'package:flutter/material.dart';

tile(Icon leadingIcon, String title, String metadata, context, String route) {
  return ListTile(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      leading: leadingIcon,
      title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
            Text(
              metadata,
              style: TextStyle(color: Colors.grey),
            )
          ]));
}

tileonly(Icon leadingIcon, String title) {
  return ListTile(
      leading: leadingIcon,
      title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ]));
}

textTile(String title, String metadata) {
  return ListTile(
      title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 15.0),
        ),
        Text(
          metadata,
          style: TextStyle(color: Colors.grey, fontSize: 15.0),
        )
      ]));
}

tileWithText(String title, String subtitle) {
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
    trailing: Text("Off"),
  );
}
