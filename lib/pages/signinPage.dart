import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../models/user.dart';
import '../providers/auth_provide.dart';

class signinPage extends StatelessWidget {
  signinPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in"),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          const Text("Sign In"),
          TextField(
            decoration: const InputDecoration(hintText: 'Username'),
            controller: usernameController,
          ),
          TextField(
            decoration: const InputDecoration(hintText: 'Password'),
            controller: passwordController,
            obscureText: true,
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<AuthProvider>(context, listen: false).signin(
                  user: User(
                      username: usernameController.text,
                      password: passwordController.text));

              context.go("/home");
            },
            child: const Text("Sign In"),
          ),
        ]),
      ),
    );
  }
}
