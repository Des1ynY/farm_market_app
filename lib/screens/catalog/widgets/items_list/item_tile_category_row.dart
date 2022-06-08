import 'package:cached_network_image/cached_network_image.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    required this.selectedCategory,
    Key? key,
  }) : super(key: key);

  final CategoryModel? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (selectedCategory?.icon != null)
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: CachedNetworkImage(
                imageUrl: selectedCategory!.icon!,
                width: 15,
                height: 15,
              ),
            ),
          Text(
            selectedCategory?.name ?? S.of(context).item_no_category,
            style: Theme.of(context).textTheme.itemTileCategory,
          ),
        ],
      ),
    );
  }
}
