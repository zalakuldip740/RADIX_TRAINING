import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radix_freshers/Helper/constant.dart';
import 'package:radix_freshers/Helper/textstyles.dart';

Container articlepageAppbar(BuildContext context, String sourcename) {
  return Container(
    color: toolbar_default_color,
    padding: const EdgeInsets.all(12),
    height: 120,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Text(
            sourcename,
            overflow: TextOverflow.ellipsis,
            style: TextThemes.category_title_text_style,
          ),
        ),
      ],
    ),
  );
}
