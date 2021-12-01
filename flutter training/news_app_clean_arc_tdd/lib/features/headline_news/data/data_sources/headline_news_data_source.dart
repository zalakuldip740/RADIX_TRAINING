import 'package:daily_news/features/headline_news/domain/entities/headline_news_entity.dart';

abstract class HeadLineNewsDataSource {
  Future<HeadlineNewsEntity?>? getHeadLineNews();
}
