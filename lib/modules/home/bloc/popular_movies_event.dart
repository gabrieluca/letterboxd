part of 'popular_movies_bloc.dart';

@freezed
class PopularMoviesEvent with _$PopularMoviesEvent {
  const factory PopularMoviesEvent.firstFetched() = _FirstFetched;
  const factory PopularMoviesEvent.nextFetched() = _NextFetched;
  const factory PopularMoviesEvent.refreshed() = _Refreshed;
  const factory PopularMoviesEvent.searched() = _Searched;
}
