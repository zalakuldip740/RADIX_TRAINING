import 'package:flutter/material.dart';
import 'package:retrofitdemo2/Data/Model/model.dart';

class AlbumPage extends StatelessWidget {
  final Datum bookData;
  const AlbumPage({Key? key, required this.bookData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            bookData.yearbookName.toString(),
            style: TextStyle(color: Colors.redAccent),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.redAccent,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(bookData.imgHttpThumb.toString()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  bookData.yearbookDescription!.price.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(bookData.yearbookDescription!.desc.toString())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
