import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../api/dio_response_handler.dart';

abstract class HttpService {
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? data,
  });

  Future<Map<String, dynamic>> put(
    String path, {
    Map<String, dynamic>? data,
  });

  Future<Map<String, dynamic>> delete(
    String path, {
    Map<String, dynamic>? data,
  });
}

@LazySingleton(as: HttpService)
class HttpServiceImpl implements HttpService {
  HttpServiceImpl(this._dio);

  final Dio _dio;

  @override
  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return _dio
        .get(
          path,
          queryParameters: queryParameters,
        )
        .handleResponse();
  }

  @override
  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? data,
  }) {
    return _dio
        .post(
          path,
          data: data,
        )
        .handleResponse();
  }

  @override
  Future<Map<String, dynamic>> put(
    String path, {
    Map<String, dynamic>? data,
  }) {
    return _dio
        .put(
          path,
          data: data,
        )
        .handleResponse();
  }

  @override
  Future<Map<String, dynamic>> delete(
    String path, {
    Map<String, dynamic>? data,
  }) {
    return _dio
        .delete(
          path,
          data: data,
        )
        .handleResponse();
  }
}
