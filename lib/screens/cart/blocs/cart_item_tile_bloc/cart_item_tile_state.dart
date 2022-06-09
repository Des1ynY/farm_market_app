part of 'cart_item_tile_bloc.dart';

@freezed
class CartItemTileState with _$CartItemTileState {
  const factory CartItemTileState.initial() = _Initial;

  const factory CartItemTileState.loading() = _Loading;

  const factory CartItemTileState.loaded(
      ItemModel item, CategoryModel? itemCategory) = _Loaded;

  const factory CartItemTileState.error() = _Error;
}
