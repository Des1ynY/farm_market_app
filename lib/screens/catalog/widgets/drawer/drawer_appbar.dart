import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/screens/catalog/blocs/drawer_cubit/drawer_cubit.dart';
import 'package:farm_market_app/screens/catalog/blocs/items_bloc/items_bloc.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/shared/widgets/buttons/custom_back_button.dart';
import 'package:farm_market_app/shared/widgets/transparent_appbar.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CatalogDrawerAppBar extends StatelessWidget {
  const CatalogDrawerAppBar({Key? key}) : super(key: key);

  static const _selectIcon = 'assets/icons/check.svg';

  @override
  Widget build(BuildContext context) {
    return TransparentAppBar(
      leading: CustomBackButton(onTap: () => _onBackButtonTap(context)),
      centerTitle: true,
      title: S.of(context).categories_title,
      action: GestureDetector(
        onTap: () => _onSelectButtonPressed(context),
        child: SvgPicture.asset(
          _selectIcon,
          width: kAppBarIconSize,
          height: kAppBarIconSize,
        ),
      ),
    );
  }

  void _onBackButtonTap(BuildContext context) {
    context.read<DrawerCubit>().pop();
  }

  void _onSelectButtonPressed(BuildContext context) {
    final previousCategories =
        RepositoryProvider.of<List<CategoryModel>>(context);

    final selectedCategory = List<CategoryModel>.from(previousCategories);
    context
        .read<ItemsBloc>()
        .add(ItemsEvent.loadData(selectedCategory: selectedCategory));
    previousCategories.clear();
    context.router.pop();
  }
}
