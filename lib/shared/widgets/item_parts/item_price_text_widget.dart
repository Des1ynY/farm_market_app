import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class ItemPriceTextWidget extends StatelessWidget {
  const ItemPriceTextWidget({
    required this.price,
    this.fontSize,
    Key? key,
  }) : super(key: key);

  final num price;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    final prices = price.toStringAsFixed(2).split('.');

    return RichText(
      text: TextSpan(
        text: '\$${prices.first}.',
        style: Theme.of(context)
            .textTheme
            .itemPriceStyle
            .copyWith(fontSize: fontSize),
        children: [
          TextSpan(
            text: prices.last,
            style: TextStyle(
              inherit: true,
              fontSize: fontSize == null ? 18 : fontSize! - 4,
            ),
          ),
        ],
      ),
    );
  }
}
