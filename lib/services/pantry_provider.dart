import 'package:flutter/foundation.dart';

import '../models/pantry_item.dart';
import 'hive_service.dart';

class PantryProvider extends ChangeNotifier {
  List<PantryItem> get items => HiveService.pantryBox.values.toList();

  Future<void> addOrUpdateItem(PantryItem item) async {
    await HiveService.pantryBox.put(item.id, item);
    notifyListeners();
  }

  Future<void> removeItem(String id) async {
    await HiveService.pantryBox.delete(id);
    notifyListeners();
  }

  Future<void> markBought(String id) async {
    final item = HiveService.pantryBox.get(id);
    if (item != null) {
      final updated = item.copyWith(isBought: true);
      await HiveService.pantryBox.put(id, updated);
      notifyListeners();
    }
  }

  List<PantryItem> getExpiringSoon({int daysThreshold = 3}) {
    final now = DateTime.now();
    return items.where((item) {
      final difference = item.expiryDate.difference(now).inDays;
      return difference >= 0 && difference <= daysThreshold;
    }).toList();
  }
}
