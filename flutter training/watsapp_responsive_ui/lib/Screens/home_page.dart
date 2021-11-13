import 'package:flutter/material.dart';
import 'package:watsapp_responsive_ui/Screens/ComponentWidgets/myAppbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: MyAppBar(),
    ));
  }
}
