import 'package:daily_news/features/headline_news/domain/entities/headline_news_entity.dart';
import 'package:daily_news/features/headline_news/domain/repositories/headline_news_repository.dart';
import 'package:daily_news/features/headline_news/domain/use_cases/get_headline_news_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockHeadLineNewsRepository extends Mock
    implements HeadLineNewsRepository {}

void main() {
  late MockHeadLineNewsRepository mockHeadLineNewsRepository;
  late GetHeadLineNewsUseCase getHeadLineNewsUseCase;
  setUp(() {
    mockHeadLineNewsRepository = MockHeadLineNewsRepository();
    getHeadLineNewsUseCase = GetHeadLineNewsUseCase(
        headLineNewsRepository: mockHeadLineNewsRepository);
  });
  final headlinenewsdata =
      HeadlineNewsEntity(status: "", totalResults: 5, articles: []);

  test("get headline news data test", () async {
    when(mockHeadLineNewsRepository.getHeadLineNews())
        .thenAnswer((_) async => Right(headlinenewsdata));
    final result = await getHeadLineNewsUseCase();
    expect(result, Right(headlinenewsdata));
    verify(mockHeadLineNewsRepository.getHeadLineNews());
  });
}
