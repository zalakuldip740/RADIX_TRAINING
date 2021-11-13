import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_ui_task1/Screens/my_list_page.dart';
import 'package:responsive_ui_task1/responsive_ui.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.blue,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Responsive(
        mobile: TabPage(),
        desktop: TabPage(),
        tablet: TabPage(),
      ),
    );
  }
}
