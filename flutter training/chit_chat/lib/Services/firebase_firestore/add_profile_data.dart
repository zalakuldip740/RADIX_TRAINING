import 'package:chit_chat/Screens/homescreen.dart';
import 'package:chit_chat/Screens/uicomponenet/snackbar.dart';
import 'package:chit_chat/Screens/user_update_profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

final useruid = FirebaseAuth.instance.currentUser!.uid;
final mobilenumber = FirebaseAuth.instance.currentUser!.phoneNumber;
CollectionReference users = FirebaseFirestore.instance.collection('users');

Future<void> addUserProfile(String _name, String _bio, BuildContext context) {
  // Call the user's CollectionReference to add a new user
  return users.doc(useruid).set(
      {'Name': _name, 'Bio': _bio, 'Mobile': mobilenumber},
      SetOptions(merge: true)).then((value) {
    if (_name != "") {
      customsnackbar(context, "Profile Updated!");
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
          (Route<dynamic> route) => false);
    } else {
      //customsnackbar(context, "Profile Updated!");
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const UserProfile()),
          (Route<dynamic> route) => false);
    }
  });
}

Future<void> addUserProfileonlydata(
    String _name, String _bio, BuildContext context) {
  // Call the user's CollectionReference to add a new user
  return users.doc(useruid).set(
      {'Name': _name, 'Bio': _bio, 'Mobile': mobilenumber},
      SetOptions(merge: true));
}

Future<void> addmobile() {
  // Call the user's CollectionReference to add a new user
  return users
      .doc(useruid)
      .set({'Mobile': mobilenumber}, SetOptions(merge: true)).whenComplete(() {
    addstatus(true);
  });
}

Future<void> addUserProfileimageonly(String _profileimgurl) {
  // Call the user's CollectionReference to add a new user
  return users
      .doc(useruid)
      .set({'Profileurl': _profileimgurl}, SetOptions(merge: true));
}

Future<void> addstatus(bool status) {
  // Call the user's CollectionReference to add a new user
  return users.doc(useruid).set(
      {'Status': status, 'LastActive': FieldValue.serverTimestamp()},
      SetOptions(merge: true));
}
