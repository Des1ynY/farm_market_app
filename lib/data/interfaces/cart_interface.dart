import 'package:farm_market_app/shared/models/item_in_order_model.dart';

abstract class ICart {
  Future<List<ItemInOrderModel>> getCart();

  Future<void> addNewItem(ItemInOrderModel item);

  Future<void> increaseItemCount(ItemInOrderModel item);

  Future<void> decreaseItemCount(ItemInOrderModel item);

  Future<void> deleteItem(ItemInOrderModel item);

  Future<void> clearCart();
}
