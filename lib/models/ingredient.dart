import 'package:json_annotation/json_annotation.dart';
import 'package:foodiez/models/user.dart';
part 'ingredient.g.dart';

@JsonSerializable()
class Ingredient {
  String user;
  String user_ingredient;

  Ingredient({
    required this.user,
    required this.user_ingredient,
  });
  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$IngredientToJson(this);
}
