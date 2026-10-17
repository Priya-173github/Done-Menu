// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_plan.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MealPlanEntryAdapter extends TypeAdapter<MealPlanEntry> {
  @override
  final int typeId = 3;

  @override
  MealPlanEntry read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MealPlanEntry(
      dayOfWeek: fields[0] as String,
      mealType: fields[1] as String,
      recipeId: fields[2] as String,
      recipeTitle: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MealPlanEntry obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.dayOfWeek)
      ..writeByte(1)
      ..write(obj.mealType)
      ..writeByte(2)
      ..write(obj.recipeId)
      ..writeByte(3)
      ..write(obj.recipeTitle);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealPlanEntryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
