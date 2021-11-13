import 'package:flutter/material.dart';
import 'package:radix_freshers/Helper/constant.dart';
import 'package:radix_freshers/Helper/textstyles.dart';
import 'package:radix_freshers/Services/Authentication/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var deviceheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: login_back_color,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome User",
              style: TextThemes.login_title_text_style,
            ),
            const Text(
              "Login/Sign Up to Continue",
              style: TextThemes.login_desc_text_style,
            ),
            SizedBox(
              height: deviceheight * 0.12,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 8)),
                onPressed: () {
                  signInWithGoogle(context);
                },
                icon: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  backgroundImage: const AssetImage('assets/google_logo.png'),
                ),
                label: const Text(
                  "Sign In With Google",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blueAccent),
                )),
          ],
        ),
      )),
    );
  }
}
