part of 'popular_movies_bloc.dart';

@freezed
class PopularMoviesState with _$PopularMoviesState {
  const PopularMoviesState._();

  const factory PopularMoviesState.loading() = _Loading;
  const factory PopularMoviesState.success(
    List<PopularMovie> moviesList,
    int page,
  ) = _Success;
  const factory PopularMoviesState.error({@Default(false) bool isOffline}) =
      _Error;

  bool get isOffline => maybeMap(
        error: (state) => state.isOffline,
        orElse: () => false,
      );
}
