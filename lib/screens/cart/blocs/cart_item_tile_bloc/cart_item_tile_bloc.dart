import 'package:bloc/bloc.dart';
import 'package:farm_market_app/data/interfaces/database_interface.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item_tile_event.dart';
part 'cart_item_tile_state.dart';
part 'cart_item_tile_bloc.freezed.dart';

class CartItemTileBloc extends Bloc<CartItemTileEvent, CartItemTileState> {
  CartItemTileBloc({required this.database}) : super(const _Initial()) {
    on<_LoadItems>(_loadItems);
  }

  final IDatabase database;

  void _loadItems(_LoadItems event, Emitter<CartItemTileState> emit) async {
    emit(const CartItemTileState.loading());
    try {
      final Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data =
          {};
      for (var item in event.items) {
        final itemData =
            await database.getItemByIdWithCategory(itemId: item.itemId);
        data[item] = itemData;
      }
      emit(CartItemTileState.loaded(data));
    } on Object catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(const CartItemTileState.error());
    }
  }
}
