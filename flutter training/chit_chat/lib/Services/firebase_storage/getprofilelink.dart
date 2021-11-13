import 'package:chit_chat/Services/firebase_firestore/add_profile_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

final useruid = FirebaseAuth.instance.currentUser!.uid;

Future<void> downloadprofileURL() async {
  String downloadURL = await firebase_storage.FirebaseStorage.instance
      .ref('UserProfileImages/$useruid')
      .getDownloadURL();
  addUserProfileimageonly(downloadURL); //upload url to firestore
}
