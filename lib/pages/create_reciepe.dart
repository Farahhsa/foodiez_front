import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddReciepe extends StatelessWidget {
  AddReciepe({Key? key}) : super(key: key);
  final titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a reciepe"),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                hintText: 'reciepe Steps',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
