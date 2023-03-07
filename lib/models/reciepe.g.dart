// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reciepe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reciepe _$ReciepeFromJson(Map<String, dynamic> json) => Reciepe(
      title: json['title'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      steps: json['steps'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReciepeToJson(Reciepe instance) => <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'description': instance.description,
      'steps': instance.steps,
      'user': instance.user,
    };
