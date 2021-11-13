import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeBody(),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double devicewidth = MediaQuery.of(context).size.width;
    double deviceheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: deviceheight * 0.35,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://www.picsy.in/images/app/New-Dashboard/share-album.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.red,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              // child:Image.network(
              //   'https://www.picsy.in/images/app/New-Dashboard/share-album.jpg',
              //   fit: BoxFit.cover,
              // ),
            ),
            // SizedBox(
            //   height: deviceheight * 0.02,
            // ),
            Container(
              margin: EdgeInsets.only(
                  top: deviceheight * 0.02, bottom: deviceheight * 0.02),
              height: deviceheight * 0.11,
              padding: EdgeInsets.all(10.0),
              width: devicewidth * 0.9,
              //margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Oeschinen Lake Compground",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Kandersteg,Switzerland",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      Text("41")
                    ],
                  )
                ],
              ),
            ),
            // SizedBox(
            //   height: deviceheight * 0.02,
            // ),
            Container(
              margin: EdgeInsets.only(bottom: deviceheight * 0.02),
              height: deviceheight * 0.14,
              padding: EdgeInsets.all(8),
              width: devicewidth * 0.8,
              //margin: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  navitem(Icons.call, "CALL"),
                  navitem(Icons.near_me, "ROUTE"),
                  navitem(Icons.share, "SHARE"),
                ],
              ),
            ),
            // SizedBox(
            //   height: deviceheight * 0.02,
            // ),
            Container(
              height: deviceheight * 0.25,
              width: devicewidth * 0.9,
              padding: EdgeInsets.all(10.0),
              //margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints.",
                  //overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Column navitem(IconData icon, String label) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      IconButton(
        icon: Icon(icon),
        color: Colors.lightBlue,
        onPressed: () {},
      ),
      Text(
        label,
        style: TextStyle(color: Colors.lightBlue),
      ),
    ],
  );
}
