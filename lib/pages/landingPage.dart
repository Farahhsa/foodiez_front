import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mama's Kitchen"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.push("/");
                },
                child: Text("Signup"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.push("/signin");
                },
                child: Text("Signin"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
