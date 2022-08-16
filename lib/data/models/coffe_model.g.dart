// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoffeClass _$$_CoffeClassFromJson(Map<String, dynamic> json) =>
    _$_CoffeClass(
      name: json['name'] as String,
      description: json['description'] as String,
      intensity: json['intensity'] as String,
      temp: json['temp'] as String,
      steps: (json['steps'] as List<dynamic>).map((e) => e as String).toList(),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_CoffeClassToJson(_$_CoffeClass instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'intensity': instance.intensity,
      'temp': instance.temp,
      'steps': instance.steps,
      'ingredients': instance.ingredients,
    };
