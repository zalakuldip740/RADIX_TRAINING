import 'package:flutter/material.dart';
import 'package:picsy_ui/drawer/DrawerTop.dart';

// ignore: camel_case_types
class picsydrawer extends StatelessWidget {
  const picsydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                DrawerTop(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
