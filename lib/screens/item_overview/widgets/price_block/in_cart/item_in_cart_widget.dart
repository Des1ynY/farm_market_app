import 'package:farm_market_app/screens/item_overview/widgets/price_block/in_cart/cart_increase_button.dart';
import 'package:farm_market_app/shared/blocs/cart_bloc/cart_bloc.dart';
import 'package:farm_market_app/screens/item_overview/widgets/price_block/in_cart/cart_decrease_button.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:farm_market_app/shared/widgets/item_parts/item_price_text_widget.dart';
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: ItemPriceTextWidget(
            price: inCartItem.selectedPrice.price * inCartItem.count,
          ),
        ),
        const SizedBox(width: 10),
        BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            return Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CartItemDecreaseCountButton(inCartItem: inCartItem),
                  const SizedBox(width: 5),
                  Text(
                    inCartItem.count.toString(),
                    style: Theme.of(context).textTheme.itemPriceStyle,
                  ),
                  const SizedBox(width: 5),
                  CartItemIncreaseCountButton(inCartItem: inCartItem),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
