import 'package:farm_market_app/shared/blocs/add_to_cart_bloc/add_to_cart_bloc.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemDecreaseCountButton extends StatelessWidget {
  const CartItemDecreaseCountButton({
    required this.inCartItem,
    Key? key,
  }) : super(key: key);

  final ItemInOrderModel inCartItem;

  static const _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => _onPressed(context),
      height: kDefaultButtonHeight,
      minWidth: kDefaultButtonHeight,
      shape: const CircleBorder(),
      color: _color,
      disabledColor: _color,
      elevation: kDefaultElevation,
      highlightElevation: kDefaultElevation,
      child: const Icon(Icons.remove, color: ColorsTheme.textDefaultColor),
    );
  }

  void _onPressed(BuildContext context) {
    context.read<AddToCartBloc>().add(AddToCartEvent.decreaseCount(inCartItem));
  }
}
