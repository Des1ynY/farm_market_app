import 'dart:convert';

import 'package:farm_market_app/data/interfaces/cart_interface.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalCart extends ICart {
  LocalCart({required this.prefs});

  final SharedPreferences prefs;

  @override
  Future<Map<String, ItemInOrderModel>> getCart() async {
    final Map<String, ItemInOrderModel> items = {};
    Set<String> cartKeys = prefs.getKeys();

    for (var key in cartKeys) {
      final json = prefs.getString(key)!;
      items[key] = ItemInOrderModel.fromJson(jsonDecode(json));
    }
    return items;
  }

  @override
  Future<void> addNewItem(ItemInOrderModel item) async {
    final key = item.toMapKey();
    if (prefs.containsKey(key)) throw Exception('Item already in a cart');
    await prefs.setString(key, jsonEncode(item.increaseCount().toJson()));
  }

  @override
  Future<void> increaseItemCount(String itemId) async {
    if (!prefs.containsKey(itemId)) throw Exception('Item not in a cart');
    final json = prefs.getString(itemId)!;
    final item = ItemInOrderModel.fromJson(jsonDecode(json));
    await prefs.setString(itemId, jsonEncode(item.increaseCount().toJson()));
  }

  @override
  Future<void> decreaseItemCount(String itemId) async {
    if (!prefs.containsKey(itemId)) throw Exception('Item not in a cart');
    final json = prefs.getString(itemId)!;
    final item = ItemInOrderModel.fromJson(jsonDecode(json));
    if (item.count == 1) {
      deleteItem(itemId);
    } else {
      await prefs.setString(itemId, jsonEncode(item.decreaseCount().toJson()));
    }
  }

  @override
  Future<void> deleteItem(String itemId) async {
    if (!prefs.containsKey(itemId)) throw Exception('Item not in a cart');
    await prefs.remove(itemId);
  }

  @override
  Future<void> clearCart() async => prefs.clear();
}
