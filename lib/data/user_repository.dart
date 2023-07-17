import 'package:dio/dio.dart';
import 'package:letterboxd/model/failures.dart';

import '../model/user.dart';

const endpoint = 'https://jserver-api.herokuapp.com/users';

abstract class UserRepository {
  Future<List<User>> getUsersList();
  Future<List<User>> addUser({
    required User user,
  });
}

class UserRepositoryImpl implements UserRepository {
  @override
  Future<List<User>> getUsersList() async {
    try {
      final response = await Dio(
        BaseOptions(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      ).get(endpoint);

      final data = response.data as List;

      return data.map((e) => User.fromMap(e)).toList();
    } catch (e) {
      throw UnexpectedFailure();
    }
  }

  @override
  Future<List<User>> addUser({
    required User user,
  }) async {
    try {
      const endpoint = 'https://jserver-api.herokuapp.com/users';

      await Dio(
        BaseOptions(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      ).post(
        endpoint,
        data: {
          'firstName': user.firstName,
          'lastName': user.lastName,
          'email': user.email,
        },
      );

      return getUsersList();
    } catch (e) {
      throw UnexpectedFailure();
    }
  }
}
