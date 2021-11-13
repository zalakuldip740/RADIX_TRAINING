import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Container Messages(Map<String, dynamic> data, BuildContext context) {
  return Container(
      padding: const EdgeInsets.all(8),
      margin: EdgeInsets.only(
          left:
              data['sendby'] == FirebaseAuth.instance.currentUser!.uid ? 55 : 0,
          right: data['sendby'] == FirebaseAuth.instance.currentUser!.uid
              ? 0
              : 55),
      //color: Colors.blueAccent,
      alignment: data['sendby'] == FirebaseAuth.instance.currentUser!.uid
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Stack(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 35),
              decoration: const BoxDecoration(
                  //borderRadius: BorderRadius.all(Radius.circular(10)),
                  // color: data['sendby'] == FirebaseAuth.instance.currentUser!.uid
                  //     ? Colors.white
                  //     : Colors.blueGrey,
                  ),
              child: data['type'] == "text"
                  ? Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        data['message'] ?? "",
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                  : SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      //child: Image.network(data['message'].toString()),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          imageUrl: data['message'] ?? "",
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) => Center(
                            child: CircularProgressIndicator(
                                value: downloadProgress.progress),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    )),
          if (data['sendby'] == FirebaseAuth.instance.currentUser!.uid)
            Positioned(
                right: 10,
                bottom: 10,
                child: CircularCountDownTimer(
                  duration: 10,
                  initialDuration: 0,
                  controller: CountDownController(),
                  width: 20,
                  height: 20,
                  ringColor: Colors.grey.shade300,
                  ringGradient: null,
                  fillColor: Colors.blueAccent,
                  fillGradient: null,
                  //backgroundColor: Colors.purple[500],
                  backgroundGradient: null,
                  strokeCap: StrokeCap.round,
                  textStyle: TextStyle(fontSize: 8.0),
                  textFormat: CountdownTextFormat.S,
                  isReverse: true,
                  isReverseAnimation: true,
                  isTimerTextShown: true,
                  autoStart: true,
                  // onStart: () {
                  //   print('Countdown Started');
                  // },
                  // onComplete: () {
                  //   print('Countdown Ended');
                  // },

                  // onComplete: () {
                  //   _firestore
                  //       .collection('Chats room')
                  //       .doc(roomId)
                  //       .collection('chats')
                  //       .doc(msgid)
                  //       .delete();
                  // },
                )),
          if (data['sendby'] != FirebaseAuth.instance.currentUser!.uid)
            Positioned(
                left: 10,
                bottom: 10,
                child: CircularCountDownTimer(
                  duration: 10,
                  initialDuration: 0,
                  controller: CountDownController(),
                  width: 20,
                  height: 20,
                  ringColor: Colors.grey.shade300,
                  ringGradient: null,
                  fillColor: Colors.blueAccent,
                  fillGradient: null,
                  //backgroundColor: Colors.purple[500],
                  backgroundGradient: null,
                  strokeCap: StrokeCap.round,
                  textStyle: TextStyle(fontSize: 8.0),
                  textFormat: CountdownTextFormat.S,
                  isReverse: true,
                  isReverseAnimation: true,
                  isTimerTextShown: true,
                  autoStart: true,
                  // onComplete: () {
                  //   _firestore
                  //       .collection('Chats room')
                  //       .doc(roomId)
                  //       .collection('chats')
                  //       .doc(msgid)
                  //       .delete();
                  // },
                  //isTimerTextShown: false,
                ))
        ],
      ));
}
// Text(
//   DateFormat.yMd()
//       .add_jm()
//       .format((data['time']).toDate() ?? ""),
//   style: const TextStyle(
//       color: Colors.white30,
//       fontSize: 10,
//       fontWeight: FontWeight.bold),
// ),
