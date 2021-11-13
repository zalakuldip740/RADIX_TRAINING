import 'package:flutter/material.dart';
import 'package:responsive_ui_task2/Presentation/Drawer/customdrawer.dart';
import 'package:responsive_ui_task2/Presentation/Screens/ScreenComponents/HomePageComponeent/homepagebody.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white,
        drawer: CustomDrawer(),
        body: HomePageBody(),
      )),
    );
  }
}
