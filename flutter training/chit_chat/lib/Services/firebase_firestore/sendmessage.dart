import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

String sendby = FirebaseAuth.instance.currentUser!.uid;
Future<void> sendmsg(String msg, String roomId, String type) async {
  Map<String, dynamic> msgdata = {
    'sendby': sendby,
    'type': type,
    'message': msg,
    'time': FieldValue.serverTimestamp()
  };
  await FirebaseFirestore.instance
      .collection('Chats room')
      .doc(roomId)
      .collection('chats')
      .add(msgdata);
}
