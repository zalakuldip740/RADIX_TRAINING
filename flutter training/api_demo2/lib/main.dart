import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';

import 'apiservice.dart';
import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _buildBody(context),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

FutureBuilder<User> _buildBody(BuildContext context) {
  final client = ApiService(dio.Dio()).fetchAlbum();
  return FutureBuilder<User>(
    future: client,
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        print("done");
      }
      if (snapshot.connectionState == ConnectionState.done) {
        final posts = snapshot.requireData;
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}
