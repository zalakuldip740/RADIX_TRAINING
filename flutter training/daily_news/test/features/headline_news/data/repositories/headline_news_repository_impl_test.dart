import 'package:daily_news/features/headline_news/data/data_sources/headline_news_data_source.dart';
import 'package:daily_news/features/headline_news/data/repositories/headline_news_repository_impl.dart';
import 'package:daily_news/features/headline_news/domain/entities/headline_news_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockHeadlineNewsDataSource extends Mock
    implements HeadLineNewsDataSource {}

void main() {
  late MockHeadlineNewsDataSource mockHeadlineNewsDataSource;
  late HeadLineNewsRepositoryImpl headLineNewsRepositoryImpl;
  setUp(() {
    mockHeadlineNewsDataSource = MockHeadlineNewsDataSource();
    headLineNewsRepositoryImpl = HeadLineNewsRepositoryImpl(
        headLineNewsDataSource: mockHeadlineNewsDataSource);
  });
  final headlinenewsdata =
      HeadlineNewsEntity(status: "", totalResults: 5, articles: []);

  test("get headline news data repo test", () async {
    when(mockHeadlineNewsDataSource.getHeadLineNews())
        .thenAnswer((_) async => headlinenewsdata);
    final result = await headLineNewsRepositoryImpl.getHeadLineNews();
    //final result = await mockHeadlineNewsDataSource.getHeadLineNews();
    expect(result, Right(headlinenewsdata));
  });
}
