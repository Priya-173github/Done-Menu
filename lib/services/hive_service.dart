import 'package:hive_flutter/hive_flutter.dart';

import '../models/ingredient.dart';
import '../models/meal_plan.dart';
import '../models/pantry_item.dart';
import '../models/recipe.dart';

class HiveService {
  static const String pantryBoxName = 'pantry_box';
  static const String recipeBoxName = 'recipe_box';
  static const String mealPlanBoxName = 'meal_plan_box';

  static Future<void> init() async {
    Hive.registerAdapter(IngredientAdapter());
    Hive.registerAdapter(PantryItemAdapter());
    Hive.registerAdapter(RecipeAdapter());
    Hive.registerAdapter(MealPlanEntryAdapter());

    await Hive.openBox<PantryItem>(pantryBoxName);
    await Hive.openBox<Recipe>(recipeBoxName);
    await Hive.openBox<MealPlanEntry>(mealPlanBoxName);
  }

  static Box<PantryItem> get pantryBox => Hive.box<PantryItem>(pantryBoxName);
  static Box<Recipe> get recipeBox => Hive.box<Recipe>(recipeBoxName);
  static Box<MealPlanEntry> get mealPlanBox =>
      Hive.box<MealPlanEntry>(mealPlanBoxName);
}
