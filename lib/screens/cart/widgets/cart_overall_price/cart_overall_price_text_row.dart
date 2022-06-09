import 'package:farm_market_app/shared/widgets/item_parts/item_price_text_widget.dart';
import 'package:flutter/material.dart';

class CartOverallPriceTextRow extends StatelessWidget {
  const CartOverallPriceTextRow({
    required this.caption,
    required this.price,
    Key? key,
  }) : super(key: key);

  final String caption;
  final num price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(caption),
        ItemPriceTextWidget(price: price, fontSize: 20),
      ],
    );
  }
}
