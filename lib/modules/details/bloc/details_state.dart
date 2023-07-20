part of 'details_bloc.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.loading() = _Loading;
  const factory DetailsState.success(
    Movie movie,
  ) = _Success;
  const factory DetailsState.error({@Default(false) bool isOffline}) = _Error;
}
