import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../home/data/repository.dart';
import '../../home/model/short_movie.dart';
import '../model/movie.dart';

part 'details_bloc.freezed.dart';
part 'details_event.dart';
part 'details_state.dart';

@injectable
class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc(this._repository) : super(const DetailsState.loading()) {
    on<_MovieFetched>((event, emit) async {
      await _loadMovie(event, emit);
    });
    on<_Refreshed>((event, emit) async {
      await _refreshMovie(event, emit);
    });
  }

  final Repository _repository;

  Future<void> _loadMovie(
    _MovieFetched event,
    Emitter<DetailsState> emit,
  ) async {
    emit(const DetailsState.loading());
    try {
      final movie = await _repository.getMovie(event.movie.id);
      emit(DetailsState.success(movie));
    } on Exception {
      emit(const DetailsState.error());
    }
  }

  Future<void> _refreshMovie(
    _Refreshed event,
    Emitter<DetailsState> emit,
  ) async {
    try {
      final movie = await _repository.getMovie(event.movie.id);
      emit(DetailsState.success(movie));
    } on Exception {
      emit(const DetailsState.error());
    }
  }
}
