import 'package:chit_chat/Screens/uicomponenet/snackbar.dart';
import 'package:chit_chat/Services/Authentication/phone_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  //FirebaseAuth auth = FirebaseAuth.instance;

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _mobile = "";
  //bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                onChanged: (input) => _mobile = input,
                validator: (value) {
                  //String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                  String patttern = r'(^[0-9]{10}$)';
                  RegExp regExp = RegExp(patttern);
                  if (value!.isEmpty) {
                    return 'Please Enter Mobile Number';
                  } else if (!regExp.hasMatch(value)) {
                    return 'Please Enter Valid Mobile Number';
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter your mobile Number ',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.call_outlined,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                   // backgroundColor: MaterialStateProperty.all(Colors.white),
                    elevation: MaterialStateProperty.all(0.0),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)))),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    customsnackbar(context, "Please wait!");
                    signInwithPhone(_mobile, context);
                  }
                },
                child: const Text(
                  "SEND OTP",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      //color: Colors.deepOrange
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
