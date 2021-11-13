import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> titles = <String>[
    'Flutter clutter',
    'Google news',
    'flutter news',
    'patavinus',
    'Local news',
    'travel blog',
    'Ui bolg',
    'Imaginary computer blog '
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shape: Border(
              bottom: BorderSide(color: Colors.deepPurpleAccent, width: 2)),
          backgroundColor: Colors.white,
          title: Text(
            "Enter Your's Practices Name",
            style: TextStyle(color: Colors.deepPurple[50], fontSize: 15),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.deepPurpleAccent[400],
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.deepPurpleAccent[400],
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Image.network(
                      "https://identity.ucsf.edu/sites/g/files/tkssra266/f/wysiwyg/UCSF-Benioff-Childrens-Hospitals-logo.jpg",
                      width: 200,
                    ),
                  ),
                  ListView.builder(
                      itemCount: titles.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.only(
                              left: 10, right: 10, bottom: 5, top: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1,
                                spreadRadius: 1,
                                offset:
                                    Offset(1, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ListTile(
                            title: Text("${titles[index]}"),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
