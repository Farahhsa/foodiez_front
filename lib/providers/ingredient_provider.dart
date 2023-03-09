import 'package:flutter/material.dart';
import 'package:foodiez/services/ingredient_services.dart';
import '../models/ingredient.dart';

class IngredientProvider extends ChangeNotifier {
  List<Ingredient> ingredients = [];

  Future<void> getIngredient() async {
    ingredients = await IngredientServices().getIngredient();
  }

  void createIngredient(Ingredient ingredient) async {
    await IngredientServices().createIngredient(ingredient: ingredient);
  }
}
