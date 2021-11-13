import 'package:firebase_login/Screens/component/loginform.dart';
import 'package:firebase_login/Screens/registerpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 200,
              child: Center(
                child: Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            LoginForm(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "..........................   OR   ..........................",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  backgroundImage: AssetImage('assets/google_logo.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  //backgroundColor: Colors.blueAccent.withOpacity(0.2),
                  backgroundImage: AssetImage('assets/facebook_logo.png'),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "New User ?  ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                  child: Text(
                    "Register Here",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blueAccent),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
