import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radix_freshers/Cubit/news_cubit.dart';
import 'package:radix_freshers/Data/article_data.dart';
import 'package:radix_freshers/Services/ApiService/api_client.dart';
import 'package:radix_freshers/Services/ApiService/repository.dart';
import 'package:radix_freshers/screens/ScreenComponent/articlecomponent/article_list.dart';
import 'package:radix_freshers/screens/ScreenComponent/articlecomponent/articlepage_custom_appbar.dart';

// ignore: must_be_immutable
class NewsArticles extends StatelessWidget {
  String sourcename;

  NewsArticles(this.sourcename, {Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();

  void setupscrollcontroller(BuildContext context) {
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0) {
          BlocProvider.of<NewsCubit>(context).getarticledata(sourcename);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //print(page.toString());
    //setupscrollcontroller(context);
    final apiservice = ApiService(Dio(), categoryname: sourcename);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => NewsCubit(Repository(apiservice)),
        child: SafeArea(
          child: Scaffold(
            //backgroundColor: Colors.white,
            body: Column(
              children: [
                articlepageAppbar(context, sourcename),
                Expanded(
                  child: BlocBuilder<NewsCubit, NewsState>(
                    builder: (context, state) {
                      //BlocProvider.of<NewsCubit>(context).getarticledata();
                      if (state is NewsInitial) {
                        BlocProvider.of<NewsCubit>(context)
                            .getarticledata(sourcename);
                        setupscrollcontroller(context);
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      List<Article> articledata = [];
                      bool isloading = false;
                      if (state is ArticleLoading && state.isfirstfetch) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state is ArticleLoading) {
                        articledata = state.oldarticledatas;
                        isloading=true;
                        // return const Center(
                        //   child: CircularProgressIndicator(),
                        // );
                      } else if (state is ArticleResponsesuccess) {
                        articledata = state.articledatas;
                      } else if (state is Connectionstatusfailure) {
                        final errormsg2 = state.errormsg;
                        return Center(child: Text(errormsg2));
                      }
                      return articlelist(
                          context, articledata, _scrollController, isloading);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
