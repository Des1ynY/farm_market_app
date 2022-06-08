import 'package:farm_market_app/screens/item_overview/widgets/item_overview_appbar_widget.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:farm_market_app/shared/widgets/background_gradient_widget.dart';
import 'package:flutter/material.dart';

class ItemOverviewScreen extends StatefulWidget {
  const ItemOverviewScreen({required this.item, Key? key}) : super(key: key);

  final ItemModel item;

  @override
  State<ItemOverviewScreen> createState() => _ItemOverviewScreenState();
}

class _ItemOverviewScreenState extends State<ItemOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGradient(
        child: Column(
          children: const [
            ItemOverviewAppbar(),
          ],
        ),
      ),
    );
  }
}
