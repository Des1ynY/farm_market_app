import 'package:bloc/bloc.dart';
import 'package:farm_market_app/data/interfaces/cart_interface.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc({required this.cart}) : super(const _Initial()) {
    on<_Refresh>(_refresh);
    on<_ClearCart>(_clearCart);
  }

  final ICart cart;

  void _refresh(_Refresh event, Emitter<CartState> emit) async {
    emit(const CartState.loading());
    try {
      final cartData = await cart.getCart();
      emit(CartState.loaded(cartData));
    } on Object catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(const CartState.error());
    }
  }

  void _clearCart(_ClearCart event, Emitter<CartState> emit) async {
    emit(const CartState.loading());
    try {
      await cart.clearCart();
      add(const CartEvent.refresh());
    } on Object catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(const CartState.error());
    }
  }
}
