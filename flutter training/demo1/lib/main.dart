import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> items = <String>['A', 'B', 'C'];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          shadowColor: Colors.redAccent,
          leading: Icon(
            Icons.home,
            color: Colors.white,
          ),
          elevation: 15.0,
          title: Text(
            "Demo App",
            style: TextStyle(color: Colors.green, fontSize: 25.0),
          ),
        ),
        body: Center(
          child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  child: Center(child: Text('Item ${items[index]}')),
                );
              }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.redAccent,
          elevation: 20.0,
        ),
      ),
    );
  }
}
