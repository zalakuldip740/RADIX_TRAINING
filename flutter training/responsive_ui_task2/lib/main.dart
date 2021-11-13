import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_ui_task2/Presentation/Screens/MainScreen/deskscreen.dart';
import 'package:responsive_ui_task2/Presentation/Screens/MainScreen/home_page.dart';
import 'package:responsive_ui_task2/Presentation/Screens/MainScreen/tabscreen.dart';
import 'package:responsive_ui_task2/responsive.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Responsive(
        mobile: HomePage(),
        tablet: TabScreen(),
        desktop: DeskScreen(),
      ),
    );
  }
}
