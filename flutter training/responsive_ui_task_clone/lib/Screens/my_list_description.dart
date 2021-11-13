import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_task_clone/constatnts.dart';

import '../responsive_ui.dart';

class ListDecsription extends StatelessWidget {
  final String itemdesc;

  const ListDecsription({Key? key, required this.itemdesc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              if (Responsive.isMobile(context))
                Container(
                  height: kToolbarHeight,
                  color: Colors.blue,
                  child: ListTile(
                    leading: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    title: Text(
                      "Details",
                      style: TextStyle(
                          color: toolbaritemcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              Expanded(
                child: Center(
                  child: Text(
                    itemdesc,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
