import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:farm_market_app/data/interfaces/cart_interface.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_event.dart';
part 'add_to_cart_state.dart';
part 'add_to_cart_bloc.freezed.dart';

class AddToCartBloc extends Bloc<AddToCartEvent, AddToCartState> {
  AddToCartBloc({required this.cart}) : super(const _Initial()) {
    on<_AddToCart>(_addToCart, transformer: droppable());
    on<_IncreaseCount>(_increaseCount, transformer: droppable());
    on<_DecreaseCount>(_decreaseCount, transformer: droppable());
    on<_DeleteItem>(_deleteItem, transformer: droppable());
  }

  final ICart cart;

  void _addToCart(_AddToCart event, Emitter<AddToCartState> emit) async {
    emit(const AddToCartState.processing());
    try {
      await cart.addNewItem(event.item);
      emit(const AddToCartState.initial());
    } on Object catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(const AddToCartState.error());
      emit(const AddToCartState.initial());
    }
  }

  void _increaseCount(
    _IncreaseCount event,
    Emitter<AddToCartState> emit,
  ) async {
    emit(const AddToCartState.processing());
    try {
      await cart.increaseItemCount(event.item.toMapKey());
      emit(const AddToCartState.initial());
    } on Object catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(const AddToCartState.error());
      emit(const AddToCartState.initial());
    }
  }

  void _decreaseCount(
    _DecreaseCount event,
    Emitter<AddToCartState> emit,
  ) async {
    emit(const AddToCartState.processing());
    try {
      await cart.decreaseItemCount(event.item.toMapKey());
      emit(const AddToCartState.initial());
    } on Object catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(const AddToCartState.error());
      emit(const AddToCartState.initial());
    }
  }

  void _deleteItem(
    _DeleteItem event,
    Emitter<AddToCartState> emit,
  ) async {
    emit(const AddToCartState.processing());
    try {
      await cart.deleteItem(event.item.toMapKey());
      emit(const AddToCartState.initial());
    } on Object catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(const AddToCartState.error());
      emit(const AddToCartState.initial());
    }
  }
}
