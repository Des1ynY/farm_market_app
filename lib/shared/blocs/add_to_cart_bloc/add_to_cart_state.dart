part of 'add_to_cart_bloc.dart';

@freezed
class AddToCartState with _$AddToCartState {
  const factory AddToCartState.initial() = _Initial;

  const factory AddToCartState.processing() = _Processing;

  const factory AddToCartState.success() = _Success;

  const factory AddToCartState.error() = _Error;
}
