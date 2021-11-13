import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:radix_freshers/Data/souces_data.dart';
import 'package:radix_freshers/screens/news_articles.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget sourceslist(BuildContext context, List<Source> sourcedatas) {
  return ListView.builder(
      itemCount: sourcedatas.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Stack(
              children: [
                ListTile(
                  onTap: () {
                    final sourcename = sourcedatas[index].name.toString();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewsArticles(sourcename)));
                  },
                  title: Text(sourcedatas[index].name.toString()),
                  subtitle: Text(
                    sourcedatas[index].description.toString(),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: LikeButton(
                    circleColor: const CircleColor(
                        start: Color(0xff00ddff), end: Color(0xff0099cc)),
                    bubblesColor: const BubblesColor(
                      dotPrimaryColor: Color(0xff33b5e5),
                      dotSecondaryColor: Color(0xff0099cc),
                    ),
                    likeBuilder: (bool isLiked) {
                      return GestureDetector(
                        child: Icon(
                          Icons.star,
                          color: isLiked ? Colors.redAccent : Colors.grey,
                          size: 22,
                        ),
                      );
                    },
                    onTap: (isLiked) {
                      return changedata(
                          isLiked,
                          sourcedatas[index].name.toString(),
                          sourcedatas[index].id.toString());
                    },
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                color: Colors.blueAccent.shade200,
              ),
            )
          ],
        );
      });
}

Future<bool> changedata(status, String categoryname, String id) async {
  SharedPreferences.setMockInitialValues({});
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (status) {
    //print("data deleted");
    prefs.remove(id);
  } else {
    prefs.setString(id, categoryname);
  }
  return Future.value(!status);
}
