import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

/// A wrapper around [developer.log] that add color and log level to the message.
class Log {
  Log();

  void verbose(
    String message, {
    String name = '',
    StackTrace? stackTrace,
    dynamic exception,
  }) {
    if (kDebugMode) {
      return developer.log(
        _formatMessage(Level.verbose, message),
        name: name,
        error: exception,
        stackTrace: stackTrace,
      );
    }
  }

  /// Regular events
  void debug(
    String message, {
    String name = 'DEBUG',
    StackTrace? stackTrace,
    dynamic exception,
  }) {
    if (kDebugMode) {
      return developer.log(
        _formatMessage(Level.debug, message),
        name: name,
        error: exception,
        stackTrace: stackTrace,
      );
    }
  }

  /// Important events such as API request, database query, etc.
  void info(
    String message, {
    String name = 'INFO',
    StackTrace? stackTrace,
    dynamic exception,
  }) {
    if (kDebugMode) {
      return developer.log(
        _formatMessage(Level.info, message),
        name: name,
        error: exception,
        stackTrace: stackTrace,
      );
    }
  }

  /// Expected event that probably doesn't break the app, but might, such as an API validation error.
  void warning(
    String message, {
    String name = 'WARNING',
    StackTrace? stackTrace,
    dynamic exception,
  }) {
    if (kDebugMode) {
      return developer.log(
        _formatMessage(Level.warning, message),
        name: name,
        error: exception,
        stackTrace: stackTrace,
      );
    }
  }

  /// Unexpected event that might break the app, such as an API error not mapped,
  /// a type error, a required field that comes null from the API, etc
  void error(
    String message, {
    String name = 'ERROR',
    StackTrace? stackTrace,
    dynamic exception,
  }) {
    if (kDebugMode) {
      return developer.log(
        _formatMessage(Level.error, message),
        name: name,
        error: exception,
        stackTrace: stackTrace,
      );
    }
  }

  String _formatMessage(
    Level level,
    String message,
  ) {
    final emoji = _levelEmojis[level];
    final color = _levelColors[level];
    return '$color$emoji$message$_reset';
  }
}

/// [Level]s to control logging output
enum Level {
  verbose,
  debug,
  info,
  warning,
  error,
}

const _levelEmojis = {
  Level.verbose: '',
  Level.debug: '',
  Level.info: '💡 ',
  Level.warning: '🟨 ',
  Level.error: '⛔ ',
};

const _levelColors = {
  Level.verbose: _white,
  Level.info: _green,
  Level.debug: _blue,
  Level.warning: _yellow,
  Level.error: _red,
};

/// ANSI escape codes for colors
const _reset = '\x1B[0m';
const _white = '\x1B[37m';
const _red = '\x1B[31m';
const _green = '\x1B[32m';
const _yellow = '\x1B[33m';
const _blue = '\x1B[34m';
