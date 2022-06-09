part of 'add_to_cart_bloc.dart';

@freezed
class AddToCartEvent with _$AddToCartEvent {
  const factory AddToCartEvent.addToCart(ItemInOrderModel item) = _AddToCart;

  const factory AddToCartEvent.increaseCount(ItemInOrderModel item) =
      _IncreaseCount;

  const factory AddToCartEvent.decreaseCount(ItemInOrderModel item) =
      _DecreaseCount;

  const factory AddToCartEvent.deleteItem(ItemInOrderModel item) = _DeleteItem;
}
