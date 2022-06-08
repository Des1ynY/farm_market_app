part of 'cart_bloc.dart';

enum DeliveryType {
  delivery,
  pickup,
}

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.refresh() = _Refresh;

  const factory CartEvent.clearCart() = _ClearCart;
}
