part of 'news_cubit.dart';

abstract class HeadLineNewsState extends Equatable {
  const HeadLineNewsState();
}

class NewsInitial extends HeadLineNewsState {
  @override
  List<Object> get props => [];
}

// class NewsLoading extends HeadLineNewsState {
//   @override
//   List<Object> get props => [];
// }

class NewsError extends HeadLineNewsState {
  final msg;
  const NewsError({required this.msg});
  @override
  List<Object> get props => [msg];
}

// class NoInternet extends HeadLineNewsState {
//   @override
//   List<Object> get props => [];
// }

class NewsLoaded extends HeadLineNewsState {
  final HeadlineNewsEntity headlinenews;
  const NewsLoaded({required this.headlinenews});
  @override
  List<Object> get props => [headlinenews];
}
