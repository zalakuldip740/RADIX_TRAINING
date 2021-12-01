// import 'package:equatable/equatable.dart';
//
// class HeadLineNewsEntity extends Equatable {
//   final String? sourceName;
//   final String? auther;
//   final String? title;
//   final String? description;
//   final String? url;
//   final String? imageUrl;
//   //final DateTime? publishedAt;
//
//   const HeadLineNewsEntity({
//     this.sourceName,
//     this.auther,
//     this.title,
//     this.description,
//     this.url,
//     this.imageUrl,
//     //this.publishedAt
//   });
//
//   @override
//   // TODO: implement props
//   List<Object?> get props =>
//       [sourceName, auther, title, description, url, imageUrl];
// }

// To parse this JSON data, do
//
//     final headlineNews = headlineNewsFromJson(jsonString);

import 'dart:convert';

HeadlineNewsEntity headlineNewsFromJson(String str) =>
    HeadlineNewsEntity.fromJson(json.decode(str));

String headlineNewsToJson(HeadlineNewsEntity data) =>
    json.encode(data.toJson());

class HeadlineNewsEntity {
  HeadlineNewsEntity({
    this.status,
    this.totalResults,
    this.articles,
  });

  String? status;
  int? totalResults;
  List<Article>? articles;

  factory HeadlineNewsEntity.fromJson(Map<String, dynamic> json) =>
      HeadlineNewsEntity(
        status: json["status"] ?? "",
        totalResults: json["totalResults"] ?? "",
        articles: List<Article>.from(
            json["articles"].map((x) => Article.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles!.map((x) => x.toJson())),
      };
}

class Article {
  Article({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  NewsSource? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: NewsSource.fromJson(json["source"]),
        author: json["author"] ?? "Unknown auther",
        title: json["title"] ?? "",
        description: json["description"] ?? "",
        url: json["url"] ?? "",
        urlToImage: json["urlToImage"] ??
            "https://png.pngtree.com/png-clipart/20190705/original/pngtree-vector-creative-breaking-news-tag-png-image_4265318.jpg",
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "source": source!.toJson(),
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt!.toIso8601String(),
        "content": content,
      };
}

class NewsSource {
  NewsSource({
    this.id,
    this.name,
  });

  String? id;
  String? name;

  factory NewsSource.fromJson(Map<String, dynamic> json) => NewsSource(
        id: json["id"] ?? "",
        name: json["name"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
