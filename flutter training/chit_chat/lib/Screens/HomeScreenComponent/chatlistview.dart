import 'package:chit_chat/Screens/chatroom.dart';
import 'package:chit_chat/Services/firebase_firestore/generatechatroomid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatListView extends StatefulWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  _ChatListViewState createState() => _ChatListViewState();
}

class _ChatListViewState extends State<ChatListView> {
  List<String> phones = [];
  //List<List<String>> chunks = [];
  //Map<String, dynamic> data = {};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filterbynumber();
    //contactbucket();
    //getdata();
  }

  // List<String> phones = [];
  //
  filterbynumber() async {
    List<String> phones2 = [];
    Iterable<Contact> _contacts =
        await ContactsService.getContacts(withThumbnails: false);
    _contacts.forEach((contact) {
      contact.phones!.toSet().forEach((phone) {
        phones2.add(phone.value!);
      });
    });
    setState(() {
      phones = phones2;
    });
  }

  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
      .collection('users')
      // .where('Mobile',
      //     isNotEqualTo: FirebaseAuth.instance.currentUser!.phoneNumber)
      //.where('Status', isEqualTo: "true")
      .orderBy('LastActive', descending: true)
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasData) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Contact Active Users",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      //DocumentSnapshot user = snapshot.data!.docs[index];
                      Map<String, dynamic> data = snapshot.data!.docs[index]
                          .data() as Map<String, dynamic>;
                      if ((phones.contains(data['Mobile']) ||
                              phones.contains(data['Mobile'].substring(3))) &&
                          data['Mobile'] !=
                              FirebaseAuth.instance.currentUser!.phoneNumber &&
                          data['Status'] == true) {
                        return Column(
                          children: [
                            ListTile(
                              onTap: () {
                                String roomId = chatRoomId(
                                    FirebaseAuth.instance.currentUser!.uid,
                                    snapshot.data!.docs[index].id);

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ChatRoom(data, roomId)));
                              },
                              leading: CircleAvatar(
                                  radius: 22,
                                  backgroundImage: NetworkImage(data[
                                          'Profileurl'] ??
                                      "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png")),
                              title: Text(
                                data['Name'] ?? data['Mobile'] ?? "",
                                style: TextStyle(fontWeight: FontWeight.w500),
                                overflow: TextOverflow.ellipsis,
                              ),
                              //horizontalTitleGap: 40,
                              subtitle: Text(
                                data['Bio'] ?? "",
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green.withOpacity(0.1),
                                child: CircleAvatar(
                                  radius: 6,
                                  backgroundColor:
                                      Colors.green.withOpacity(0.2),
                                  child: const CircleAvatar(
                                    radius: 3,
                                    backgroundColor: Colors.green,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Divider(
                                color: Colors.deepOrange.withOpacity(0.1),
                              ),
                            )
                          ],
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    }),
              ),
            ],
          );
        } else if (snapshot.data == null) {
          return const Center(child: Text("No User"));
        } else if (snapshot.hasError) {
          return const Center(child: Text("Error"));
        }
        return CircularProgressIndicator();
      },
    );
  }
}
