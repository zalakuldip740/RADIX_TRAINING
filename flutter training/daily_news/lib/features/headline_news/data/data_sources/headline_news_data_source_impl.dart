import 'dart:convert';

import 'package:daily_news/core/error/failue.dart';
import 'package:daily_news/features/headline_news/data/data_sources/headline_news_data_source.dart';
import 'package:daily_news/features/headline_news/domain/entities/headline_news_entity.dart';
import 'package:http/http.dart' as http;

class HeadLineNewsDataSourceImpl implements HeadLineNewsDataSource {
  final http.Client client;

  HeadLineNewsDataSourceImpl({required this.client});

  @override
  Future<HeadlineNewsEntity?>? getHeadLineNews() async {
    final url = Uri.https('newsapi.org', '/v2/top-headlines',
        {'apiKey': 'YOUR API KEY', 'language': 'en'});
    final response = await client.get(
      url,
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      return HeadlineNewsEntity.fromJson(json.decode(response.body));
    } else {
      throw ServerFailure();
    }
  }
}
