import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:picsy_ui/pages/Home_page.dart';
import 'package:picsy_ui/picsy_main_widgets/MyBottomnavigation.dart';
import 'package:picsy_ui/picsy_main_widgets/myappbar.dart';
import 'package:picsy_ui/picsy_main_widgets/picsydrawer.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.pinkAccent,
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: myappbar(),
          drawer: picsydrawer(),
          body: Home(),
          bottomNavigationBar: MyBottomnav(),
        ),
      ),
    );
  }
}
