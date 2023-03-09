import 'package:flutter/material.dart';
import 'package:foodiez/models/ingredient.dart';
import '../models/ingredient.dart';

class IngrediantProvider extends ChangeNotifier {
  List<Ingredient> _ingrediants = [];

  List<Ingredient> get ingrediants {
    return [..._ingrediants];
  }

  void addIngrediant(Ingredient ingrediant) {
    _ingrediants.add(ingrediant);
    notifyListeners();
  }
}
