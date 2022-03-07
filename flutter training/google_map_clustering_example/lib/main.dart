import 'package:flutter/material.dart';

import 'google_map_clustering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Map Clustering Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GoogleMapClustering()
    );
  }
}

