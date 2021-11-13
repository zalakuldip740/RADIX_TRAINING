import 'package:flutter/material.dart';
import 'package:responsive_ui_task2/style.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios, color: Colors.blueAccent)),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "Courses Page",
                  style: TextThemes.cardtitlestyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
