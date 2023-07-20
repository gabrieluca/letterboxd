part of 'details_bloc.dart';

@freezed
class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.movieFetched(
    ShortMovie movie,
  ) = _MovieFetched;
  const factory DetailsEvent.refreshed(
    ShortMovie movie,
  ) = _Refreshed;
}
