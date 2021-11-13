import 'package:flutter/material.dart';
import 'package:responsive_ui_task2/Presentation/Drawer/customdrawer.dart';
import 'package:responsive_ui_task2/Presentation/Screens/ScreenComponents/HomePageComponeent/homepagebody.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Row(
            children: [
              Expanded(flex: 2, child: CustomDrawer()),
              VerticalDivider(
                width: 0.0,
                thickness: 2,
                color: Colors.grey.withOpacity(0.5),
              ),
              Expanded(flex: 3, child: HomePageBody())
            ],
          ),
        ));
  }
}
