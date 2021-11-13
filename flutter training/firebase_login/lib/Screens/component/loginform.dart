import 'package:firebase_login/Screens/HomePage.dart';
import 'package:firebase_login/authentication/authentication.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  //FirebaseAuth auth = FirebaseAuth.instance;

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                onSaved: (input) => _email = input!,
                validator: (value) {
                  if (value!.isEmpty) return 'Please Enter Email';
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Enter your email ',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                onSaved: (input) => _password = input!,
                validator: (value) {
                  if (value!.isEmpty) return 'Please Enter password';
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter your password ',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.password_outlined,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(8)),
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  elevation: MaterialStateProperty.all(0.0),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)))),
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  dynamic result =
                      await signIn(email: _email, password: _password);
                  if (result == null)
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                }
              },
              child: Text(
                "Login",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
