import 'package:flutter/material.dart';
import 'package:google_files_clone/Screens/Component/files_body.dart';
import 'package:google_files_clone/Widgets/files_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: FilesAppbar(),
        body: FilesBody(),
        //drawer: FilesDrawer(),
        drawer: Drawer(),
        // bottomNavigationBar: FilesBottomNavigationBar(),
      ),
    );
  }
}
