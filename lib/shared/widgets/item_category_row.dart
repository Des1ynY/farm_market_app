import 'package:cached_network_image/cached_network_image.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    required this.category,
    double? fontSize,
    double? iconSize,
    Key? key,
  })  : _fontSize = fontSize ?? 11,
        _iconSize = iconSize ?? 15,
        super(key: key);

  final CategoryModel? category;
  final double? _fontSize;
  final double? _iconSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (category?.icon != null)
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: CachedNetworkImage(
                imageUrl: category!.icon!,
                width: _iconSize,
                height: _iconSize,
              ),
            ),
          Text(
            category?.name ?? S.of(context).no_category,
            style: Theme.of(context)
                .textTheme
                .categoryTextStyle
                .copyWith(fontSize: _fontSize),
          ),
        ],
      ),
    );
  }
}
