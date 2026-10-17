import 'package:hive/hive.dart';

part 'pantry_item.g.dart';

@HiveType(typeId: 1)
class PantryItem extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final double quantity;

  @HiveField(3)
  final String unit;

  @HiveField(4)
  final String category;

  @HiveField(5)
  final DateTime expiryDate;

  @HiveField(6)
  final bool isBought;

  PantryItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.unit,
    required this.category,
    required this.expiryDate,
    this.isBought = true,
  });

  PantryItem copyWith({
    String? name,
    double? quantity,
    String? unit,
    String? category,
    DateTime? expiryDate,
    bool? isBought,
  }) {
    return PantryItem(
      id: id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
      category: category ?? this.category,
      expiryDate: expiryDate ?? this.expiryDate,
      isBought: isBought ?? this.isBought,
    );
  }
}
