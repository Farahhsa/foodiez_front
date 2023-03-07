import 'package:json_annotation/json_annotation.dart';
import 'package:foodiez/models/user.dart';
part 'category.g.dart';

@JsonSerializable()
class Category {
  String user;
  String user_ingredient;

  Category({
    required this.user,
    required this.user_ingredient,
  });
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
