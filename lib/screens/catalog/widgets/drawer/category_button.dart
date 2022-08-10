import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:farm_market_app/screens/catalog/blocs/categories_bloc/categories_bloc.dart';
import 'package:farm_market_app/screens/catalog/blocs/items_bloc/items_bloc.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({required this.category, Key? key}) : super(key: key);

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final hasIcon = category.icon != null;

    return InkWell(
      onTap: () => _onPressed(context),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (hasIcon)
              CachedNetworkImage(
                imageUrl: category.icon!,
                height: 20,
                width: 20,
              ),
            SizedBox(width: hasIcon ? 20 : 40),
            Text(
              category.name ?? S.of(context).no_name,
              style: Theme.of(context).textTheme.categoryTextStyle,
            ),
          ],
        ),
      ),
    );
  }

  void _onPressed(BuildContext context) {
    final previousCategories =
        RepositoryProvider.of<List<CategoryModel>>(context);

    if (category.children == null || category.children!.isEmpty) {
      previousCategories.add(category);
      final selectedCategory = List<CategoryModel>.from(previousCategories);
      context
          .read<ItemsBloc>()
          .add(ItemsEvent.loadData(selectedCategory: selectedCategory));
      previousCategories.clear();
      context.router.pop();
    } else {
      previousCategories.add(category);
      context
          .read<CategoriesBloc>()
          .add(CategoriesEvent.started(parentCategoryId: category.uid));
    }
  }
}
