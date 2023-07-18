import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:letterboxd/common/model/failures.dart';
import 'package:letterboxd/modules/home/data/home_repository.dart';

import '../model/popular_movie.dart';

part 'popular_movies_event.dart';
part 'popular_movies_state.dart';
part 'popular_movies_bloc.freezed.dart';

@injectable
class PopularMoviesBloc extends Bloc<PopularMoviesEvent, PopularMoviesState> {
  PopularMoviesBloc(this._repository)
      : super(const PopularMoviesState.loading()) {
    on<_FirstFetched>((event, emit) async {
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
    });
  }

  final HomeRepository _repository;

  // Future<void> _getUsersList(Emitter<HomePageState> emit) async {}
}
