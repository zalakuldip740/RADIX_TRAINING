import 'package:chit_chat/Screens/uicomponenet/snackbar.dart';
import 'package:chit_chat/Screens/user_login_register_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

FirebaseAuth _auth = FirebaseAuth.instance;
final googleSignIn = GoogleSignIn();

Future<void> signOut(BuildContext context) async {
  try {
    await _auth.signOut();
    await googleSignIn.signOut();
    customsnackbar(context, "Logout successfully!");
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const UserLoginRegisterPage()));
  } on FirebaseAuthException catch (e) {
    customsnackbar(context, e.code.toString());
  }
}
