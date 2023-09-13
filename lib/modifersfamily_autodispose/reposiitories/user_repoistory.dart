import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod_example/modifersfamily_autodispose/entities/user.dart';

class UserRepository {
  final Dio? _dio;
  final CancelToken? _cancelToken;

  UserRepository({Dio? dio, CancelToken? cancelToken})
      : _dio = dio,
        _cancelToken = cancelToken;

  Future<User?> getUser(int id) async {
    log("Ambli Data User");
    await Future.delayed(Duration(seconds: 2));
    try {
      var response = await (_dio ?? Dio())
          .get('https://reqres.in/api/users/$id', cancelToken: _cancelToken);
      log("Kemablikan Data User");
      return User.fromJson(response.data['data']);
    } catch (e) {
      log("Error: $e");
      return null;
    }
  }
}
