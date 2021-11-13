import 'package:flutter/material.dart';

class ProTag extends StatelessWidget {
  final colorvalue;
  const ProTag(this.colorvalue, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colorvalue,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
        child: Text(
          "Pro",
          style:
              TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
