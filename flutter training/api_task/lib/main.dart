import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Card(
                        child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              'images/bookimg.png',
                              height: 80,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Love Proposal",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Get romantic with a special proposal photobook for your love ",
                                    //overflow: TextOverflow.ellipsis,
                                  ),
                                  Text("Pages:Min 20 - Max 80"),
                                  Text('Est.Delivery: 5-7 working days')
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                  );
                }),
          ),
        ));
  }
}
