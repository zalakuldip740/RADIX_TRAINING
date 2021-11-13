import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shape: Border(
              bottom: BorderSide(color: Colors.deepPurpleAccent, width: 2)),
          backgroundColor: Colors.white,
          title: Text(
            "Enter Your's Practices Name",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.deepPurple[50], fontSize: 15),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.deepPurpleAccent[400],
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.deepPurpleAccent[400],
              onPressed: () {},
            ),
          ],
        ),
        body: MyBody(),
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  final List<String> titles = <String>[
    'Abdomnal Pain - Female',
    'Abdomnal Pain - male',
    'Acne',
    'Animal or Human Bite',
    'Antibiotics: When Do They Help',
    'Arm Injury',
    'Arm Pain',
    'Asthma Attack ',
    'Athlete Foot',
    'Arm Injury',
    'Acne',
    'Animal or Human Bite',
    'Antibiotics: When Do They Help',
    'Arm Injury',
    'Arm Pain',
    'Asthma Attack ',
    'Athlete Foot',
    'Arm Injury'
  ];
  MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        width: deviceWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backimag.png'),
            fit: BoxFit.cover,
            //colorFilter: ColorFilter.mode(Colors.transparent.opacity(0.5), blendMode)
          ),
        ),
        child: BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Container(
            decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  "https://www.picsy.in/themes/seablue/images/logo.png",
                  width: deviceWidth * 0.25,
                  height: deviceHeight * 0.25,
                ),
                Expanded(
                  child: Container(
                    width: deviceWidth * 0.90,
                    //margin: EdgeInsets.only(right: 20, left: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8)),
                    ),
                    child: ListView.separated(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      itemCount: titles.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(
                            "${titles[index]}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
