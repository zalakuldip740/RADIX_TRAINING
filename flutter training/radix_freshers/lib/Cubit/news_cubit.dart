import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:radix_freshers/Data/article_data.dart';
//import 'package:radix_freshers/Data/article_data.dart';
import 'package:radix_freshers/Data/souces_data.dart';
import 'package:radix_freshers/Services/ApiService/repository.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  final Repository repository;

  NewsCubit(this.repository) : super(NewsInitial());

  int page = 1;

  void getsourcesdata() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        try {
          final sourcesdata = await repository.apiservice.getSourcesList();
          List<Source>? listdatas = sourcesdata.sources!.toList();
          if (sourcesdata.status == "ok") {
            if (listdatas.isNotEmpty) {
              emit(SourcesResponsesuccess(listdatas));
            } else {
              emit(NewsError("No data found"));
            }
          } else {
            emit(NewsError(
                "Something went wrong!")); // response is not "ok" means error
          }
        } on Exception {
          emit(NewsError("something went wrong"));
        }
      }
    } on SocketException catch (_) {
      emit(Connectionstatusfailure("Check Your Internet connection!"));
    }
  }

  void getarticledata(String sourcename) async {
    // try {
    //   final result = await InternetAddress.lookup('example.com');
    //   if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
    //     //print("done");
    //     try {
    //       final articledata = await repository.apiservice.getArticleList();
    //       List<Article>? articlelistdatas = articledata.articles!.toList();
    //       if (articledata.status == "ok") {
    //         if (articlelistdatas.isNotEmpty) {
    //           emit(ArticleResponsesuccess(articlelistdatas));
    //         } else {
    //           emit(NewsError("No data found"));
    //         }
    //       } else {
    //         emit(NewsError(
    //             "Something went wrong!")); // response is not "ok" means error
    //       }
    //     } on Exception {
    //       emit(NewsError("something went wrong"));
    //     }
    //     // print("error is:${sourcesdata.status}");
    //
    //   }
    // } on SocketException catch (_) {
    //   emit(Connectionstatusfailure("Check Your Internet connection!"));
    // }

    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        if (state is ArticleLoading) return;
        final currentstate = state;
        var oldarticledata = <Article>[];
        if (currentstate is ArticleResponsesuccess) {
          oldarticledata = currentstate.articledatas;
        }
        emit(ArticleLoading(oldarticledata, isfirstfetch: page == 1));
        repository.getArticlelist(page, sourcename).then((newdata) {
          page++;

          final articledata = (state as ArticleLoading).oldarticledatas;
          articledata.addAll(newdata);

          emit(ArticleResponsesuccess(articledata));
        });
      }
    } on SocketException catch (_) {
      emit(Connectionstatusfailure("Check Your Internet connection!"));
    }
  }
}
