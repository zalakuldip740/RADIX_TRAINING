import 'package:flutter/material.dart';
import 'package:responsive_ui_task_clone/constatnts.dart';
import 'package:responsive_ui_task_clone/responsive_ui.dart';

class ListpageAppbar extends StatelessWidget {
  const ListpageAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primarycolor,
      height: kToolbarHeight,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width *
                ((!Responsive.isMobile(context)) ? 0.4 : 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  color: toolbaritemcolor,
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                ),
                Text(
                  "List",
                  style: TextStyle(
                      color: toolbaritemcolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                IconButton(
                  color: toolbaritemcolor,
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ),
          if (!Responsive.isMobile(context))
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Center(
                child: Text(
                  "Details",
                  style: TextStyle(
                      color: toolbaritemcolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            )
        ],
      ),
    );
  }
}
