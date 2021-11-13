import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

Future<void> deletemsg(String roomId, String msgid) async {
  await _firestore
      .collection('Chats room')
      .doc(roomId)
      .collection('chats')
      .doc(msgid)
      .delete();
  //await deletechatimg();
}
