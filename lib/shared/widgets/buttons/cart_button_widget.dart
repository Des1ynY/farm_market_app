import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:farm_market_app/shared/blocs/cart_bloc/cart_bloc.dart';
import 'package:farm_market_app/shared/widgets/loading_indicator_widget.dart';
import 'package:farm_market_app/utils/router/router.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartButton extends StatelessWidget {
  const CartButton({Key? key}) : super(key: key);

  static const _cartIcon = 'assets/icons/cart.svg';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Badge(
          showBadge: state.maybeWhen(
            orElse: () => false,
            loading: () => true,
            loaded: (items, city) => true,
          ),
          badgeContent: state.maybeWhen(
            orElse: () => null,
            loading: () => const SizedBox(
              width: 10,
              height: 10,
              child: LoadingIndicator(),
            ),
            loaded: (items, city) => Text(
              items.length.toString(),
              style: const TextStyle(
                inherit: true,
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ),
          position: BadgePosition.topEnd(top: -10, end: -6),
          badgeColor: ColorsTheme.badgeColor,
          toAnimate: true,
          elevation: 0,
          animationType: BadgeAnimationType.scale,
          child: GestureDetector(
            onTap: () => _onCartButtonPressed(context),
            child: SvgPicture.asset(
              _cartIcon,
              width: kAppBarIconSize,
              height: kAppBarIconSize,
            ),
          ),
        );
      },
    );
  }

  void _onCartButtonPressed(BuildContext context) {
    context.router.push(const CartRoute());
  }
}
