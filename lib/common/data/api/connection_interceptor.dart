import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../services/connection_service.dart';

@lazySingleton
class ConnectionInterceptor extends InterceptorsWrapper {
  ConnectionInterceptor(this._connectionService);

  final ConnectionService _connectionService;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (_connectionService.isDisconnected) {
      return handler.reject(
        DioException(
          requestOptions: options,
          type: DioExceptionType.connectionError,
          error: 'No connection',
        ),
      );
    }
    handler.next(options);
  }
}
