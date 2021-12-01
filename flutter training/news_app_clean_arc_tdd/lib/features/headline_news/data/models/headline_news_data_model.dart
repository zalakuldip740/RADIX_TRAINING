// // To parse this JSON data, do
// //
// //     final headlineNews = headlineNewsFromJson(jsonString);
//
// import 'dart:convert';
//
// HeadlineNews headlineNewsFromJson(String str) =>
//     HeadlineNews.fromJson(json.decode(str));
//
// String headlineNewsToJson(HeadlineNews data) => json.encode(data.toJson());
//
// class HeadlineNews {
//   HeadlineNews({
//     this.status,
//     this.totalResults,
//     this.articles,
//   });
//
//   String? status;
//   int? totalResults;
//   List<Article>? articles;
//
//   factory HeadlineNews.fromJson(Map<String, dynamic> json) => HeadlineNews(
//         status: json["status"] ?? "",
//         totalResults: json["totalResults"] ?? "",
//         articles: List<Article>.from(
//             json["articles"].map((x) => Article.fromJson(x))),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "status": status,
//         "totalResults": totalResults,
//         "articles": List<dynamic>.from(articles!.map((x) => x.toJson())),
//       };
// }
//
// class Article {
//   Article({
//     this.source,
//     this.author,
//     this.title,
//     this.description,
//     this.url,
//     this.urlToImage,
//     this.publishedAt,
//     this.content,
//   });
//
//   NewsSource? source;
//   String? author;
//   String? title;
//   String? description;
//   String? url;
//   String? urlToImage;
//   DateTime? publishedAt;
//   String? content;
//
//   factory Article.fromJson(Map<String, dynamic> json) => Article(
//         source: NewsSource.fromJson(json["source"]),
//         author: json["author"] ?? "",
//         title: json["title"] ?? "",
//         description: json["description"] ?? "",
//         url: json["url"] ?? "",
//         urlToImage: json["urlToImage"] ?? "",
//         publishedAt: DateTime.parse(json["publishedAt"]),
//         content: json["content"] ?? "",
//       );
//
//   Map<String, dynamic> toJson() => {
//         "source": source!.toJson(),
//         "author": author,
//         "title": title,
//         "description": description,
//         "url": url,
//         "urlToImage": urlToImage,
//         "publishedAt": publishedAt!.toIso8601String(),
//         "content": content,
//       };
// }
//
// class NewsSource {
//   NewsSource({
//     this.id,
//     this.name,
//   });
//
//   String? id;
//   String? name;
//
//   factory NewsSource.fromJson(Map<String, dynamic> json) => NewsSource(
//         id: json["id"] ?? "",
//         name: json["name"] ?? "",
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//       };
// }
