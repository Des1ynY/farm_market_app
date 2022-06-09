import 'package:farm_market_app/screens/item_overview/widgets/price_block/in_cart/item_count_button.dart';
import 'package:farm_market_app/screens/item_overview/widgets/price_block/item_price_text_widget.dart';
import 'package:farm_market_app/shared/blocs/add_to_cart_bloc/add_to_cart_bloc.dart';
import 'package:farm_market_app/shared/blocs/cart_bloc/cart_bloc.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:farm_market_app/shared/widgets/loading_indicator_widget.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemInCartWidget extends StatelessWidget {
  const ItemInCartWidget({
    required this.inCartItem,
    Key? key,
  }) : super(key: key);

  final ItemInOrderModel inCartItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          ItemPriceTextWidget(
            price: inCartItem.selectedPrice.price * inCartItem.count,
          ),
          const SizedBox(width: 10),
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              final cartLoaded = state.maybeWhen(
                orElse: () => false,
                loaded: (items) => true,
              );
              return Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemCountButton(
                      onPressed: cartLoaded
                          ? () => _onDecreaseButtonPressed(context)
                          : null,
                      icon: const Icon(
                        Icons.remove,
                        color: ColorsTheme.textDefaultColor,
                      ),
                      buttonColor: Colors.white,
                    ),
                    cartLoaded
                        ? Text(
                            inCartItem.count.toString(),
                            style: Theme.of(context).textTheme.itemPriceStyle,
                          )
                        : LoadingIndicator(),
                    ItemCountButton(
                      onPressed: cartLoaded
                          ? () => _onIncreaseButtonPressed(context)
                          : null,
                      icon: const Icon(Icons.add, color: Colors.white),
                      buttonColor: ColorsTheme.textDefaultColor,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void _onIncreaseButtonPressed(BuildContext context) {
    context.read<AddToCartBloc>().add(AddToCartEvent.increaseCount(inCartItem));
  }

  void _onDecreaseButtonPressed(BuildContext context) {
    context.read<AddToCartBloc>().add(AddToCartEvent.decreaseCount(inCartItem));
  }
}
