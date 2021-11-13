import 'package:flutter/material.dart';

class Datas {
  final String title;
  final int percent, videos;
  final colorvalue;
  //final Color cardcolor;

  Datas(this.percent, this.videos, this.title, this.colorvalue
      //this.cardcolor
      );
}

List<Datas> items = [
  Datas(50, 140, "HTML4 Design", Colors.purple),
  Datas(68, 847, "UI/UX Design", Colors.blue),
  Datas(25, 21, "Copywriting", Colors.red),
  Datas(32, 535, "Mobile Apps", Colors.orange),
];
