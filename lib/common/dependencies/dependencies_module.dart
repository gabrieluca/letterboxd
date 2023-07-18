import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:letterboxd/common/data/api/endpoints.dart';

@module
abstract class DependenciesModule {
  @injectable
  Dio dio() => Dio(
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
          //TODO Add interceptors
          // tokenInterceptor,
          // loggingInterceptor,
          // authorizationInterceptor,
        ]);
}
