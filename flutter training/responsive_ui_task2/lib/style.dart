import 'package:flutter/cupertino.dart';
import 'package:responsive_ui_task2/constatnts.dart';

abstract class TextThemes {
  static const TextStyle cardtitlestyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: defaultcolor);

  static const TextStyle homepagetilestyle =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: defaultcolor);

  static const TextStyle carddescriptionstyle = TextStyle(
      fontWeight: FontWeight.w600, color: subtitlecolor, fontSize: 15);

  static const TextStyle cardpriceparticipantesstyle = TextStyle(
      color: cardpricecolor, fontSize: 15, fontWeight: FontWeight.w500);
}
