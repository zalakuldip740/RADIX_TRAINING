import 'package:dio/dio.dart';
import 'package:radix_freshers/Data/article_data.dart';
import 'package:radix_freshers/Data/souces_data.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://newsapi.org/v2')
abstract class ApiService {
  factory ApiService(Dio dio,
      {String? baseUrl, String? categoryname, int? page}) {
    // print("api:${page.toString()}");
    dio.options = BaseOptions(
        receiveTimeout: 30000,
        connectTimeout: 30000,
        queryParameters: {
          //'Content-Type': 'application/json',
          // 'Accept': 'application/json',
          'apiKey': '49c113ab24074c2e80fb546f2408a96f',
          'q': categoryname ?? '',
          'pageSize': 5,
          'page': page ?? ""
        });
    return _ApiService(dio, baseUrl: baseUrl);
  }

  @GET('/top-headlines/sources')
  Future<Sourcesdata> getSourcesList();

  @GET('/everything')
  Future<Articledata> getArticleList();
}
