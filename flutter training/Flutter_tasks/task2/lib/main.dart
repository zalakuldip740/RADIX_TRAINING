import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<IconData> icons = [
    Icons.ac_unit_outlined,
    Icons.home,
    Icons.notifications_active,
    Icons.mail,
    Icons.share,
    Icons.rate_review,
    Icons.notification_important,
    Icons.star,
    Icons.message
  ];
  final List<String> titles = <String>[
    'Flutter clutter',
    'Google news',
    'flutter news',
    'patavinus',
    'Local news',
    'travel blog',
    'Ui bolg',
    'Imaginary computer blog '
  ];
  final List<String> subtitles = <String>[
    'The itemBuilder should always return a non-null widget.',
    'The itemBuilder callback will be called only with indices greater than or equal to zero and less than itemCount.',
    'ListView is a very important widget in flutter.',
    'The itemBuilder should always return a non-null widget.',
    'ListView is a very important widget in flutter.',
    'The itemBuilder callback will be called only with indices greater than or equal to zero and less than itemCount.',
    'The itemBuilder should always return a non-null widget',
    'ListView is a very important widget in flutter.',
    'The itemBuilder callback will be called only with indices greater than or equal to zero and less than itemCount.'
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("FlutterClutter:Overflow"),
        ),
        body: Center(
          child: ListView.builder(
              itemCount: titles.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin:
                      EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(1, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Icon(
                      icons[index],
                      size: 35,
                      color: Colors.red,
                    ),
                    title: Text("${titles[index]}"),
                    subtitle: Text(
                      "${subtitles[index]}",
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Text(
                      "Just Now",
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
