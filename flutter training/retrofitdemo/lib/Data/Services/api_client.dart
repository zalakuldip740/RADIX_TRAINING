import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../Model/model.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'http://www.demoaws.picsy.in/api')
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) {
    dio.options =
        BaseOptions(receiveTimeout: 30000, connectTimeout: 30000, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer 85b3e9922b97d73fc1e7b1145390eeed4776c1be',
    });
    return _ApiService(dio, baseUrl: baseUrl);
  }

  @GET('/yearbook/getyearbook/28a6883292e53e1df2792d7fcb867108')
  Future<Responses> getTasks();
}
