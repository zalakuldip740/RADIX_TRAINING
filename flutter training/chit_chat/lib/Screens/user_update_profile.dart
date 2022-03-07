import 'package:chit_chat/Screens/profilecomponent/imagepicker_snackbar.dart';
import 'package:chit_chat/Services/Authentication/signout.dart';
import 'package:chit_chat/Services/firebase_firestore/add_profile_data.dart';
import 'package:chit_chat/helper/styles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final _formKey = GlobalKey<FormState>();

  final useruid = FirebaseAuth.instance.currentUser!.uid;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  final myNameController = TextEditingController();
  final myBioController = TextEditingController();

  @override
  void dispose() {
    myNameController.dispose();
    myBioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: StreamBuilder(
          stream: users.doc(useruid).snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            // if (snapshot.hasError) {
            //   return customsnackbar(context, "Something went wrong");
            // }

            // if (snapshot.hasData && !snapshot.data!.exists) {
            //   return customsnackbar(context, "Document does not exist");
            // }

            if (snapshot.hasData) {
              Map<String, dynamic> data =
                  snapshot.data!.data() as Map<String, dynamic>;
              return Column(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Center(
                      child: Text("Update Profile",
                          style: TextThemes.login_title_text_style),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              topRight: Radius.circular(18))),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage(data[
                                          'Profileurl'] ??
                                      "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png"),
                                  //FileImage(_profileImage!),
                                ),
                                Positioned(
                                    bottom: 5,
                                    right: 5,
                                    child: GestureDetector(
                                      onTap: () {
                                        ImagepickerSnackbar(context, "profile");
                                        addUserProfileonlydata(
                                            myNameController.text,
                                            myBioController.text,
                                            context); // when user add profile after edittext input,so this uoload changes
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(3),
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.deepOrange),
                                        child: const Icon(
                                          Icons.edit_outlined,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              data['Mobile'] ?? "",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  TextFormField(
                                    controller: myNameController
                                      ..text = data['Name'] ?? "",
                                    // onChanged: (input) => _name =
                                    //     (data['Name'] == "")
                                    //         ? input
                                    //         : data['Name'] + input,
                                    //initialValue: data['Name'],
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please Enter your name';
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType: TextInputType.name,
                                    decoration: const InputDecoration(
                                      labelText: 'Enter your Name ',
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(
                                        Icons.account_circle_outlined,
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  TextFormField(
                                    // initialValue: data['Bio'],
                                    controller: myBioController
                                      ..text = data['Bio'] ?? "",
                                    // onChanged: (input) => _bio =
                                    //     (data['Bio'] == "")
                                    //         ? input
                                    //         : data['Bio'] + input,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please Enter your bio';
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType: TextInputType.text,
                                    decoration: const InputDecoration(
                                      labelText: 'Enter your Bio ',
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(
                                        Icons.description_outlined,
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                            const EdgeInsets.all(8)),
                                        // backgroundColor:
                                        //     MaterialStateProperty.all(
                                        //         Colors.blueAccent
                                        // ),
                                        elevation:
                                            MaterialStateProperty.all(0.0),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12)))),
                                    onPressed: () async {
                                      if (_formKey.currentState!.validate()) {
                                        addUserProfile(myNameController.text,
                                            myBioController.text, context);
                                        //customsnackbar(context, "Please wait!");
                                        // users.doc(useruid).set({
                                        //   'Name': _name,
                                        //   'Bio': _bio
                                        // });
                                        //.add({'Name': _name, 'Bio': _bio});
                                      }
                                    },
                                    child: const Text(
                                      "UPDATE",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                signOut(context);
                              },
                              child: const Text("Logout",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.white,
              ));
            }
          },
        ),
      ),
    );
  }
}
