import 'package:firebase_login/Screens/loginpage.dart';
import 'package:firebase_login/authentication/authentication.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await signOut();
            //FirebaseAuth.instance.signOut();
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (contex) => LoginPage()));
          },
          child: Text("Logout"),
        ),
      ),
    );
  }
}
