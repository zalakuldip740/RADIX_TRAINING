import 'dart:io';

import 'package:chit_chat/Services/firebase_firestore/sendmessage.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

String imagename = Uuid().v1();

Future<void> uploadchatsimage(File file, String roomid) async {
  // file from camera and uploadgalaryimage()

  await firebase_storage.FirebaseStorage.instance
      .ref('UserChatsImages/$imagename')
      .putFile(file);
  downloadchatimgURL(roomid); // download url and upload in firestore
}

Future<void> uploadchatgalaryimage(String roomid) async {
  final cameraimage =
      await ImagePicker().pickImage(source: ImageSource.gallery);
  File _profileImage = File(cameraimage!.path);
  uploadchatsimage(_profileImage, roomid);
}

Future<void> downloadchatimgURL(String roomid) async {
  String downloadURL = await firebase_storage.FirebaseStorage.instance
      .ref('UserChatsImages/$imagename')
      .getDownloadURL();
  sendmsg(downloadURL, roomid, "image");
}

Future<void> deletechatimg() async {
  await firebase_storage.FirebaseStorage.instance
      .ref('UserChatsImages/$imagename')
      .delete();
}
