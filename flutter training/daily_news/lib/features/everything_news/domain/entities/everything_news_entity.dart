class EverythingNewsEntity {
  final String? sourceName;
  final String? auther;
  final String? title;
  final String? description;
  final String? url;
  final String? imageUrl;
  final DateTime? publishedAt;

  EverythingNewsEntity(
      {this.sourceName,
      this.auther,
      this.title,
      this.description,
      this.url,
      this.imageUrl,
      this.publishedAt});
}
