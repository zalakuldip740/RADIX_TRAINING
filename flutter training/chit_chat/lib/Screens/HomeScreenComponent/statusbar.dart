import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: CircleAvatar(
          radius: 24,
          backgroundColor: Colors.white,
          child: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png")),
        ),
      ),
    );
  }
}
