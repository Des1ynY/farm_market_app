import 'package:bloc/bloc.dart';
import 'package:farm_market_app/data/interfaces/database_interface.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_event.dart';
part 'items_state.dart';
part 'items_bloc.freezed.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  ItemsBloc({required this.database}) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_Refresh>(_onRefresh);
  }

  final IDatabase database;

  void _onStarted(_Started event, Emitter<ItemsState> emit) async {
    emit(const ItemsState.loading());
    ItemsState.lastSelectedCategory = event.selectedCategory;
    try {
      final items = await database.getItems(
        categoryId: event.selectedCategory?.uid,
      );
      emit(ItemsState.loaded(items, event.selectedCategory));
    } on Object catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(const ItemsState.error());
    }
  }

  void _onRefresh(_Refresh event, Emitter<ItemsState> emit) async {
    emit(const ItemsState.loading());
    try {
      final lastSelectedCategory = ItemsState.lastSelectedCategory;
      final items = await database.getItems(
        categoryId: lastSelectedCategory?.uid,
      );
      emit(ItemsState.loaded(items, lastSelectedCategory));
    } on Object catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(const ItemsState.error());
    }
  }
}
