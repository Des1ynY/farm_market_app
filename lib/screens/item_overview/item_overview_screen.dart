import 'package:farm_market_app/screens/item_overview/blocs/item_bloc/item_bloc.dart';
import 'package:farm_market_app/screens/item_overview/widgets/description_block/description_block_widget.dart';
import 'package:farm_market_app/screens/item_overview/widgets/images_block/images_block_widget.dart';
import 'package:farm_market_app/screens/item_overview/widgets/item_overview_title.dart';
import 'package:farm_market_app/screens/item_overview/widgets/price_block/item_no_sale_widget.dart';
import 'package:farm_market_app/screens/item_overview/widgets/price_block/price_block_widget.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:farm_market_app/shared/widgets/background_gradient_widget.dart';
import 'package:farm_market_app/shared/widgets/buttons/cart_button_widget.dart';
import 'package:farm_market_app/shared/widgets/transparent_appbar.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemOverviewScreen extends StatelessWidget {
  const ItemOverviewScreen({
    required this.item,
    required this.itemCategory,
    Key? key,
  }) : super(key: key);

  final ItemModel item;
  final CategoryModel? itemCategory;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => item),
        RepositoryProvider(create: (context) => itemCategory),
      ],
      child: BlocProvider(
        create: (context) => ItemBloc(
          imageUrl: item.images?.firstOrNull,
          tabIndex: _hasDescriptionOrComposition ? 0 : null,
          selectedPrice: item.prices?.firstOrNull,
        ),
        child: Scaffold(
          body: BackgroundGradient(
            child: Column(
              children: [
                const TransparentAppBar(
                  leading: BackButton(color: ColorsTheme.textDefaultColor),
                  action: CartButton(),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: const [
                        ImagesBlockWidget(),
                        SizedBox(height: 40),
                        ItemOverviewTitle(),
                        DescriptionBlockWidget(),
                      ],
                    ),
                  ),
                ),
                if (item.prices?.firstOrNull != null) const PriceBlockWidget(),
                if (item.prices?.firstOrNull == null) const ItemNoSaleWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool get _hasDescriptionOrComposition {
    return item.composition != null || item.description != null;
  }
}

extension<T> on List<T> {
  T? get firstOrNull {
    try {
      return first;
    } on Object {
      return null;
    }
  }
}
