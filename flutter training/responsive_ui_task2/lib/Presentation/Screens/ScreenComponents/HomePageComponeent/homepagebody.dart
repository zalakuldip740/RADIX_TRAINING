import 'package:flutter/material.dart';
import 'package:responsive_ui_task2/Presentation/Screens/ScreenComponents/HomePageComponeent/competitionbodycards.dart';
import 'package:responsive_ui_task2/Presentation/Screens/ScreenComponents/HomePageComponeent/courseprocessbody.dart';
import 'package:responsive_ui_task2/Presentation/Screens/ScreenComponents/HomePageComponeent/homeappbar.dart';
import 'package:responsive_ui_task2/constatnts.dart';
import 'package:responsive_ui_task2/responsive.dart';
import 'package:responsive_ui_task2/style.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomAppbar(),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: (Responsive.isDesktop(context)
                  ? desktoppadding
                  : defaultpadding)),
          child: Text(
            "Course Process",
            style: TextThemes.homepagetilestyle,
          ),
        ),
        CourseProcess(), //gridview
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: (Responsive.isDesktop(context) ? 40 : 12),
              vertical: 12),
          //padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
          child: Text(
            "Ongoing Competitions",
            style: TextThemes.homepagetilestyle,
          ),
        ),
        CompetitionsBody(),
      ],
    );
  }
}
