import 'package:api_cubit_task/Data/Model/model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

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
          title: Text(
            bookData.yearbookName.toString(),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          actions: [
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(5.0)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.redAccent),
                    ),
                    child: Text(
                      "Create",
                      style: TextStyle(fontSize: 12),
                    )),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  iconSize: 25,
                  color: Colors.black54,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(child: albumpagebody(context, bookData)),
        ),
        bottomNavigationBar: ButtononBottomnavigationbar(),
      ),
    );
  }
}

// ignore: camel_case_types
class albumpagebody extends StatelessWidget {
  final Datum bookData;

  const albumpagebody(BuildContext context, this.bookData, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List<ImageDatum> imagesdata = bookData.imageData;
    double devicewidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            width: devicewidth,
            alignment: Alignment.topCenter,
            //height: 200,
            // ignore: unnecessary_null_comparison
            child: (bookData.yearbookBanner.toString() == "null")
                ? SizedBox(
                    height: 0,
                  )
                : Image.network(bookData.yearbookBanner.toString())),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: (bookData.appPreviewDescription.toString() == "null")
              ? SizedBox(
                  height: 0,
                )
              : Html(
                  data: bookData.appPreviewDescription,
                  style: {
                    'html': Style(textAlign: TextAlign.center),
                    'font': Style(fontSize: FontSize.large)
                  },
                ),
        ),
        Coverpages(
            devicewidth * 0.55,
            bookData.pages[0].imageData[0].thumb.toString(),
            bookData.pages[0].pageName.toString()),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: bookData.pages.length,
              itemBuilder: (context, index) {
                return Container(
                  child: (index == 0 || index == bookData.pages.length - 1)
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/blankimg.jpg",
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              (index == 0)
                                  ? "Page ${index + 1}" // 1st page
                                  : "",
                            ),
                            /*Text(
                              (index == 0)
                                  ? bookData.pages[1].pageName
                                  .toString()
                                  .replaceAll("-", " ") // 1st page
                                  : "",
                            ),*/
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CachedNetworkImage(
                              imageUrl: bookData.pages[index].imageData[0].thumb
                                  .toString(),
                              placeholder: (context, url) => Container(
                                width: 10,
                                height: 10,
                                child: CircularProgressIndicator(
                                  color: Colors.redAccent,
                                  strokeWidth: 2,
                                ),
                              ),
                            ),
                            // Image.network(
                            //   bookData.pages[index].imageData[0].thumb
                            //       .toString(),
                            //   fit: BoxFit.cover,
                            // ),
                            SizedBox(
                              height: 5,
                            ),
                            Text((index % 2 == 0)
                                ? (index != bookData.pages.length - 2)
                                    ? "Page ${index}-${index + 1}"
                                    : "Page ${index}"
                                : ""),
                            //we can also use this
                            /*Text((index % 2 == 0)
                                ? (index != bookData.pages.length - 2)
                                    ? (bookData.pages[index].pageName
                                            .toString()
                                            .replaceAll("-", " ") +
                                        "-" +
                                        bookData.pages[index + 1].pageName
                                            .toString()
                                            .replaceAll("Page-", ""))
                                    : bookData.pages[index].pageName
                                        .toString()
                                        .replaceAll("-", " ")
                                : ""),*/
                          ],
                        ),
                );
              }),
        ),
        Coverpages(
            devicewidth * 0.55,
            bookData.pages[bookData.pages.length - 1].imageData[0].thumb
                .toString(),
            bookData.pages[bookData.pages.length - 1].pageName.toString())
      ],
    );
  }
}

class ButtononBottomnavigationbar extends StatelessWidget {
  const ButtononBottomnavigationbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 100),
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.all(5.0)),
            backgroundColor: MaterialStateProperty.all(Colors.redAccent),
          ),
          child: Text(
            "Create Now",
            style: TextStyle(fontSize: 15),
          )),
    );
  }
}

// ignore: non_constant_identifier_names
Padding Coverpages(double width, String imagedata, String pagename) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: width, height: 150, child: Image.network(imagedata)),
        SizedBox(
          height: 5,
        ),
        Text(pagename),
      ],
    ),
  );
}
