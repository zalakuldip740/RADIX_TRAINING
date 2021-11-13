import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_task2/Presentation/Drawer/DrawerComponent/logoutdialog.dart';
import 'package:responsive_ui_task2/Presentation/Drawer/DrawerComponent/protag.dart';
import 'package:responsive_ui_task2/Presentation/Screens/MainScreen/home_page.dart';
import 'package:responsive_ui_task2/Presentation/Screens/coursescreen.dart';
import 'package:responsive_ui_task2/Presentation/Screens/discussionpage.dart';
import 'package:responsive_ui_task2/Presentation/Screens/reviewspage.dart';
import 'package:responsive_ui_task2/Presentation/Screens/settingpage.dart';
import 'package:responsive_ui_task2/Presentation/Screens/studentspage.dart';
import 'package:responsive_ui_task2/constatnts.dart';
import 'package:responsive_ui_task2/responsive.dart';

class DrawerItems extends StatefulWidget {
  const DrawerItems({Key? key}) : super(key: key);

  @override
  _DrawerItemsState createState() => _DrawerItemsState();
}

class _DrawerItemsState extends State<DrawerItems> {
  // ignore: non_constant_identifier_names
  int TappedIndex = 0;

  // ignore: non_constant_identifier_names
  ChangePage(int currentindex) {
    setState(() {
      TappedIndex = currentindex;
    });
  }

  List<IconData> icons = [
    Icons.dashboard,
    Icons.article,
    Icons.account_circle,
    Icons.mail,
    Icons.star,
    Icons.settings,
    Icons.logout
  ];
  List<String> title = [
    "Dashboard",
    "Courses",
    "Students",
    "Discussions",
    "Reviews",
    "My Settings",
    "Log Out"
  ];
  List<bool> ispro = [true, false, false, true, true, false, false];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: icons.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: TappedIndex == index ? Colors.blueAccent : Colors.white,
                borderRadius: BorderRadius.all(
                    Radius.circular(TappedIndex == index ? 18.0 : 0.0))),
            child: ListTile(
              onTap: () {
                ChangePage(index);
                if (Responsive.isMobile(context)) {
                  Navigator.pop(context);

                  switch (index) {
                    case 0:
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                      break;

                    case 1:
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesPage()));
                      break;

                    case 2:
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudentPage()));
                      break;

                    case 3:
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DiscussionsPage()));
                      break;

                    case 4:
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReviewsPage()));
                      break;

                    case 5:
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingPage()));
                      break;

                    case 6:
                      showDialog(
                          context: context,
                          builder: (context) => LogoutDialog());
                      break;
                  }
                }
              },
              leading: Icon(
                icons[index],
                color: TappedIndex == index
                    ? Colors.white
                    : Colors.grey.withOpacity(0.7),
              ),
              title: Row(
                children: [
                  Text(
                    title[index],
                    style: TextStyle(
                        color: TappedIndex == index
                            ? Colors.white
                            : cardpricecolor.withOpacity(0.7),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  if (ispro[index])
                    if (!Responsive.isTablet(context))
                      ProTag(TappedIndex == index
                          ? Colors.white
                          : Colors.blueAccent.withOpacity(0.1)),
                  if (ispro[index])
                    if (Responsive.isTablet(context))
                      Icon(
                        Icons.star,
                        color: Colors.redAccent,
                      ),
                ],
              ),
            ),
          );
        });
  }
}
