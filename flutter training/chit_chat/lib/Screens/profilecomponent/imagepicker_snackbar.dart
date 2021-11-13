import 'package:camera/camera.dart';
import 'package:chit_chat/Screens/takepicturescreen.dart';
import 'package:chit_chat/Services/firebase_storage/upload_profile_image.dart';
import 'package:chit_chat/Services/firebase_storage/uploadchatimage.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
ImagepickerSnackbar(BuildContext context, String location) {
  final snackbar = SnackBar(
      duration: const Duration(seconds: 5),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      backgroundColor: Colors.deepOrange,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () async {
                final cameras = await availableCameras();
                final firstCamera = cameras.first;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TakePictureScreen(
                              camera: firstCamera,
                              location: location,
                            )));

                //context.read<ChitchatCubit>().getImagefromdevice();
              },
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                if (location == "profile") {
                  uploadgalaryimage();
                } else {
                  uploadchatgalaryimage(location);
                }
              },
              icon: const Icon(
                Icons.image_outlined,
                color: Colors.white,
              )),
        ],
      ));
  //Scaffold.of(context)..showSnackBar(snackbar);
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}
