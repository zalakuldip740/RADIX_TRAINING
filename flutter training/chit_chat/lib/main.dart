import 'package:chit_chat/Screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.deepOrange,
  ));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]); // lock orientation
  await FlutterWindowManager.addFlags(
      FlutterWindowManager.FLAG_SECURE); // disable ss
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.deepOrangeAccent,
          primarySwatch: Colors.deepOrange),
      //theme: ThemeData(primarySwatch: Colors.purple),
      home: const SplashScreen(),
    );
  }
}
