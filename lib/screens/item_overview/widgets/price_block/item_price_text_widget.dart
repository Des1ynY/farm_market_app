import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class ItemPriceTextWidget extends StatelessWidget {
  const ItemPriceTextWidget({required this.price, Key? key}) : super(key: key);

  final num price;

  @override
  Widget build(BuildContext context) {
    final itemPrice = price.toStringAsFixed(2);

    return Expanded(
      flex: 2,
      child: RichText(
        text: TextSpan(
          text: '\$${itemPrice.split('.').first}.',
          style: Theme.of(context).textTheme.itemPriceStyle,
          children: [
            TextSpan(
              text: itemPrice.split('.').last,
              style: const TextStyle(
                inherit: true,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
