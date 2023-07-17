part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = _Initial;
  const factory HomePageState.loading() = _Loading;
  const factory HomePageState.success(
    List<User> usersList,
  ) = _Success;
  const factory HomePageState.error() = _Error;
}
