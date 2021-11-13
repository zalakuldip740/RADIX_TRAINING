import 'package:flutter/material.dart';
import 'package:watsapp_responsive_ui/constatnts.dart';
import 'package:watsapp_responsive_ui/style.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primarycolor,
      title: Text(
        "WhatsApp",
        style: TextThemes.toolbartextstyle,
      ),
      actions: [
        IconButton(
            color: toolbaractionscolor,
            onPressed: () {},
            icon: Icon(Icons.search)),
        IconButton(
            color: toolbaractionscolor,
            onPressed: () {},
            icon: Icon(Icons.more_vert))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
