part of 'cart_item_tile_bloc.dart';

@freezed
class CartItemTileEvent with _$CartItemTileEvent {
  const factory CartItemTileEvent.started({required String itemId}) = _Started;
}
