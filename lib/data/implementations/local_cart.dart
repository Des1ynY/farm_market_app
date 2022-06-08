import 'dart:convert';

import 'package:farm_market_app/data/interfaces/cart_interface.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalCart extends ICart {
  LocalCart({required this.prefs}) {
    cart = initCart();
  }

  final SharedPreferences prefs;
  List<ItemInOrderModel> cart = [];

  static const _cartKey = 'cart';

  List<ItemInOrderModel> initCart() {
    final List<ItemInOrderModel> items = [];
    final jsons = prefs.getStringList(_cartKey) ?? [];
    for (var json in jsons) {
      final item = ItemInOrderModel.fromJson(jsonDecode(json));
      items.add(item);
    }
    return items;
  }

  @override
  Future<List<ItemInOrderModel>> getCart() async => cart;

  @override
  Future<void> addNewItem(ItemInOrderModel item) async {
    // TODO: implement clearCart
    throw UnimplementedError();
  }

  @override
  Future<void> clearCart() {
    // TODO: implement clearCart
    throw UnimplementedError();
  }

  @override
  Future<void> decreaseItemCount(ItemInOrderModel item) {
    // TODO: implement decreaseItemCount
    throw UnimplementedError();
  }

  @override
  Future<void> deleteItem(ItemInOrderModel item) {
    // TODO: implement deleteItem
    throw UnimplementedError();
  }

  @override
  Future<void> increaseItemCount(ItemInOrderModel item) {
    // TODO: implement increaseItemCount
    throw UnimplementedError();
  }
}
