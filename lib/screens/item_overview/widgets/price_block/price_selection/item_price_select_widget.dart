import 'package:farm_market_app/screens/item_overview/widgets/price_block/price_selection/item_price_select_tile.dart';
import 'package:farm_market_app/shared/models/price_model.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class ItemPriceSelectWidget extends StatelessWidget {
  const ItemPriceSelectWidget({
    required this.prices,
    Key? key,
  }) : super(key: key);

  final List<PriceModel> prices;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: Row(
        children: [
          Text('${S.of(context).item_select_price}:'),
          const SizedBox(width: 15),
          Expanded(
            child: SizedBox(
              height: kItemPriceSize,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: prices.length,
                itemBuilder: (context, index) =>
                    ItemPriceSelectTile(price: prices[index]),
                separatorBuilder: (context, index) => const SizedBox(width: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
