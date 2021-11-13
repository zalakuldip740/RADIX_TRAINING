import 'package:chit_chat/Screens/HomeScreenComponent/chatliistappbar.dart';
import 'package:chit_chat/Screens/HomeScreenComponent/chatlistview.dart';
import 'package:chit_chat/Services/firebase_firestore/add_profile_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  final user = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    didChangeAppLifecycleState(AppLifecycleState.resumed);
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
            const ChatListAppbar(),
            // const SizedBox(
            //   height: 100,
            //   child: StatusBar(),
            // ),
            Expanded(
                child: Container(
                    //height: MediaQuery.of(context).size.height,
                    // padding: const EdgeInsets.only(top: 20),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18))),
                    child: const ChatListView()))
          ],
        ),
      ),
    );
  }
}
