import 'package:flutter/material.dart';

import 'mobilepage.dart';
import 'my_list_description.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  MyListPage? _myListPage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Expanded(flex: 2, child: MyListPage()),
            Expanded(flex: 3, child: ListDecsription(itemdesc:))
          ],
        ),
      ),
    );
  }
}
