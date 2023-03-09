import 'package:dio/dio.dart';
import 'package:foodiez/services/client.dart';

import '../models/user.dart';

class AuthServices {
  final Dio _dio = Dio();

  final _baseUrl = 'https://127.0.0.1:8000';

  Future<String> signin({required User user}) async {
    String token = "";
    try {
      Response response = await _dio.post('/api/login/', data: user.toJson());
      token = response.data["access"];
    } on DioError catch (error) {
      print(error);
    }
    return token;
  }

  Future<String> signup({required User user}) async {
    String token = "";
    try {
      Response response =
          await _dio.post(_baseUrl + '/api/register/', data: user.toJson());
      token = response.data["access"];
    } on DioError catch (error) {
      print(error);
    }
    return token;
  }
}
