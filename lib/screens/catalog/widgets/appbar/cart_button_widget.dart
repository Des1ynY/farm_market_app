import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:farm_market_app/utils/router/router.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class CatalogAppBarCartButton extends StatelessWidget {
  const CatalogAppBarCartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Badge(
      // FIXME
      showBadge: false,
      badgeColor: ColorsTheme.badgeColor,
      toAnimate: true,
      animationType: BadgeAnimationType.scale,
      child: IconButton(
        icon: const Icon(Icons.shopping_cart),
        color: ColorsTheme.textDefaultColor,
        onPressed: () => _onCartButtonPressed(context),
      ),
    );
  }

  void _onCartButtonPressed(BuildContext context) {
    context.router.push(const CartRoute());
  }
}
