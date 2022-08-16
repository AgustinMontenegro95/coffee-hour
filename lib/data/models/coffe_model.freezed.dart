// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coffe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoffeClass _$CoffeClassFromJson(Map<String, dynamic> json) {
  return _CoffeClass.fromJson(json);
}

/// @nodoc
mixin _$CoffeClass {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get intensity => throw _privateConstructorUsedError;
  String get temp => throw _privateConstructorUsedError;
  List<String> get steps => throw _privateConstructorUsedError;
  List<String> get ingredients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoffeClassCopyWith<CoffeClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeClassCopyWith<$Res> {
  factory $CoffeClassCopyWith(
          CoffeClass value, $Res Function(CoffeClass) then) =
      _$CoffeClassCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String description,
      String intensity,
      String temp,
      List<String> steps,
      List<String> ingredients});
}

/// @nodoc
class _$CoffeClassCopyWithImpl<$Res> implements $CoffeClassCopyWith<$Res> {
  _$CoffeClassCopyWithImpl(this._value, this._then);

  final CoffeClass _value;
  // ignore: unused_field
  final $Res Function(CoffeClass) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? intensity = freezed,
    Object? temp = freezed,
    Object? steps = freezed,
    Object? ingredients = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      intensity: intensity == freezed
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as String,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as String,
      steps: steps == freezed
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_CoffeClassCopyWith<$Res>
    implements $CoffeClassCopyWith<$Res> {
  factory _$$_CoffeClassCopyWith(
          _$_CoffeClass value, $Res Function(_$_CoffeClass) then) =
      __$$_CoffeClassCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String description,
      String intensity,
      String temp,
      List<String> steps,
      List<String> ingredients});
}

/// @nodoc
class __$$_CoffeClassCopyWithImpl<$Res> extends _$CoffeClassCopyWithImpl<$Res>
    implements _$$_CoffeClassCopyWith<$Res> {
  __$$_CoffeClassCopyWithImpl(
      _$_CoffeClass _value, $Res Function(_$_CoffeClass) _then)
      : super(_value, (v) => _then(v as _$_CoffeClass));

  @override
  _$_CoffeClass get _value => super._value as _$_CoffeClass;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? intensity = freezed,
    Object? temp = freezed,
    Object? steps = freezed,
    Object? ingredients = freezed,
  }) {
    return _then(_$_CoffeClass(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      intensity: intensity == freezed
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as String,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as String,
      steps: steps == freezed
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ingredients: ingredients == freezed
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoffeClass implements _CoffeClass {
  const _$_CoffeClass(
      {required this.name,
      required this.description,
      required this.intensity,
      required this.temp,
      required final List<String> steps,
      required final List<String> ingredients})
      : _steps = steps,
        _ingredients = ingredients;

  factory _$_CoffeClass.fromJson(Map<String, dynamic> json) =>
      _$$_CoffeClassFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String intensity;
  @override
  final String temp;
  final List<String> _steps;
  @override
  List<String> get steps {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  final List<String> _ingredients;
  @override
  List<String> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'CoffeClass(name: $name, description: $description, intensity: $intensity, temp: $temp, steps: $steps, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoffeClass &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.intensity, intensity) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(intensity),
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(_steps),
      const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  _$$_CoffeClassCopyWith<_$_CoffeClass> get copyWith =>
      __$$_CoffeClassCopyWithImpl<_$_CoffeClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoffeClassToJson(
      this,
    );
  }
}

abstract class _CoffeClass implements CoffeClass {
  const factory _CoffeClass(
      {required final String name,
      required final String description,
      required final String intensity,
      required final String temp,
      required final List<String> steps,
      required final List<String> ingredients}) = _$_CoffeClass;

  factory _CoffeClass.fromJson(Map<String, dynamic> json) =
      _$_CoffeClass.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get intensity;
  @override
  String get temp;
  @override
  List<String> get steps;
  @override
  List<String> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_CoffeClassCopyWith<_$_CoffeClass> get copyWith =>
      throw _privateConstructorUsedError;
}
