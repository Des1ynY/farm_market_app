import 'package:farm_market_app/screens/item_overview/blocs/item_bloc/item_bloc.dart';
import 'package:farm_market_app/screens/item_overview/widgets/price_block/in_cart/item_in_cart_widget.dart';
import 'package:farm_market_app/screens/item_overview/widgets/price_block/item_add_to_cart_widget.dart';
import 'package:farm_market_app/screens/item_overview/widgets/price_block/item_no_sale_widget.dart';
import 'package:farm_market_app/screens/item_overview/widgets/price_block/price_selection/item_price_select_widget.dart';
import 'package:farm_market_app/shared/blocs/add_to_cart_bloc/add_to_cart_bloc.dart';
import 'package:farm_market_app/shared/blocs/cart_bloc/cart_bloc.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:farm_market_app/shared/models/price_model.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PriceBlockWidget extends StatefulWidget {
  const PriceBlockWidget({Key? key}) : super(key: key);

  @override
  State<PriceBlockWidget> createState() => _PriceBlockWidgetState();
}

class _PriceBlockWidgetState extends State<PriceBlockWidget> {
  late final ItemModel _item;

  @override
  void initState() {
    super.initState();
    _item = RepositoryProvider.of<ItemModel>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemBloc, ItemState>(
      builder: (context, itemState) {
        if (itemState.selectedPrice == null) return const ItemNoSaleWidget();
        final inCartId = getItemInOrderId(itemState.selectedPrice!);

        return BlocListener<AddToCartBloc, AddToCartState>(
          listener: (context, taskState) {
            taskState.maybeWhen(
              orElse: () =>
                  context.read<CartBloc>().add(const CartEvent.refresh()),
              error: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(S.of(context).task_error_text),
                duration: const Duration(seconds: 1),
              )),
            );
          },
          child: Column(
            children: [
              ItemPriceSelectWidget(prices: _item.prices!),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, cartState) {
                  return cartState.maybeWhen(
                    orElse: () => ItemAddToCartWidget(
                      selectedPrice: itemState.selectedPrice!,
                    ),
                    loaded: (items) {
                      final inCart = items.containsKey(inCartId);

                      return inCart
                          ? ItemInCartWidget(
                              inCartItem: items[inCartId]!,
                            )
                          : ItemAddToCartWidget(
                              selectedPrice: itemState.selectedPrice!,
                            );
                    },
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  String getItemInOrderId(PriceModel price) {
    return ItemInOrderModel.fromItemPrice(item: _item, selectedPrice: price)
        .toMapKey();
  }
}
