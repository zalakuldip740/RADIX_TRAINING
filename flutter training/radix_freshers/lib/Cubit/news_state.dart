part of 'news_cubit.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}

class SourcesResponsesuccess extends NewsState {
  final List<Source> sourcesdatas;

  SourcesResponsesuccess(this.sourcesdatas);
}

class ArticleResponsesuccess extends NewsState {
  final List<Article> articledatas;

  ArticleResponsesuccess(this.articledatas);
}

class ArticleLoading extends NewsState {
  final List<Article> oldarticledatas;
  final bool isfirstfetch;

  ArticleLoading(this.oldarticledatas, {this.isfirstfetch = false});
}

class NewsError extends NewsState {
  final String errormsg;

  NewsError(this.errormsg);
}

class Connectionstatusfailure extends NewsState {
  final String errormsg;

  Connectionstatusfailure(this.errormsg);
}
