import 'package:daily_news/features/headline_news/presentation/cubit/news_cubit.dart';
import 'package:daily_news/features/headline_news/presentation/pages/news_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HeadLineNewsCubit>(
            create: (context) => di.sl<HeadLineNewsCubit>()..getnews()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Daily News',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const NewsHomePage(),
      ),
    );
  }
}
