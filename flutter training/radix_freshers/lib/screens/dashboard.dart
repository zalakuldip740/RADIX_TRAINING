import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radix_freshers/Cubit/news_cubit.dart';
import 'package:radix_freshers/Services/ApiService/api_client.dart';
import 'package:radix_freshers/Services/ApiService/repository.dart';
import 'package:radix_freshers/screens/ScreenComponent/dashboardcomponent/dashboard_custom_appbar.dart';
import 'package:radix_freshers/screens/ScreenComponent/dashboardcomponent/sources_list.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final apiservice = ApiService(Dio());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => NewsCubit(Repository(apiservice)),
        child: SafeArea(
          child: Scaffold(
            //backgroundColor: Colors.white,
            body: Column(
              children: [
                dashboardAppbar(context),
                Expanded(
                  child: BlocBuilder<NewsCubit, NewsState>(
                    builder: (context, state) {
                      //BlocProvider.of<NewsCubit>(context).getsourcesdata();
                      if (state is NewsInitial) {
                        BlocProvider.of<NewsCubit>(context).getsourcesdata();
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state is SourcesResponsesuccess) {
                        final sourcesdata = state.sourcesdatas;
                        return sourceslist(context, sourcesdata);
                      } else if (state is NewsError) {
                        final errorsmg = state.errormsg;
                        return Center(
                          child: Text(errorsmg),
                        );
                      } else if (state is Connectionstatusfailure) {
                        final errormsg2 = state.errormsg;
                        return Center(child: Text(errormsg2));
                      } else {
                        return const Text("error");
                      }
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
