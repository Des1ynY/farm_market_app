import 'package:farm_market_app/screens/cart/widgets/cart_overall_price/cart_overall_price_text_row.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:farm_market_app/shared/widgets/buttons/default_button_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class CartOverallPriceWidget extends StatelessWidget {
  const CartOverallPriceWidget({required this.items, Key? key})
      : super(key: key);

  final List<ItemInOrderModel> items;

  @override
  Widget build(BuildContext context) {
    // FIXME: load deliveryPrice from remote config, check if price is available
    const deliveryPrice = 0;
    final itemsPrice = items
        .map((e) => e.selectedPrice.price * e.count)
        .fold(0.0, (prev, e) => (prev as double) + e);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: ColorsTheme.stokeColor, width: 1),
        ),
      ),
      child: Column(
        children: [
          CartOverallPriceTextRow(
            caption: S.of(context).summ_price,
            price: itemsPrice,
          ),
          CartOverallPriceTextRow(
            caption: S.of(context).delivery_price,
            price: deliveryPrice,
          ),
          CartOverallPriceTextRow(
            caption: S.of(context).overall_price,
            price: itemsPrice + deliveryPrice,
          ),
          const SizedBox(height: 10),
          DefaultButton(
            onPressed: () => _onPressed(context),
            child: Text(
              S.of(context).create_order_button_text,
              style: Theme.of(context).textTheme.defaultButtonTextStyle,
            ),
          )
        ],
      ),
    );
  }

  void _onPressed(BuildContext context) {}
}
