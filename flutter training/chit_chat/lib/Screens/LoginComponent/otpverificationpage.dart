import 'package:chit_chat/Services/Authentication/phone_sign_in.dart';
import 'package:chit_chat/helper/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OtpverificationPage extends StatefulWidget {
  String verificationId;
  final String _mobile;

  OtpverificationPage(this.verificationId, this._mobile, {Key? key})
      : super(key: key);

  @override
  _OtpverificationPageState createState() => _OtpverificationPageState();
}

class _OtpverificationPageState extends State<OtpverificationPage> {
  final _formKey = GlobalKey<FormState>();
  // ignore: non_constant_identifier_names
  final OtpController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    OtpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: Center(
                child: Text("Verify OTP",
                    style: TextThemes.login_title_text_style),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.all(25),
                margin: EdgeInsets.symmetric(
                    horizontal: (devicewidth > 600) ? 150 : 25),
                decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18))),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: OtpController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Valid Otp';
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                labelText: 'Enter Otp ',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(
                                  Icons.password_outlined,
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  // backgroundColor:
                                  //     MaterialStateProperty.all(Colors.white),
                                  elevation: MaterialStateProperty.all(0.0),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)))),
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  phonesignInWithcredential(
                                      context,
                                      widget.verificationId,
                                      OtpController.text);
                                  //customsnackbar(context, "Verifying otp!");
                                }
                              },
                              child: const Text(
                                'Verify',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  //color: Colors.deepOrange
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                        onTap: () {
                          signInwithPhone(widget._mobile, context);
                        },
                        child: const Text(
                          "Resend OTP",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget._mobile,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Wrong Number?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
