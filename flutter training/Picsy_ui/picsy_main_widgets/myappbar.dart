import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class myappbar extends StatelessWidget with PreferredSizeWidget {
  const myappbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return AppBar(
      toolbarHeight: kToolbarHeight,
      // backwardsCompatibility: false,
      // systemOverlayStyle:
      //     SystemUiOverlayStyle(statusBarColor: Colors.pinkAccent),
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        color: Colors.black,
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      centerTitle: true,
      title: Image.network(
        'https://www.picsy.in/themes/seablue/images/logo.png',
        width: deviceWidth * 0.2,
        height: kToolbarHeight * 0.8,
      ),
      actions: [
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.notifications_none),
              iconSize: 25,
              color: Colors.black54,
              onPressed: () {},
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size(deviceWidth * 0.12, kToolbarHeight * 0.5),
                  backgroundColor: Colors.pinkAccent),
              child: Text(
                'Chat',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              // style: ButtonStyle(
              //     backgroundColor:
              //         MaterialStateProperty.all<Color>(Colors.pinkAccent),
              //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              //         RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(8.0),
              //     ))),
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              iconSize: 25,
              color: Colors.black54,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
