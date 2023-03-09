import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodiez/models/category.dart';
import 'package:foodiez/providers/category_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AddCategory extends StatelessWidget {
  AddCategory({Key? key}) : super(key: key);
  final titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a category"),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                hintText: 'Category title',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.pop();
                context.read<CategoryProvider>().createCategory(
                    Category(user: null, title: titleController.text));
              },
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
