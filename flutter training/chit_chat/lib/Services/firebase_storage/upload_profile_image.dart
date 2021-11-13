import 'dart:io';

import 'package:chit_chat/Services/firebase_storage/getprofilelink.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:image_picker/image_picker.dart';

final useruid = FirebaseAuth.instance.currentUser!.uid;

Future<void> uploadprofileImage(File file) async {
  //file directly from camera page
  //File file = File(filePath);              // file from camera and uploadgalaryimage()

  await firebase_storage.FirebaseStorage.instance
      .ref('UserProfileImages/$useruid')
      .putFile(file);
  downloadprofileURL(); // download url and upload in firestore
}

Future<void> uploadgalaryimage() async {
  final cameraimage =
      await ImagePicker().pickImage(source: ImageSource.gallery);
  File _profileImage = File(cameraimage!.path);
  uploadprofileImage(_profileImage);
}
