import 'package:api_task/model/User.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "http://www.demoaws.picsy.in/api/yearbook/getyearbook")
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;
  @GET("/28a6883292e53e1df2792d7fcb867108")
  Future<List<Welcome>> getTasks();
}
