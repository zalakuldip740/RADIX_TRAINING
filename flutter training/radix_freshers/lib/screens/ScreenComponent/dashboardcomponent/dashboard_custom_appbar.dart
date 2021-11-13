import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radix_freshers/Helper/constant.dart';
import 'package:radix_freshers/Helper/textstyles.dart';
import 'package:radix_freshers/Services/Authentication/signout.dart';

Container dashboardAppbar(BuildContext context) {
  return Container(
    color: toolbar_default_color,
    padding: const EdgeInsets.all(12),
    height: 120,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 22,
          backgroundImage: NetworkImage(
              FirebaseAuth.instance.currentUser!.photoURL.toString()),
        ),
        const Text(
          "News Category",
          overflow: TextOverflow.ellipsis,
          style: TextThemes.category_title_text_style,
        ),
        // IconButton(
        //     onPressed: () {
        //       Navigator.push(
        //           context, MaterialPageRoute(builder: (context) => BookMark()));
        //     },
        //     icon: const Icon(
        //       Icons.star,
        //       color: Colors.red,
        //     )),
        IconButton(
            onPressed: () {
              signOut(context);
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ))
      ],
    ),
  );
}
