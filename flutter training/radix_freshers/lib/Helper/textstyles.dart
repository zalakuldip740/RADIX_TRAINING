import 'package:flutter/cupertino.dart';
import 'package:radix_freshers/Helper/constant.dart';

abstract class TextThemes {
  static const TextStyle login_title_text_style = TextStyle(
      color: login_title_text_color, fontWeight: FontWeight.bold, fontSize: 40);

  static const TextStyle login_desc_text_style = TextStyle(
      color: login_desc_text_color, fontWeight: FontWeight.bold, fontSize: 22);

  static const TextStyle spalsh_text_style = TextStyle(
      fontSize: 28, fontWeight: FontWeight.bold, color: splash_text_color);

  static const TextStyle category_title_text_style = TextStyle(
      color: Category_title_text_color,
      fontWeight: FontWeight.bold,
      fontSize: 28);
}
