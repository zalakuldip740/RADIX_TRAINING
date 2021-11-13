import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:radix_freshers/Data/article_data.dart';

Widget articlelist(BuildContext context, List<Article> articledatas,
    ScrollController scrollController, bool isloading) {
  return ListView.builder(
      itemCount: articledatas.length + (isloading ? 1 : 0),
      controller: scrollController,
      itemBuilder: (BuildContext context, int index) {
        if (index < articledatas.length) {
          return Card(
            elevation: 1.5,
            margin:
                const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: articledatas[index].urlToImage.toString(),
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(
                          value: downloadProgress.progress),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    articledatas[index].title.toString(),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  child: ExpandableText(
                    articledatas[index].description.toString(),
                    maxLines: 3,
                    expandText: 'show more',
                    collapseText: 'show less',
                    linkColor: Colors.blue,
                  ),
                ),
              ],
            ),
          );
        } else {
          Timer(const Duration(milliseconds: 50), () {
            scrollController.jumpTo(scrollController.position.maxScrollExtent);
          });

          //return customsnackbar(context, "loading more");
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "loding more",
                style: TextStyle(color: Colors.redAccent),
              ),
              SizedBox(width: 10),
              CircularProgressIndicator(
                color: Colors.redAccent,
              ),
            ],
          );
        }
      });
}
