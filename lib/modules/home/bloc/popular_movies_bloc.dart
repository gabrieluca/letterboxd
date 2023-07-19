// ignore_for_file: library_private_types_in_public_api

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:letterboxd/common/model/failures.dart';
import 'package:letterboxd/modules/home/data/home_repository.dart';

import '../model/popular_movie.dart';
import 'page_params.dart';

part 'popular_movies_event.dart';
part 'popular_movies_state.dart';
part 'popular_movies_bloc.freezed.dart';

@injectable
class PopularMoviesBloc extends Bloc<PopularMoviesEvent, PopularMoviesState> {
  PopularMoviesBloc(this._repository)
      : super(const PopularMoviesState.loading()) {
    on<_FirstFetched>((event, emit) async {
      await _loadAllMovies(emit);
    });
    on<_Refreshed>((event, emit) async {
      await _loadAllMovies(emit);
    });
    on<_NextFetched>((event, emit) async {
      await loadMoreMovies(event, emit);
    });
  }

  Future<void> _loadAllMovies(Emitter<PopularMoviesState> emit) async {
    try {
      final moviesList = await _repository.getPopularMovies();
      emit(PopularMoviesState.success(moviesList));
    } on NoConnectionFailure {
      emit(const PopularMoviesState.error(
        isOffline: true,
      ));
    } on Failure {
      emit(const PopularMoviesState.error());
    }
  }

  Future<void> loadMoreMovies(
    _NextFetched event,
    Emitter<PopularMoviesState> emit,
  ) async {
    try {
      final newMovieList =
          await _repository.getPopularMovies(event.params.itemCount);
      emit(PopularMoviesState.success(event.params.moviesList + newMovieList));
    } on NoConnectionFailure {
      emit(const PopularMoviesState.error(
        isOffline: true,
      ));
    } on Failure {
      emit(const PopularMoviesState.error());
    }
  }

  final HomeRepository _repository;
}

typedef PagedFetchParams<T> = ({
  List<T> moviesList,
  int itemCount,
});
