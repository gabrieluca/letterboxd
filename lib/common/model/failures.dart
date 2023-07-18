class Failure implements Exception {
  const Failure([this.message]);

  final dynamic message;

  @override
  String toString() => '$runtimeType: $message';
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure([super.exception]);
}

class EmptyDataFailure extends Failure {}

class NoConnectionFailure extends Failure {}

class UnexpectedFailure extends Failure {
  const UnexpectedFailure([super.exception]);
}

class ClientFailure extends Failure {
  const ClientFailure([super.exception]);
}

class MapperException extends FormatException {
  @override
  // ignore: overridden_fields
  final String message;

  MapperException(dynamic data, [String? fieldName])
      : message = fieldName != null
            ? 'Invalid JSON: required "$fieldName" field in $data'
            : 'Invalid JSON: $data';
}
