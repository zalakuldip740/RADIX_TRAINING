import 'package:flutter/material.dart';
import 'package:responsive_ui_task2/Presentation/Screens/ScreenComponents/HomePageComponeent/homepagebody.dart';

import '../../Drawer/customdrawer.dart';

class DeskScreen extends StatefulWidget {
  const DeskScreen({Key? key}) : super(key: key);

  @override
  _DeskScreenState createState() => _DeskScreenState();
}

class _DeskScreenState extends State<DeskScreen> {
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
                thickness: 2,
                color: Colors.grey.withOpacity(0.5),
              ),
              Expanded(flex: 6, child: HomePageBody())
            ],
          ),
        ));
  }
}
