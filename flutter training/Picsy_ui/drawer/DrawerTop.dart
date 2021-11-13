import 'package:flutter/material.dart';

class DrawerTop extends StatelessWidget {
  const DrawerTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.blue,
          Colors.white,
        ],
      )),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.white,
          child: Image.asset(
            'assets/images/logo.png',
            width: 70,
            height: 70,
          ),
        ),
      ),
    );
  }
}
