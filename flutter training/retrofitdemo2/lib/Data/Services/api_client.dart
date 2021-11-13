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
      'Authorization': 'Bearer 3c5ef58f7af1fc744ff8ef4cc1f8dfe1b9125c0e',
    });
    return _ApiService(dio, baseUrl: baseUrl);
  }

  @GET('/yearbook/getyearbook/28a6883292e53e1df2792d7fcb867108')
  Future<Responses> getTasks();
}
