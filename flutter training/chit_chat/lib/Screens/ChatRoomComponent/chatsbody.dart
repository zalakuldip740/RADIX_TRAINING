import 'dart:async';

import 'package:chit_chat/Screens/ChatRoomComponent/messages.dart';
import 'package:chit_chat/Services/firebase_storage/deletemsg.dart';
import 'package:chit_chat/Services/firebase_storage/uploadchatimage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatsBody extends StatefulWidget {
  String roomId;
  ScrollController _scrollController;

  ChatsBody(this.roomId, this._scrollController, {Key? key}) : super(key: key);

  @override
  _ChatsBodyState createState() => _ChatsBodyState();
}

class _ChatsBodyState extends State<ChatsBody> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore
          .collection('Chats room')
          .doc(widget.roomId)
          .collection('chats')
          .orderBy('time', descending: false)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.data != null) {
          return ListView.builder(
              controller: widget._scrollController,
              physics: BouncingScrollPhysics(),
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                String msgid = snapshot.data!.docs[index].id;
                Map<String, dynamic> data =
                    snapshot.data!.docs[index].data() as Map<String, dynamic>;
                Timer(const Duration(seconds: 10), () {
                  deletemsg(widget.roomId, msgid);
                  if (data['type'] ?? "" != "text") deletechatimg();
                  // _firestore
                  //     .collection('Chats room')
                  //     .doc(widget.roomId)
                  //     .collection('chats')
                  //     .doc(msgid)
                  //     .delete();
                  widget._scrollController.animateTo(
                      widget._scrollController.position.maxScrollExtent,
                      duration: Duration(microseconds: 1),
                      curve: Curves.easeOut);
                });
                return Messages(data, context);
              });
        } else if (snapshot.data == null) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text("Error"));
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
