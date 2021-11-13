import 'dart:async';

import 'package:chit_chat/Screens/homescreen.dart';
import 'package:chit_chat/Screens/user_login_register_screen.dart';
import 'package:chit_chat/Services/firebase_firestore/add_profile_data.dart';
import 'package:chit_chat/Services/permission/contactpermission.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isdenied = false;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () async {
      // ignore: unrelated_type_equality_checks
      askpermission();
    });
  }

  Future askpermission() async {
    final permission = await getcontactpermission();

    switch (permission) {
      case PermissionStatus.permanentlyDenied:
        setState(() {
          isdenied = true;
        });
        break;
      case PermissionStatus.granted:
        User? user = FirebaseAuth.instance.currentUser;
        if (user != null) {
          addstatus(true);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const UserLoginRegisterPage()));
        }

        break;
      case PermissionStatus.denied:
        setState(() {
          isdenied = true;
        });
        break;
      case PermissionStatus.restricted:
        // TODO: Handle this case.
        break;
      case PermissionStatus.limited:
        // TODO: Handle this case.
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Chit Chat",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
                if (isdenied)
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Please allow permission to use Chit chat",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                if (isdenied)
                  ElevatedButton(
                      onPressed: () {
                        askpermission();
                      },
                      child: const Text("Allow"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
