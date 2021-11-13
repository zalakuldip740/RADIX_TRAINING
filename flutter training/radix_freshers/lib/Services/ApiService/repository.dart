import 'package:dio/dio.dart';
import 'package:radix_freshers/Services/ApiService/api_client.dart';

class Repository {
  late ApiService apiservice;

  Repository(this.apiservice);

  Future getArticlelist(int page, String sourcename) async {
    final datas = await ApiService(Dio(), page: page, categoryname: sourcename)
        .getArticleList();
    return datas.articles;
  }
}
