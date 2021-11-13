import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.cover,
            ),
            Container(
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
                body: SafeArea(
                  child: myBody(),
                ),
                bottomNavigationBar: mybottomnav(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class mybottomnav extends StatelessWidget {
  const mybottomnav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double navWidth = MediaQuery.of(context).size.width * 0.25;
    double navHeight = MediaQuery.of(context).size.height * 0.1;
    return Container(
      color: Colors.white,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: navWidth,
            height: navHeight,
            //padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border(right: BorderSide(color: Colors.black12))),
            child: IconButton(
              icon: Icon(
                Icons.call_outlined,
                color: Colors.blue,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: navWidth,
            height: navHeight,
            //padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border(right: BorderSide(color: Colors.black12))),
            child: IconButton(
              icon: Icon(
                Icons.location_city_outlined,
                color: Colors.blue,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: navWidth,
            height: navHeight,
            // padding: EdgeInsets.all(20),
            decoration: BoxDecoration(color: Colors.white),
            child: IconButton(
              icon: Icon(
                Icons.credit_card_outlined,
                color: Colors.blue,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: navWidth,
            height: navHeight,
            //padding: EdgeInsets.all(20),
            color: Colors.blue,
            //decoration: BoxDecoration(color: Colors.blue),
            child: IconButton(
              icon: Icon(
                Icons.notifications_none_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class myBody extends StatelessWidget {
  const myBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    double buttonWidth = deviceWidth * 0.25;
    return Container(
      margin: EdgeInsets.only(bottom: deviceHeight * 0.12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.network(
            "https://www.picsy.in/themes/seablue/images/logo.png",
            width: deviceWidth * 0.33,
            height: deviceHeight * 0.15,
            alignment: Alignment.topCenter,
          ),
          Spacer(
            flex: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: buttonWidth,
                height: deviceHeight * 0.08,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'SICK ?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.purple[200],
                      fontSize: 15,
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3))))),
                ),
              ),
              SizedBox(
                width: buttonWidth,
                height: deviceHeight * 0.08,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'ABOUT US',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.purple[200],
                      fontSize: 15,
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3))))),
                ),
              ),
              SizedBox(
                width: buttonWidth,
                height: deviceHeight * 0.08,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'NEWS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.purple[200],
                      fontSize: 15,
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3))))),
                ),
              ),
            ],
          ),
          SizedBox(height: deviceHeight * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: buttonWidth,
                height: deviceHeight * 0.08,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'OFFICE INFO',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.purple[200],
                      fontSize: 15,
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3))))),
                ),
              ),
              SizedBox(
                width: buttonWidth,
                height: deviceHeight * 0.08,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'PAGE MY DOCTOR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.purple[200],
                      fontSize: 15,
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3))))),
                ),
              ),
              SizedBox(
                width: buttonWidth,
                height: deviceHeight * 0.08,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'PORTAL',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.purple[200],
                      fontSize: 15,
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3))))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
