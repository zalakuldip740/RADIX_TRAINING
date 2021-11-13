import 'package:retrofitdemo/Data/Model/model.dart';
import 'package:retrofitdemo/Data/Services/api_client.dart';

class Repository {
  final ApiService apiservice;

  Repository(this.apiservice);

  Future<List<Datum>> getData() async {
    final posts = await apiservice.getTasks();
    return posts.response!.data.toList();
  }
}
