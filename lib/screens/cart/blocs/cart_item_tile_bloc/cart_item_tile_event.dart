part of 'cart_item_tile_bloc.dart';

@freezed
class CartItemTileEvent with _$CartItemTileEvent {
  const factory CartItemTileEvent.loadItems({
    required List<ItemInOrderModel> items,
  }) = _LoadItems;
}
