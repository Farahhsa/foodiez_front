import 'package:flutter/material.dart';
import 'package:foodiez/services/category_servicse.dart';
import '../models/category.dart';

class CategoryProvider extends ChangeNotifier {
  List<Category> categories = [];

  Future<void> getCategory() async {
    categories = await CategoryServices().getCategory();
  }

  void createCategory(Category category) async {
    await CategoryServices().createCategory(category: category);
  }
}
