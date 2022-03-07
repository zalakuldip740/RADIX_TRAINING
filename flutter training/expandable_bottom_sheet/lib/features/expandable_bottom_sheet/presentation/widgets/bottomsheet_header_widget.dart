import 'package:expandable_bottom_sheet/core/config/app_constatnt.dart';
import 'package:flutter/material.dart';

class BottomSheetHeaderWidget extends StatelessWidget {
  const BottomSheetHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Search Maps",
                icon: Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const CircleAvatar(
            radius: 25,
            backgroundColor: kPrimaryLightColor,
            child: Icon(Icons.person_outline_outlined))
      ],
    );
  }
}
