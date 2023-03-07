import 'package:dio/dio.dart';
import 'package:foodiez/services/client.dart';

import '../models/user.dart';

class AuthServices {
  Future<String> signin({required User user}) async {
    String token = "";
    try {
      Response response =
          await Client.dio.post('/api/login/', data: user.toJson());
      token = response.data["token"];
    } on DioError catch (error) {
      print(error);
    }
    return token;
  }

  Future<String> signup({required User user}) async {
    String token = "";
    try {
      Response response =
          await Client.dio.post('/api/register/', data: user.toJson());
      token = response.data["token"];
    } on DioError catch (error) {
      print(error);
    }
    return token;
  }
}
