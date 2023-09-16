import 'package:dio/dio.dart';
import 'package:flutter_riverpod_example/async_notifier_provider/user_model.dart';

class ApiRepository {
  final dio = Dio();
  Future<List<UserModel>> getUsers() async {
    try {
      final response = await dio
          .get('https://reqres.in/api/users', queryParameters: {'page': 2});

      if (response.statusCode == 200) {
        // Berhasil mendapatkan data
        print('Response Data: ${response.data}');
        final List<dynamic> data = response.data['data'];
        final List<UserModel> users =
            data.map((userJson) => UserModel.fromJson(userJson)).toList();
        return users;
      } else {
        // Gagal mendapatkan data
        print('Request failed with status: ${response.statusCode}');
        throw Exception("Error");
      }
    } catch (error) {
      // Terjadi kesalahan
      print('Error: $error');
      throw Exception("Error Catch");
    }
  }
}
