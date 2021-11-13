import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_task2/constatnts.dart';
import 'package:responsive_ui_task2/responsive.dart';
import 'package:responsive_ui_task2/style.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal:
              (Responsive.isDesktop(context) ? desktoppadding : defaultpadding),
          vertical: 20),
      //padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        children: [
          if (Responsive.isMobile(context))
            Container(
              decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.1),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8)),
              child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu, color: Colors.blueAccent)),
            ),
          if (Responsive.isMobile(context))
            SizedBox(
              width: 10,
            ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.blueAccent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search course,student,review,etc",
                  icon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: (Responsive.isDesktop(context) ? 8 : 0)),
            //padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                  Responsive.isDesktop(context) ? 15 : 100),
              // shape: Responsive.isDesktop(context)
              //     ? BoxShape.rectangle
              //     : BoxShape.circle,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.sort,
                      color: Colors.redAccent,
                    )),
                if (Responsive.isDesktop(context))
                  Text(
                    "Filter",
                    style: TextThemes.carddescriptionstyle,
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
