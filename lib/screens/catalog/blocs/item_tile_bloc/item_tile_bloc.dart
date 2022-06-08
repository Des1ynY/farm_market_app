import 'package:bloc/bloc.dart';
import 'package:farm_market_app/data/interfaces/database_interface.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_tile_event.dart';
part 'item_tile_state.dart';
part 'item_tile_bloc.freezed.dart';

class ItemTileBloc extends Bloc<ItemTileEvent, ItemTileState> {
  ItemTileBloc({required this.database}) : super(const _Initial()) {
    on<_Started>(_onStarted);
  }

  final IDatabase database;

  void _onStarted(_Started event, Emitter<ItemTileState> emit) async {
    emit(const ItemTileState.loading());
    try {
      if (event.item.category != null) {
        final itemCategoryId = event.item.category!.split('/').last;
        final category =
            await database.getCategoryById(categoryId: itemCategoryId);
        emit(ItemTileState.loaded(category));
      } else {
        emit(const ItemTileState.loaded(null));
      }
    } on Object catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(const ItemTileState.error());
    }
  }
}
