import 'package:flutter/material.dart';

import '../constatnts.dart';
import '../style.dart';

class ListpageAppbar extends StatelessWidget {
  const ListpageAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primarycolor,
      height: kToolbarHeight,
      width: MediaQuery.of(context).size.width,
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
            style: TextThemes.toolbartextstyle,
          ),
          IconButton(
            color: toolbaritemcolor,
            onPressed: () {},
            icon: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
