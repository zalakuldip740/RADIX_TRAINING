import 'package:chit_chat/Screens/LoginComponent/otpverificationpage.dart';
import 'package:chit_chat/Screens/uicomponenet/snackbar.dart';
import 'package:chit_chat/Screens/user_update_profile.dart';
import 'package:chit_chat/Services/firebase_firestore/add_profile_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

Future<void> signInwithPhone(String _mobile, BuildContext context) async {
  await _auth.verifyPhoneNumber(
    phoneNumber: "+91" + _mobile,
    verificationFailed: (FirebaseAuthException e) {
      //if (e.code == 'invalid-phone-number') {
      // print('The provided phone number is not valid.');
      customsnackbar(context, e.code.toString());
      //print(e);
      //}
    },
    verificationCompleted: (PhoneAuthCredential phoneAuthCredential) async {
      //customsnackbar(context, "Login successful!");
    },
    codeSent: (String verificationId, int? forceResendingToken) async {
      customsnackbar(context, "Otp sent to " + _mobile);
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => OtpverificationPage(verificationId, _mobile)));
    },
    codeAutoRetrievalTimeout: (String verificationId) async {},
  );
}

Future<void> phonesignInWithcredential(
    BuildContext context, String verificationid, String _otp) async {
  PhoneAuthCredential phoneauthcredencials = PhoneAuthProvider.credential(
      verificationId: verificationid, smsCode: _otp);
  // ignore: non_constant_identifier_names
  try {
    final Authcredencial = await FirebaseAuth.instance
        .signInWithCredential(phoneauthcredencials)
        .then((value) {
      addmobile();
      // addUserProfile("", "", context);
      // addUserProfileimageonly(
      //     "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png");
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const UserProfile()),
          (Route<dynamic> route) => false);
      customsnackbar(context, "Login successful!");
    });

    // if (Authcredencial.user != null) {
    //   addUserProfile("", "");
    //   addUserProfileimageonly(
    //       "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png");
    //   Navigator.pushAndRemoveUntil(
    //       context,
    //       MaterialPageRoute(builder: (context) => const UserProfile()),
    //       (Route<dynamic> route) => false);
    //   //customsnackbar(context, "Please update profile!");
    // }
  } on FirebaseAuthException catch (e) {
    customsnackbar(context, e.code.toString());
  }
}
