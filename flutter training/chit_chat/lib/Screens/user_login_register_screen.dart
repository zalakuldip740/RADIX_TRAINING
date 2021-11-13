import 'package:chit_chat/Screens/LoginComponent/loginform.dart';
import 'package:chit_chat/helper/styles.dart';
import 'package:flutter/material.dart';

class UserLoginRegisterPage extends StatelessWidget {
  const UserLoginRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: Center(
                child: Text("Welcome User",
                    style: TextThemes.login_title_text_style),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.all(25),
                margin: EdgeInsets.symmetric(
                    horizontal: (devicewidth > 600) ? 150 : 25),
                decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18))),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //mainAxisSize: MainAxisSize.min,
                    children: const [
                      SizedBox(
                        height: 25,
                      ),
                      LoginForm(),
                      SizedBox(
                        height: 25,
                      ),
                      // Text(
                      //   "....................   OR   ....................",
                      //   style: TextStyle(fontWeight: FontWeight.bold),
                      // ),
                      // SizedBox(
                      //   height: 25,
                      // ),

                      //google sign in disabled corruntly

                      // ElevatedButton.icon(
                      //     style: ElevatedButton.styleFrom(
                      //         elevation: 0.0,
                      //         primary: Colors.blueAccent,
                      //         padding: const EdgeInsets.symmetric(
                      //             vertical: 5, horizontal: 8)),
                      //     onPressed: () {
                      //       signInWithGoogle(context);
                      //       customsnackbar(context, "Please wait!");
                      //     },
                      //     icon: CircleAvatar(
                      //       backgroundColor: Colors.grey.withOpacity(0.2),
                      //       backgroundImage:
                      //           const AssetImage('assets/google_logo.png'),
                      //     ),
                      //     label: const Text(
                      //       "Sign In With Google",
                      //       style: TextStyle(fontWeight: FontWeight.bold),
                      //     )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
