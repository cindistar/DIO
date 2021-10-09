import 'package:dio/dio.dart';
import 'package:new_app/models/model.dart';

class DioApiService {
  String url = 'https://615fa72bf7254d00170681b0.mockapi.io/users';
  Dio? _dio;

  DioApiService() {
    _dio = Dio();
  }

  Future<List<User>> getAllUsers() async {
    try {
      final response = await _dio!.get<List>(url);
      return response.data!.map((e) => User.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
