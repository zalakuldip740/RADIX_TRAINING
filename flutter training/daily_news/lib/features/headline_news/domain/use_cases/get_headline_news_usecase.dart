import 'package:daily_news/core/error/failue.dart';
import 'package:daily_news/features/headline_news/domain/entities/headline_news_entity.dart';
import 'package:daily_news/features/headline_news/domain/repositories/headline_news_repository.dart';
import 'package:dartz/dartz.dart';

class GetHeadLineNewsUseCase {
  final HeadLineNewsRepository headLineNewsRepository;

  GetHeadLineNewsUseCase({required this.headLineNewsRepository});

  Future<Either<Failure, HeadlineNewsEntity>?>? call() async {
    return await headLineNewsRepository.getHeadLineNews();
  }
}
