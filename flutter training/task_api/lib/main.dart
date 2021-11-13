import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task_api/api_client.dart';
import 'package:task_api/model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// to set the root of app.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Api Task',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'API Demo Page'),
    );
  }
}

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(context),
    );
  }

  // build list view & manage states
  FutureBuilder<BookResponses> _buildBody(BuildContext context) {
    final client =
        ApiService(Dio(BaseOptions(contentType: "application/json")));
    return FutureBuilder<BookResponses>(
      future: client.fetchAlbum(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          //final List<Album> posts = snapshot.requireData;

          final List<Datas>? posts = snapshot.data!.response!.data;
          return _buildPosts(context, posts!);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  // build list view & its tile
  ListView _buildPosts(BuildContext context, List<Datas> posts) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
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
                        width: 100,
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          //'images/bookimg.png',
                          posts[index].img_http_thumb,
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
                                posts[index].yearbook_name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                posts[index].yearbook_description.Desc,
                                //overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Pages: ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                        posts[index].yearbook_description.Price,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      _button(
                          Colors.black54, 'Preview', Icons.visibility_outlined),
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
