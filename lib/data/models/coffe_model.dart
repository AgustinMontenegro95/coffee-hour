import 'package:freezed_annotation/freezed_annotation.dart';

part 'coffe_model.freezed.dart';
part 'coffe_model.g.dart';

@freezed
class CoffeClass with _$CoffeClass {
  const factory CoffeClass({
    required String name,
    required String description,
    required String intensity,
    required String temp,
    required List<String> steps,
    required List<String> ingredients,
  }) = _CoffeClass;

  factory CoffeClass.fromJson(Map<String, dynamic> json) =>
      _$CoffeClassFromJson(json);
}
