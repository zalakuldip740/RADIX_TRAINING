import 'package:flutter/material.dart';
import 'package:responsive_ui_task_day1/constatnts.dart';
import 'package:responsive_ui_task_day1/style.dart';

class ListDecsription extends StatelessWidget {
  final String itemdesc;

  const ListDecsription({Key? key, required this.itemdesc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: Center(
                child: Text(
                  itemdesc,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primarycolor,
      height: kToolbarHeight,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(
          "Details",
          style: TextThemes.toolbartextstyle,
        ),
      ),
    );
  }
}
