import 'package:json_annotation/json_annotation.dart';
import 'package:foodiez/models/user.dart';
part 'reciepe.g.dart';

@JsonSerializable()
class Reciepe {
  String title;
  String image;
  String description;
  String steps;
  User user;

  Reciepe({
    required this.title,
    required this.image,
    required this.description,
    required this.steps,
    required this.user,
  });
  factory Reciepe.fromJson(Map<String, dynamic> json) =>
      _$ReciepeFromJson(json);
  Map<String, dynamic> toJson() => _$ReciepeToJson(this);
}
