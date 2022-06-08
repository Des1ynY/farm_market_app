import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:farm_market_app/shared/widgets/item_category_row.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemOverviewTitle extends StatefulWidget {
  const ItemOverviewTitle({Key? key}) : super(key: key);

  @override
  State<ItemOverviewTitle> createState() => _ItemOverviewTitleState();
}

class _ItemOverviewTitleState extends State<ItemOverviewTitle> {
  late final ItemModel _item;
  late final CategoryModel? _itemCategory;

  @override
  void initState() {
    super.initState();
    _item = RepositoryProvider.of<ItemModel>(context);
    _itemCategory = RepositoryProvider.of<CategoryModel?>(context);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _item.name ?? S.of(context).no_name,
            style: textTheme.itemTitleStyle,
          ),
          const SizedBox(height: 15),
          CategoryRow(category: _itemCategory, fontSize: 14, iconSize: 20),
        ],
      ),
    );
  }
}
