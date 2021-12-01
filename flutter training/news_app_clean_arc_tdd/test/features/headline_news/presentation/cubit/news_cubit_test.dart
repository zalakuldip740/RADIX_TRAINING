import 'package:daily_news/core/error/failue.dart';
import 'package:daily_news/features/headline_news/domain/entities/headline_news_entity.dart';
import 'package:daily_news/features/headline_news/domain/use_cases/get_headline_news_usecase.dart';
import 'package:daily_news/features/headline_news/presentation/cubit/news_cubit.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetHeadLineNewsUsecase extends Mock
    implements GetHeadLineNewsUseCase {}

void main() {
  late HeadLineNewsCubit headLineNewsCubit;
  late MockGetHeadLineNewsUsecase mockGetHeadLineNewsUsecase;

  setUp(() {
    mockGetHeadLineNewsUsecase = MockGetHeadLineNewsUsecase();
    headLineNewsCubit =
        HeadLineNewsCubit(getHeadLineNewsUseCase: mockGetHeadLineNewsUsecase);
  });

  test('initial state should be newsinitial', () {
    expect(headLineNewsCubit.state, NewsInitial());
  });

  group('Get headLinenews', () {
    final headlinenewsdata =
        HeadlineNewsEntity(status: "", totalResults: 5, articles: []);
    test('should data get from headlinenewsusecase', () async {
      when(mockGetHeadLineNewsUsecase.call())
          .thenAnswer((realInvocation) async => Right(headlinenewsdata));
      await headLineNewsCubit.getnews();
      verify(mockGetHeadLineNewsUsecase.call());
    });

    test('should emit error when data not found', () async {
      when(mockGetHeadLineNewsUsecase.call())
          .thenAnswer((realInvocation) async => Left(ServerFailure()));
      await headLineNewsCubit.getnews();
      expect(headLineNewsCubit.state, NewsError(msg: any));
    });
    test('should emit success state when data received', () async {
      when(mockGetHeadLineNewsUsecase.call())
          .thenAnswer((realInvocation) async => Right(headlinenewsdata));
      await headLineNewsCubit.getnews();
      expect(
          headLineNewsCubit.state, NewsLoaded(headlinenews: headlinenewsdata));
    });
  });
}
