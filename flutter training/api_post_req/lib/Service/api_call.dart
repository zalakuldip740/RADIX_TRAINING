import 'package:api_post_req/Model/model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_call.g.dart';

@RestApi(baseUrl: 'https://reqres.in/api')
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) {
    dio.options =
        BaseOptions(receiveTimeout: 30000, connectTimeout: 30000, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer 950756f02948a64e992eaee4626a4818db59c4ed',
    });
    return _ApiService(dio, baseUrl: baseUrl);
  }

  @GET('/users')
  Future<User> getTasks();
}
