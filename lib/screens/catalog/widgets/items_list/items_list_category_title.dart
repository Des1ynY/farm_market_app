import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class ItemsListCategoryTitle extends StatelessWidget {
  const ItemsListCategoryTitle({
    required this.categories,
    Key? key,
  }) : super(key: key);

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    if (categories.isEmpty) return Container();
    if (categories.length == 1) {
      return Text(
        categories.first.name ?? S.of(context).no_name,
        style: textTheme.catalogCategoryStyle,
      );
    } else {
      return RichText(
        maxLines: 1,
        textAlign: TextAlign.center,
        text: TextSpan(
          text: categories.first.name ?? S.of(context).no_name,
          style: textTheme.catalogCategoryStyle.copyWith(
            color: ColorsTheme.textPassiveColor,
          ),
          children: [
            TextSpan(
              text: '<',
              style: textTheme.catalogCategoryStyle,
            ),
            const TextSpan(
              text: ' ... ',
              style: TextStyle(inherit: true),
            ),
            TextSpan(
              text: '< ${categories.last.name ?? S.of(context).no_name}',
              style: textTheme.catalogCategoryStyle,
            ),
          ],
        ),
      );
    }
  }
}
