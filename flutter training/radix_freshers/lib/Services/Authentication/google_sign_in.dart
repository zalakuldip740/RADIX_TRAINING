import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:radix_freshers/screens/dashboard.dart';
import 'package:radix_freshers/widgets/customsnackbar.dart';

Future<void> signInWithGoogle(BuildContext context) async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn()
      .signIn()
      .whenComplete(() => customsnackbar(context, "Please wait!"));

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  final authcredencial = await FirebaseAuth.instance
      .signInWithCredential(credential); // also we can use .whencompleted
  if (authcredencial.user != null) {
    customsnackbar(context, "Login Successful!");
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Dashboard()));
  }
}
