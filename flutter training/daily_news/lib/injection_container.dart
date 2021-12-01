import 'package:daily_news/core/network/network_info.dart';
import 'package:daily_news/features/headline_news/data/data_sources/headline_news_data_source.dart';
import 'package:daily_news/features/headline_news/data/data_sources/headline_news_data_source_impl.dart';
import 'package:daily_news/features/headline_news/data/repositories/headline_news_repository_impl.dart';
import 'package:daily_news/features/headline_news/domain/repositories/headline_news_repository.dart';
import 'package:daily_news/features/headline_news/domain/use_cases/get_headline_news_usecase.dart';
import 'package:daily_news/features/headline_news/presentation/cubit/news_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  //cubit
  sl.registerFactory<HeadLineNewsCubit>(
      () => HeadLineNewsCubit(getHeadLineNewsUseCase: sl.call()));

  //usecase
  sl.registerLazySingleton<GetHeadLineNewsUseCase>(
      () => GetHeadLineNewsUseCase(headLineNewsRepository: sl.call()));

  //repository
  sl.registerLazySingleton<HeadLineNewsRepository>(
      () => HeadLineNewsRepositoryImpl(headLineNewsDataSource: sl.call()));

  //datasource
  sl.registerLazySingleton<HeadLineNewsDataSource>(
      () => HeadLineNewsDataSourceImpl(client: sl.call()));
  sl.registerLazySingleton(() => http.Client());

  //core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl.call()));
}
