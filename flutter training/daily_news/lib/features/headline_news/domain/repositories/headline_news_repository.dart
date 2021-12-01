import 'package:daily_news/core/error/failue.dart';
import 'package:daily_news/features/headline_news/domain/entities/headline_news_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HeadLineNewsRepository {
  Future<Either<Failure, HeadlineNewsEntity>?>? getHeadLineNews();
}
