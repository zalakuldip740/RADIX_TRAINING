import 'package:flutter/material.dart';
import 'package:responsive_ui_task2/style.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 15,
        ),
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU"),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Anne Taylor",
          style: TextThemes.cardtitlestyle,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Website Designer",
          style: TextThemes.carddescriptionstyle,
        ),
      ],
    );
  }
}
