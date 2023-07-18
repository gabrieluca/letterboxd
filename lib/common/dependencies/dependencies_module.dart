import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:letterboxd/common/data/api/endpoints.dart';

import '../data/api/connection_interceptor.dart';

@module
abstract class DependenciesModule {
  @lazySingleton
  Dio dio(
    ConnectionInterceptor connectionInterceptor,
  ) =>
      Dio(
        BaseOptions(
          baseUrl: Endpoints.baseUrl,
          headers: {
            HttpHeaders.acceptHeader: ContentType.json.value,
            HttpHeaders.contentTypeHeader: ContentType.json.value,
            //TODO Refactor auth token
            HttpHeaders.authorizationHeader:
                'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZmNhYWNjYThjYzIzMWM0YzJkMDc1ZGJhMTZkM2Q2MiIsInN1YiI6IjVmODM4YzJhOTVjMGFmMDAzOTdkZjU3ZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.LPPQ2_7C3rBT4BPC4c3F2SShBkgpyFeS4X20k2oEUO4'
          },
        ),
      )..interceptors.addAll([
          // tokenInterceptor,
          // loggingInterceptor,
          // authorizationInterceptor,
          connectionInterceptor,
        ]);

  @injectable
  Connectivity connectivity() => Connectivity();
}
