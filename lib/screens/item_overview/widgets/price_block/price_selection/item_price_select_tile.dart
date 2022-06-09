import 'package:farm_market_app/screens/item_overview/blocs/item_bloc/item_bloc.dart';
import 'package:farm_market_app/shared/models/price_model.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemPriceSelectTile extends StatelessWidget {
  const ItemPriceSelectTile({required this.price, Key? key}) : super(key: key);

  final PriceModel price;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<ItemBloc, ItemState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => _onPressed(context),
          child: Container(
            height: kItemPriceSize,
            width: kItemPriceSize,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: state.selectedPrice == price
                  ? ColorsTheme.textDefaultColor
                  : Colors.white,
              border: Border.all(color: ColorsTheme.stokeColor, width: 1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: FittedBox(
              child: Text(
                '${price.capacity ?? ''} ${price.capacityType ?? ''}',
                style: state.selectedPrice == price
                    ? textTheme.itemSelectedPriceTileStyle
                    : textTheme.itemUnselectedPriceTileStyle,
              ),
            ),
          ),
        );
      },
    );
  }

  void _onPressed(BuildContext context) {
    context.read<ItemBloc>().add(ItemEvent.priceSelected(price));
  }
}
