// ignore_for_file: avoid_catches_without_on_clauses, no_default_cases

import 'dart:io';

import 'package:dio/dio.dart';

import '../../model/failures.dart';
import '../services/log.dart';

// ignore_for_file: avoid-throw-in-catch-block

/// Parse Dio Response into Map<String,dynamic> to keep
/// Dio objects only in External layer
extension DioResponseHandler on Future<Response<dynamic>> {
  Future<Map<String, dynamic>> handleResponse() async {
    try {
      final response = await this;
      final data = response.data as Map<String, dynamic>?;
      if (data == null) throw EmptyDataFailure();

      return data;
    } on DioException catch (error, stackTrace) {
      // Logging to improve debugging API errors
      final method = error.requestOptions.method.toUpperCase();
      final responseData = error.response?.data;
      final code = responseData?['code'];
      final data = responseData?['data'];
      final message = responseData?['status_message'];

      final errorData = {
        'code': code,
        'data': data,
        'message': message,
      };

      final fullPath = error.requestOptions.uri.toString().split('/api/');
      final path = fullPath.isEmpty ? '' : fullPath.first;
      Log().warning(
        '$method | $path | $errorData',
        name: 'API',
      );

      if (error.response?.statusCode == 401) {
        throw UnauthorizedFailure(
          error.requestOptions.headers[HttpHeaders.authorizationHeader],
        );
      }

      if (error.message?.contains('Failed host lookup') ?? false) {
        throw NoConnectionFailure();
      }
      switch (error.type) {
        case DioExceptionType.connectionError:
          throw NoConnectionFailure();
        case DioExceptionType.badResponse:
          throw ClientFailure(errorData);

        default:
          Error.throwWithStackTrace(
            ClientFailure(error.message),
            stackTrace,
          );
      }
    } catch (e) {
      Log().error(e.toString(), name: 'API');
      rethrow;
    }
  }
}
