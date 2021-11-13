import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    //double deviceHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://www.picsy.in/images/app/New-Dashboard/share-album.jpg',
              fit: BoxFit.cover,
            ),
            // Container(
            //   height: deviceHeight * 0.35,
            //   width: deviceWidth,
            //   decoration: BoxDecoration(
            //     image: const DecorationImage(
            //       image: NetworkImage(
            //           'https://www.picsy.in/images/app/New-Dashboard/share-album.jpg'),
            //       fit: BoxFit.cover,
            //     ),
            //     // borderRadius: BorderRadius.only(
            //     //     bottomLeft: Radius.circular(10),
            //     //     bottomRight: Radius.circular(10)),
            //   ),
            // ),
            singlecard(
                deviceWidth,
                "https://www.picsy.in/images/app/New-App/dashboard/Photobook.jpg",
                "Photo Books",
                "Convert photos to printed photo books",
                499),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  doublecard(
                      deviceWidth * 0.43,
                      "https://www.picsy.in/images/app/New-App/dashboard/Calendar.jpg",
                      "Photo Calendar",
                      500),
                  doublecard(
                      deviceWidth * 0.43,
                      "https://www.picsy.in/images/app/New-App/dashboard/Photoprint.jpg",
                      "Photo Prints",
                      160),
                ],
              ),
            ),
            singlecard(
                deviceWidth,
                "https://www.picsy.in/images/app/New-App/dashboard/Canvas.jpg",
                "Canvas Prints",
                "Photos on canvas for walls",
                999),
          ],
        ),
      ),
    );
  }
}

Card singlecard(double deviceWidth, String imgurl, String title,
    String subtitle, int price) {
  return Card(
    elevation: 1.5,
    margin: EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    child: Column(
      children: [
        Container(
          width: deviceWidth,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              topLeft: Radius.circular(8),
            ),
            child: Image.network(
              imgurl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  // Spacer(
                  //   flex: 2,
                  // ),
                  RichText(
                    text: TextSpan(
                        text: "From ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: "₹$price",
                              style: TextStyle(
                                  color: Colors.pinkAccent, fontSize: 15))
                        ]),
                  ),
                ],
              ),
              Text(
                subtitle,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.pinkAccent, fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Card doublecard(double cardWidth, String imgurl, String title, int price) {
  return Card(
    elevation: 1.5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    child: Container(
      width: cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              topLeft: Radius.circular(8),
            ),
            child: Image.network(
              imgurl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                RichText(
                  text: TextSpan(
                      text: "From ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: "₹$price",
                            style: TextStyle(
                                color: Colors.pinkAccent, fontSize: 15))
                      ]),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
