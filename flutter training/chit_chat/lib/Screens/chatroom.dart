import 'package:chit_chat/Screens/ChatRoomComponent/chatroomappbar.dart';
import 'package:chit_chat/Screens/ChatRoomComponent/chatsbody.dart';
import 'package:chit_chat/Screens/profilecomponent/imagepicker_snackbar.dart';
import 'package:chit_chat/Screens/uicomponenet/snackbar.dart';
import 'package:chit_chat/Services/firebase_firestore/add_profile_data.dart';
import 'package:chit_chat/Services/firebase_firestore/sendmessage.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatRoom extends StatefulWidget {
  Map<String, dynamic> data;
  String roomId;

  ChatRoom(this.data, this.roomId, {Key? key}) : super(key: key);

  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> with WidgetsBindingObserver {
  final messageController = TextEditingController();
  ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    messageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      //online
      addstatus(true);
    } else {
      addstatus(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: Column(
          children: [
            ChatRoomAppbar(widget.data),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: Container(
                    //height: MediaQuery.of(context).size.height,
                    // padding: const EdgeInsets.only(top: 20),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18))),
                    child: ChatsBody(widget.roomId, _scrollController))),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: messageController,
                onSubmitted: (_) => FocusScope.of(context).unfocus(),
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: () async {
                        ImagepickerSnackbar(context, widget.roomId);
                        // String chatimgurl = await downloadchatimgURL();
                        // sendmsg(chatimgurl, widget.roomId, "image");
                      },
                      icon: const Icon(
                        Icons.add_circle_outlined,
                        color: Colors.redAccent,
                      ),
                    ),

                    // labelText: "Enter message",
                    //label: Text("Enter message"),
                    hintText: "Enter message",
                    suffixIcon: IconButton(
                        onPressed: () {
                          String formatedmsg = messageController.text.trim();
                          if (formatedmsg != "") {
                            sendmsg(formatedmsg, widget.roomId, "text");
                            messageController.clear();
                            // WidgetsBinding.instance!.focusManager.primaryFocus
                            //     ?.unfocus();
                            _scrollController.animateTo(
                                _scrollController.position.maxScrollExtent,
                                duration: Duration(microseconds: 1),
                                curve: Curves.easeOut);
                          } else {
                            customsnackbar(context, 'Please Enter msg');
                          }
                        },
                        icon: const Icon(
                          Icons.send,
                          color: Colors.deepOrange,
                        )),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
