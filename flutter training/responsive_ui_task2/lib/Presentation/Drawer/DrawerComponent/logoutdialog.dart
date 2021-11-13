import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18))),
      title: Text("Log out"),
      titleTextStyle: TextStyle(
          color: Colors.redAccent, fontSize: 22, fontWeight: FontWeight.bold),
      content: Text("Are you sure want to logout?"),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
              elevation: MaterialStateProperty.all(0.0),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)))),
          onPressed: () => Navigator.pop(context),
          child: const Text('Yes'),
        ),
      ],
    );
  }
}
