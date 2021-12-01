import 'dart:ui';

import 'package:daily_news/features/headline_news/domain/entities/headline_news_entity.dart';
import 'package:daily_news/features/headline_news/presentation/cubit/news_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class NewsHomePage extends StatelessWidget {
  const NewsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: BlocBuilder<HeadLineNewsCubit, HeadLineNewsState>(
        builder: (context, state) {
          if (state is NewsLoaded) {
            final headlinenewsdata = state.headlinenews.articles!;
            return _homeBody(headlinenewsdata, deviceheight, devicewidth);
          } else if (state is NewsError) {
            return Center(
              child: Text(state.msg.toString()),
            );
          }
          return Column(
            children: [
              Shimmer.fromColors(
                baseColor: Colors.black12,
                highlightColor: Colors.white10,
                child: SizedBox(
                  height: deviceheight * 0.50,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        height: deviceheight * 0.50,
                        decoration: const BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25))),
                      ),
                    ],
                  ),
                ),
              ),
              Shimmer.fromColors(
                  baseColor: Colors.black12,
                  highlightColor: Colors.white10,
                  child: Container(
                    padding: const EdgeInsets.only(left: 15),
                    height: 270,
                    width: devicewidth,
                    child: ListView.builder(
                        shrinkWrap: true,
                        //physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: const EdgeInsets.only(left: 10),
                            width: 240,
                            height: 130,
                            color: Colors.red,
                          );
                        }),
                  )),
            ],
          );
        },
      ),
    );
  }

  Widget _homeBody(
      List<Article> headlinenewsdata, double deviceheight, double devicewidth) {
    return SingleChildScrollView(
      //physics: ScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: deviceheight * 0.50,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  child:
                      // ImageFiltered(
                      //   imageFilter: ImageFilter.blur(sigmaX: 0, sigmaY: 1),
                      //child:
                      Image.network(
                    headlinenewsdata[0].urlToImage.toString(),
                    fit: BoxFit.cover,
                  ),
                  // ),
                ),
                Positioned(
                    bottom: 15,
                    left: 25,
                    child: Row(
                      children: [
                        const Text(
                          "Learn More",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.longArrowAltRight,
                              color: Colors.white,
                            )),
                      ],
                    )),
                Positioned(
                    bottom: 35,
                    left: 25,
                    child: SizedBox(
                      width: devicewidth * 0.85,
                      height: 100,
                      child: Text(
                        headlinenewsdata[0].title.toString(),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    )),
                Positioned(
                  bottom: 145,
                  left: 25,
                  //height: 50,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        color: Colors.white.withOpacity(0.3)),
                    child: const Text(
                      "News Of The Day",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(
          //   height: 25,
          // ),
          const Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              "Top Headlines",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            height: 270,
            width: devicewidth,
            //   color: Colors.red,
            child: ListView.builder(
                shrinkWrap: true,
                //physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        width: 240,
                        height: 130,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          child: Image.network(
                            headlinenewsdata[index + 1].urlToImage.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 240,
                        padding: const EdgeInsets.only(left: 15, top: 20),
                        child: Text(
                          headlinenewsdata[index + 1].title.toString(),
                          style: const TextStyle(
                              //color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Row(
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.clock,
                              size: 15,
                              color: Colors.black38,
                            ),
                            Text(
                              " " +
                                  DateFormat('dd-MM-yyyy').format(
                                      DateTime.parse(headlinenewsdata[index + 1]
                                          .publishedAt
                                          .toString())),
                              //headlinenewsdata[index + 1].publishedAt.toString(),
                              style: const TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Row(
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.user,
                              size: 15,
                              color: Colors.black38,
                            ),
                            // const Text(
                            //   " By ",
                            //   style: TextStyle(
                            //       color: Colors.grey,
                            //       fontWeight: FontWeight.w500,
                            //       fontSize: 18),
                            // ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                " " +
                                    headlinenewsdata[index + 1]
                                        .author
                                        .toString(),
                                //.substring(0, 20),
                                style: const TextStyle(
                                    color: Colors.black38,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 25),
            child: Text(
              "More Headlines",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: headlinenewsdata.length - 6,
              //scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 25),
                        width: 125,
                        height: 85,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          child: Image.network(
                            headlinenewsdata[index + 6].urlToImage.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: devicewidth * 0.55,
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              headlinenewsdata[index + 6].title.toString(),
                              style: const TextStyle(
                                  //color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 15, top: 5),
                            //width: 50,
                            child: Row(
                              children: [
                                const Text(
                                  "Source: ",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                  //overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    headlinenewsdata[index + 1]
                                        .source!
                                        .name
                                        .toString(),
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                // Text(
                                //   headlinenewsdata[index + 1].author.toString(),
                                //   style: const TextStyle(
                                //       color: Colors.grey,
                                //       fontWeight: FontWeight.w500,
                                //       fontSize: 16),
                                //   overflow: TextOverflow.ellipsis,
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
