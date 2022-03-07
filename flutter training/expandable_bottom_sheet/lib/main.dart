import 'package:expandable_bottom_sheet/features/expandable_bottom_sheet/presentation/cubit/bottom_sheet_cubit.dart';
import 'package:expandable_bottom_sheet/features/expandable_bottom_sheet/presentation/pages/home_page.dart';
import 'package:expandable_bottom_sheet/injection_container.dart' as di;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomSheetCubit>(
            create: (context) => di.sl<BottomSheetCubit>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'expandable bottom sheet',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
