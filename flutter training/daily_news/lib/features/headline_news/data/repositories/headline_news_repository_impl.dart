import 'package:daily_news/core/error/failue.dart';
import 'package:daily_news/features/headline_news/data/data_sources/headline_news_data_source.dart';
import 'package:daily_news/features/headline_news/domain/entities/headline_news_entity.dart';
import 'package:daily_news/features/headline_news/domain/repositories/headline_news_repository.dart';
import 'package:dartz/dartz.dart';

class HeadLineNewsRepositoryImpl extends HeadLineNewsRepository {
  final HeadLineNewsDataSource headLineNewsDataSource;

  HeadLineNewsRepositoryImpl({required this.headLineNewsDataSource});

  @override
  Future<Either<Failure, HeadlineNewsEntity>?>? getHeadLineNews() async {
    final result = await headLineNewsDataSource.getHeadLineNews();
    return Right(result!);
  }
}
