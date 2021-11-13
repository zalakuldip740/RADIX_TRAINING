import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrofitdemo/Cubit/picsy_cubit.dart';
import 'package:retrofitdemo/Data/repository.dart';
import 'package:retrofitdemo/Presentation/picsylist.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  late Repository repository;
  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<PicsyCubit>(context).getoutput();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => PicsyCubit(repository: repository),
        child: PicsyList(),
      ),
    );
  }
}
