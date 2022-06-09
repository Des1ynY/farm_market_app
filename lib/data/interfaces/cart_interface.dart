import 'package:farm_market_app/shared/models/item_in_order_model.dart';

abstract class ICart {
  Future<Map<String, ItemInOrderModel>> getCart();

  Future<void> addNewItem(ItemInOrderModel item);

  Future<void> increaseItemCount(String itemId);

  Future<void> decreaseItemCount(String itemId);

  Future<void> deleteItem(String itemId);

  Future<void> clearCart();
}
