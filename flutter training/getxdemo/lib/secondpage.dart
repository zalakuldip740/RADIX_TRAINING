import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SecondPage extends StatelessWidget {
  String value;

  SecondPage(this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black12),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_outlined),
                  color: Colors.white,
                  onPressed: () {
                    Get.back();
                  },
                )),
            Expanded(
                child: Center(
                    child: Text(
              value,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ))),
          ],
        ),
      ),
    );
  }
}
