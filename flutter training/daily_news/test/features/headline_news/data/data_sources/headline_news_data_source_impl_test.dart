import 'dart:convert';
import 'dart:io';

import 'package:daily_news/config/constants.dart';
import 'package:daily_news/features/headline_news/data/data_sources/headline_news_data_source_impl.dart';
import 'package:daily_news/features/headline_news/domain/entities/headline_news_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/fixture_reader.dart';
import 'headline_news_data_source_impl_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late HeadLineNewsDataSourceImpl headLineNewsDataSourceImpl;
  late MockClient mockClient;
  final url = Uri.https(
      'newsapi.org', '/v2/top-headlines', {'apiKey': apiKey, 'language': 'en'});

  setUp(() {
    mockClient = MockClient();
    headLineNewsDataSourceImpl = HeadLineNewsDataSourceImpl(client: mockClient);
  });

  void setUpMockHttpClientSuccess200() {
    when(mockClient.get(url, headers: {'Content-Type': 'application/json'}))
        .thenAnswer(
      (_) async => http.Response(
        fixture('newsdata.json'),
        200,
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
        },
      ),
    );
  }

  void setUpMockHttpClientFailure404() {
    when(mockClient.get(
      url,
      headers: {'Content-Type': 'application/json'},
    )).thenAnswer(
      (_) async => http.Response('Something went wrong', 404),
    );
  }

  group('headline news data', () {
    test('should perform a Get req on a url', () async {
      setUpMockHttpClientSuccess200();

      await headLineNewsDataSourceImpl.getHeadLineNews();
    });
    test('return headlinenewsdata when response is 200', () async {
      setUpMockHttpClientSuccess200();

      final result = await headLineNewsDataSourceImpl.getHeadLineNews();
      expect(
          result!.status,
          equals(
              HeadlineNewsEntity.fromJson(json.decode(fixture('newsdata.json')))
                  .status)); // data changed every time
    });
    test('error response', () async {
      setUpMockHttpClientFailure404();
      final result = headLineNewsDataSourceImpl.getHeadLineNews();
      expect(result, throwsA(const TypeMatcher<Exception>()));
    });
  });
}
