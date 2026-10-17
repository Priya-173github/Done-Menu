import 'package:hive/hive.dart';

part 'meal_plan.g.dart';

@HiveType(typeId: 3)
class MealPlanEntry extends HiveObject {
  @HiveField(0)
  final String dayOfWeek; // e.g., "Mon", "Tue"

  @HiveField(1)
  final String mealType; // "Lunch", "Dinner"

  @HiveField(2)
  final String recipeId;

  @HiveField(3)
  final String recipeTitle;

  MealPlanEntry({
    required this.dayOfWeek,
    required this.mealType,
    required this.recipeId,
    required this.recipeTitle,
  });
}
