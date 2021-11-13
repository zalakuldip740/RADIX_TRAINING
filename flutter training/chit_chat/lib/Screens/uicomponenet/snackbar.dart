import 'package:flutter/material.dart';

customsnackbar(BuildContext context, String result) {
  final snackbar = SnackBar(
    duration: const Duration(seconds: 3),
    content: Text(
      result,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    ),
    margin: const EdgeInsets.all(35),
    //backgroundColor: Colors.deepOrange,
    padding: const EdgeInsets.all(15),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  );
  //Scaffold.of(context)..showSnackBar(snackbar);
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}
