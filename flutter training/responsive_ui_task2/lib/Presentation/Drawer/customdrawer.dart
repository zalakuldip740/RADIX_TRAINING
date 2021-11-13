import 'package:flutter/material.dart';
import 'package:responsive_ui_task2/Presentation/Drawer/DrawerComponent/customdrawerheader.dart';
import 'package:responsive_ui_task2/Presentation/Drawer/DrawerComponent/draweritemlist.dart';
import 'package:responsive_ui_task2/Presentation/Drawer/DrawerComponent/upgardcard.dart';
import 'package:responsive_ui_task2/responsive.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.white),
      child: Drawer(
        elevation: 0.0,
        child: Container(
          margin: EdgeInsets.only(
              left: (!Responsive.isMobile(context) ? 8 : 20),
              right: (!Responsive.isMobile(context) ? 8 : 20)),
          child: ListView(
            children: [
              CustomDrawerHeader(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  color: Colors.blueAccent.withOpacity(0.5),
                ),
              ),
              DrawerItems(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: (Responsive.isDesktop(context) ? 25 : 5)),
                child: UpgradCard(),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
