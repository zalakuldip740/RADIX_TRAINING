import 'dart:io';

import 'package:camera/camera.dart';
import 'package:chit_chat/Screens/uicomponenet/snackbar.dart';
import 'package:chit_chat/Screens/user_update_profile.dart';
import 'package:chit_chat/Services/firebase_storage/upload_profile_image.dart';
import 'package:chit_chat/Services/firebase_storage/uploadchatimage.dart';
import 'package:chit_chat/helper/constants.dart';
import 'package:flutter/material.dart';

class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen(
      {Key? key, required this.camera, required this.location})
      : super(key: key);

  final CameraDescription camera;
  final String location;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: login_back_color,
        body: FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // If the Future is complete, display the preview.
              //return CameraPreview(_controller);
              final scale = 1 /
                  (_controller.value.aspectRatio *
                      MediaQuery.of(context).size.aspectRatio);
              return Transform.scale(
                scale: scale,
                alignment: Alignment.topCenter,
                child: CameraPreview(_controller),
              );
            } else {
              // Otherwise, display a loading indicator.
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.white,
              ));
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          // Provide an onPressed callback.
          onPressed: () async {
            // Take the Picture in a try / catch block. If anything goes wrong,
            // catch the error.
            try {
              // Ensure that the camera is initialized.
              await _initializeControllerFuture;

              // Attempt to take a picture and get the file `image`
              // where it was saved.
              final image = await _controller.takePicture();
              File _Image = File(image.path);

              if (widget.location == "profile") {
                uploadprofileImage(_Image);
                // If the picture was taken, display it on a new screen.
                await Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const UserProfile(),
                  ),
                );
              } else {
                uploadchatsimage(_Image, widget.location);
                // If the picture was taken, display it on a new screen.
                Navigator.pop(context);
              }
            } catch (e) {
              // If an error occurs, log the error to the console.
              customsnackbar(context, e.toString());
            }
          },
          child: const Icon(Icons.camera_alt),
        ),
      ),
    );
  }
}
