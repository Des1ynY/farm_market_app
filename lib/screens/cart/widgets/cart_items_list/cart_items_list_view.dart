import 'package:farm_market_app/screens/cart/widgets/cart_items_list/cart_item_list_tile.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class CartItemsListView extends StatelessWidget {
  const CartItemsListView({
    required this.inCartItems,
    Key? key,
  }) : super(key: key);

  final List<ItemInOrderModel> inCartItems;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: inCartItems.length,
      itemBuilder: (context, index) => CartItemListTile(
        inCartItem: inCartItems[index],
      ),
      separatorBuilder: (context, index) => const Divider(
        height: 1,
        thickness: 1,
        color: ColorsTheme.stokeColor,
      ),
    );
  }
}
