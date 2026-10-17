import 'package:hive/hive.dart';

import 'ingredient.dart';

part 'recipe.g.dart';

@HiveType(typeId: 2)
class Recipe extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final List<Ingredient> ingredients;

  @HiveField(3)
  final List<String> steps;

  @HiveField(4)
  final int prepTimeMinutes;

  @HiveField(5)
  final int servings;

  @HiveField(6)
  final Map<String, double> nutritionPerServing;

  @HiveField(7)
  final String difficulty;

  Recipe({
    required this.id,
    required this.title,
    required this.ingredients,
    required this.steps,
    required this.prepTimeMinutes,
    required this.servings,
    required this.nutritionPerServing,
    required this.difficulty,
  });
}
