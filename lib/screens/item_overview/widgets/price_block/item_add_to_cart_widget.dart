import 'package:farm_market_app/shared/widgets/item_parts/item_price_text_widget.dart';
import 'package:farm_market_app/shared/blocs/add_to_cart_bloc/add_to_cart_bloc.dart';
import 'package:farm_market_app/shared/blocs/cart_bloc/cart_bloc.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:farm_market_app/shared/models/price_model.dart';
import 'package:farm_market_app/shared/widgets/buttons/default_button_widget.dart';
import 'package:farm_market_app/shared/widgets/loading_indicator_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemAddToCartWidget extends StatefulWidget {
  const ItemAddToCartWidget({
    required this.selectedPrice,
    Key? key,
  }) : super(key: key);

  final PriceModel selectedPrice;

  @override
  State<ItemAddToCartWidget> createState() => _ItemAddToCartWidgetState();
}

class _ItemAddToCartWidgetState extends State<ItemAddToCartWidget> {
  late final ItemModel _item;

  @override
  void initState() {
    super.initState();
    _item = RepositoryProvider.of<ItemModel>(context);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: ItemPriceTextWidget(price: widget.selectedPrice.price),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 3,
            child: BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                final cartLoaded = state.maybeWhen(
                  orElse: () => false,
                  loaded: (items, city) => true,
                );
                return DefaultButton(
                  onPressed: cartLoaded ? () => _onPressed(context) : null,
                  child: cartLoaded
                      ? Text(
                          S.of(context).add_to_cart_button_text,
                          style: textTheme.defaultButtonTextStyle,
                        )
                      : const LoadingIndicator(),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void _onPressed(BuildContext context) {
    final itemToOrder = ItemInOrderModel.fromItemPrice(
      item: _item,
      selectedPrice: widget.selectedPrice,
    );
    context.read<AddToCartBloc>().add(AddToCartEvent.addToCart(itemToOrder));
  }
}
