import 'package:flutter/material.dart';

import '../models/user.dart';
import '../services/auth_service.dart';

class AuthProvider extends ChangeNotifier {
  String token = "";
  late User user;
  void signin({required User user}) async {
    token = await AuthServices().signin(user: user);
    print(token);
  }

  void signup({required User user}) async {
    token = await AuthServices().signup(user: user);
    print(token);
  }
}
