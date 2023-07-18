// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../modules/home/bloc/popular_movies_bloc.dart' as _i8;
import '../../modules/home/data/home_repository.dart' as _i7;
import '../data/services/connection_service.dart' as _i3;
import '../data/services/http_service.dart' as _i6;
import 'dependencies_module.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dependenciesModule = _$DependenciesModule();
    gh.singleton<_i3.ConnectionService>(
        _i3.ConnectionServiceImpl(gh<_i4.Connectivity>()));
    gh.factory<_i5.Dio>(() => dependenciesModule.dio());
    gh.lazySingleton<_i6.HttpService>(() => _i6.HttpServiceImpl(gh<_i5.Dio>()));
    gh.factory<_i7.HomeRepository>(
        () => _i7.HomeRepositoryImpl(gh<_i6.HttpService>()));
    gh.factory<_i8.PopularMoviesBloc>(
        () => _i8.PopularMoviesBloc(gh<_i7.HomeRepository>()));
    return this;
  }
}

class _$DependenciesModule extends _i9.DependenciesModule {}
