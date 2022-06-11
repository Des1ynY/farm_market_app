import 'package:farm_market_app/screens/catalog/blocs/categories_bloc/categories_bloc.dart';
import 'package:farm_market_app/shared/widgets/buttons/cart_button_widget.dart';
import 'package:farm_market_app/shared/widgets/transparent_appbar.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CatalogAppBar extends StatelessWidget {
  const CatalogAppBar({Key? key}) : super(key: key);

  static const _menuIcon = 'assets/icons/category.svg';

  @override
  Widget build(BuildContext context) {
    return TransparentAppBar(
      leading: GestureDetector(
        onTap: () => _onMenuButtonPressed(context),
        child: SvgPicture.asset(
          _menuIcon,
          width: kAppBarIconSize,
          height: kAppBarIconSize,
        ),
      ),
      centerTitle: true,
      title: S.of(context).catalog_appbar_title,
      action: const CartButton(),
    );
  }

  void _onMenuButtonPressed(BuildContext context) {
    Scaffold.of(context).openDrawer();
    context.read<CategoriesBloc>().add(const CategoriesEvent.started());
  }
}
