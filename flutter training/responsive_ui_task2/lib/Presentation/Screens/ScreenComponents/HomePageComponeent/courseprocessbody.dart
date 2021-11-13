import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:responsive_ui_task2/Model/datas.dart';
import 'package:responsive_ui_task2/constatnts.dart';
import 'package:responsive_ui_task2/responsive.dart';
import 'package:responsive_ui_task2/style.dart';

class CourseProcess extends StatelessWidget {
  const CourseProcess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double devicewidth = MediaQuery.of(context).size.width;
    // double deviceheight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal:
              (Responsive.isDesktop(context) ? desktoppadding : defaultpadding),
          vertical: defaultpadding),
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (Responsive.isDesktop(context) ? 4 : 2),
              crossAxisSpacing: (Responsive.isDesktop(context) ? 25 : 8),
              mainAxisSpacing: 8.0,
              childAspectRatio: (Responsive.isDesktop(context) ? 1.2 : 1) /
                  (Responsive.isDesktop(context) ? 1.4 : 1.2)
              // devicewidth /(deviceheight * (Responsive.isMobile(context) ? 0.65 : 1.5))
              ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: items[index].colorvalue.withOpacity(0.2)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularPercentIndicator(
                      radius: 100,
                      lineWidth: 8.0,
                      animation: true,
                      percent: items[index].percent / 100,
                      center: Text(
                        "${items[index].percent.toString()}%",
                        style: TextStyle(
                            color: items[index].colorvalue,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      backgroundColor: items[index].colorvalue.withOpacity(0.3),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: items[index].colorvalue,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index].title,
                          style: TextThemes.cardtitlestyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${items[index].videos.toString()} Videos",
                          style: TextStyle(color: items[index].colorvalue),
                        ),
                      ],
                    )
                  ],
                ));
          }),
    );
  }
}
