import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodiez/models/user.dart';
import 'package:foodiez/providers/auth_provide.dart';
import 'package:provider/provider.dart';

final usernameController = TextEditingController();
final passwordController = TextEditingController();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign up"),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text("Sign Up"),
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
                context.read<AuthProvider>().signup(
                      user: User(
                          username: usernameController.text,
                          password: passwordController.text),
                    );
              },
              child: const Text("Sign Up"),
            )
          ],
        ),
      ),
    );
  }
}
