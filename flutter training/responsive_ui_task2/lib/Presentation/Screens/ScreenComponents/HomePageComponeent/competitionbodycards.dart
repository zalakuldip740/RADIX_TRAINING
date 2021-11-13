import 'package:flutter/material.dart';
import 'package:responsive_ui_task2/Model/competitiondatas.dart';
import 'package:responsive_ui_task2/constatnts.dart';
import 'package:responsive_ui_task2/responsive.dart';
import 'package:responsive_ui_task2/style.dart';

class CompetitionsBody extends StatelessWidget {
  const CompetitionsBody({Key? key}) : super(key: key);

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
              crossAxisCount: (Responsive.isDesktop(context) ? 2 : 1),
              crossAxisSpacing: (Responsive.isDesktop(context) ? 25 : 8),
              mainAxisSpacing: 15.0,
              childAspectRatio: (!Responsive.isMobile(context) ? 1.7 : 1.3) /
                  (Responsive.isTablet(context) ? 1.2 : 1)
              // devicewidth /(deviceheight * (Responsive.isMobile(context) ? 0.65 : 1.5))
              ),
          itemCount: eventitems.length,
          itemBuilder: (context, index) {
            return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.blueAccent.withOpacity(0.1)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        eventitems[index].title,
                        style: TextThemes.cardtitlestyle,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        eventitems[index].prize,
                        style: TextThemes.cardpriceparticipantesstyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        eventitems[index].desc,
                        style: TextThemes.carddescriptionstyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Participants",
                        style: TextThemes.cardpriceparticipantesstyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                CircleAvatar(
                                    backgroundColor:
                                        Colors.blueAccent.withOpacity(0.1),
                                    // radius: 22,
                                    backgroundImage: NetworkImage(
                                        eventitems[index].imgurl[0])),
                                // child: Image.network(
                                //     eventitems[index].imgurl[0]),
                                // ),
                                for (int i = 1;
                                    i <= 4 &&
                                        i < eventitems[index].imgurl.length;
                                    i++)
                                  Positioned(
                                    left: i * 25,
                                    child: CircleAvatar(
                                        backgroundColor:
                                            Colors.blueAccent.withOpacity(0.1),
                                        backgroundImage: NetworkImage(
                                            eventitems[index].imgurl[i])),
                                    //   child: Image.network(
                                    //       eventitems[index].imgurl[i]),
                                  ),
                                if (eventitems[index].imgurl.length - 5 != 0 &&
                                    5 < eventitems[index].imgurl.length)
                                  Positioned(
                                    left: 125,
                                    child: CircleAvatar(
                                      child: Text(
                                          "+${eventitems[index].imgurl.length - 5}"),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          if (eventitems[index].isbutton)
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.blueAccent),
                                  elevation: MaterialStateProperty.all(0.0),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18)))),
                              onPressed: () {},
                              child: Text("JOIN EVENT"),
                            )
                        ],
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}
