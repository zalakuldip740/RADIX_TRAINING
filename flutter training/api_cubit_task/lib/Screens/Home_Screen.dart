import 'package:api_cubit_task/Bloc/picsy_bloc.dart';
import 'package:api_cubit_task/Data/Model/model.dart';
import 'package:api_cubit_task/Data/Services/api_client.dart';
import 'package:api_cubit_task/Data/repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'AlbumPage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String url = "http://www.demoaws.picsy.in/api/";
    final apiservice = ApiService(Dio(), baseUrl: url);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<PicsyBloc>(
        create: (context) => PicsyBloc(Repository(apiservice)),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: BlocBuilder<PicsyBloc, PicsyState>(
              builder: (context, state) {
                BlocProvider.of<PicsyBloc>(context).add(loadingevent());
                if (state is PicsyInitial) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is PicsyResponsesuccess) {
                  final bookdatas = state.datas;
                  return booklists(context, bookdatas);
                } else if (state is PicsyError) {
                  final errorsmg = state.errormsg;
                  return Center(
                    child: Text(errorsmg),
                  );
                } else if (state is Connectionstatusfailure) {
                  final errormsg2 = state.errormsg;
                  return Center(child: Text(errormsg2));
                } else {
                  return Text("error");
                }
              },
            ),
          ),
        ),
      ),
    );
  }
  // build list view & manage st

  // build list view & its tile
  ListView booklists(BuildContext context, List<Datum> posts) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AlbumPage(
                          bookData: posts[index],
                        )),
              );
            },
            child: Container(
              color: Colors.black12,
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.only(
                    top: 15, left: 10, right: 10, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          //width: 150,
                          alignment: Alignment.topCenter,
                          child: Image.network(
                            //'images/bookimg.png',
                            posts[index].imgHttpThumb!.toString(),
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding:
                                EdgeInsets.only(top: 10, left: 10, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  posts[index].yearbookName!.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  posts[index]
                                      .yearbookDescription!
                                      .desc!
                                      .toString(),
                                  //overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Pages: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Min 20 -Max 80")
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Est.Delivery: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("5-7 working days")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          posts[index].yearbookDescription!.price!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        _button(Colors.black54, 'Preview',
                            Icons.visibility_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        _button(
                            Colors.redAccent, 'Create', Icons.create_outlined),
                      ],
                    )
                  ],
                ),
              )),
            ),
          );
        });
  }
}

ElevatedButton _button(Color bgcolor, String label, IconData icon) {
  return ElevatedButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
            EdgeInsets.only(top: 0, bottom: 0, left: 12, right: 12)),
        backgroundColor: MaterialStateProperty.all(bgcolor),
      ),
      icon: Icon(
        icon,
        size: 15,
      ),
      label: Text(
        label,
        style: TextStyle(fontSize: 12),
      ));
}
