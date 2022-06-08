import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/shared/widgets/transparent_appbar.dart';
import 'package:farm_market_app/utils/router/router.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class ItemOverviewAppbar extends StatelessWidget {
  const ItemOverviewAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TransparentAppBar(
      leading: const BackButton(color: ColorsTheme.textDefaultColor),
      action: IconButton(
        onPressed: () => _onCartButtonPressed(context),
        icon: const Icon(
          Icons.shopping_cart,
          color: ColorsTheme.textDefaultColor,
        ),
      ),
    );
  }

  void _onCartButtonPressed(BuildContext context) {
    context.router.push(const CartRoute());
  }
}
