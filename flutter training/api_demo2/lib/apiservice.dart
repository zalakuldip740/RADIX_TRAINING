import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'model.dart';
part 'apiservice.g.dart';

@RestApi(baseUrl: 'http://www.demoaws.picsy.in/api/yearbook/getyearbook')
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) {
    Dio dio = Dio();
    dio.interceptors
        .add(LogInterceptor(responseBody: false, requestBody: true));
    dio.options.headers['Authorization'] =
        'Bearer c3a79702a8ce0ee920f7c56d4f3488adaeb1eadd';
    //client.fetchAlbum().catchError((onError) {});
    @GET("")
    Future<User> fetchAlbum();
  }
  }

