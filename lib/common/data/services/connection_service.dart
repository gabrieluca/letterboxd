import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:rxdart/rxdart.dart';

import 'log.dart';

abstract class ConnectionService {
  Stream<bool> get connectionStream;
  bool get isConnected;
  bool get isDisconnected;

  void addListener(ConnectionListener listener);
  void removeListener(ConnectionListener listener);
}

@Singleton(as: ConnectionService)
class ConnectionServiceImpl implements ConnectionService {
  ConnectionServiceImpl(
    this._connectivity,
  ) {
    _connectivity.onConnectivityChanged.listen(
      (result) async {
        bool isConnected = true;

        if (result == ConnectivityResult.none ||
            result == ConnectivityResult.bluetooth) {
          /// If there is no connection, check if the device can connect to any URL
          isConnected = await InternetConnectionChecker().hasConnection;
        }

        Log().debug(
          'Connection event: $isConnected',
          name: 'CONNECTION',
        );
        _connectionStreamController.add(isConnected);
      },
    ).onError(
      (e) => Log().error(
        'Connection Error: $e',
        name: 'CONNECTION',
      ),
    );

    _connectionStreamController.stream.listen(
      (isConnected) {
        for (final listener in _listeners) {
          listener(isConnected);
        }
      },
    );
  }

  final Connectivity _connectivity;
  final _connectionStreamController = BehaviorSubject<bool>()..add(false);

  final _listeners = <ConnectionListener>[];

  @override
  Stream<bool> get connectionStream => _connectionStreamController.stream;

  @override
  bool get isConnected => _connectionStreamController.value;

  @override
  bool get isDisconnected => !isConnected;

  @override
  void addListener(ConnectionListener listener) {
    _listeners.add(listener);
  }

  @override
  void removeListener(ConnectionListener listener) {
    _listeners.remove(listener);
  }
}

typedef ConnectionListener = void Function(bool isConnected);
