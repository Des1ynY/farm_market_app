import 'package:farm_market_app/screens/item_overview/blocs/item_bloc/item_bloc.dart';
import 'package:farm_market_app/screens/item_overview/widgets/price_block/item_price_select_widget.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
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
      builder: (context, state) {
        if (state.selectedPrice == null) return Container();

        return Column(
          children: [
            ItemPriceSelectWidget(prices: _item.prices!),
            Row(),
          ],
        );
      },
    );
  }
}
