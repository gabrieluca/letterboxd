import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/user_repository.dart';
import '../../model/failures.dart';
import '../../model/user.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc(this._userRepository) : super(const _Initial()) {
    on<_Started>((event, emit) async {
      emit(const HomePageState.loading());
      try {
        final result = await _userRepository.getUsersList();
        emit(HomePageState.success(result));
      } on UnexpectedFailure {
        emit(const HomePageState.error());
      }
    });
    on<_AddUser>((event, emit) async {
      emit(const HomePageState.loading());
      try {
        final result = await _userRepository.addUser(
          user: event.user,
        );
        emit(HomePageState.success(result));
      } on UnexpectedFailure {
        emit(const HomePageState.error());
      }
    });
  }

  final UserRepository _userRepository;

  // Future<void> _getUsersList(Emitter<HomePageState> emit) async {}
}
