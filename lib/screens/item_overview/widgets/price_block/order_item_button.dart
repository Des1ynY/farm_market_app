import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/shared/blocs/cart_bloc/cart_bloc.dart';
import 'package:farm_market_app/shared/widgets/buttons/default_button_widget.dart';
import 'package:farm_market_app/shared/widgets/loading_indicator_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/router/router.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderItemButton extends StatelessWidget {
  const OrderItemButton({required this.inCart, Key? key}) : super(key: key);

  final bool inCart;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final cartIsNotLoading = state.maybeWhen(
          orElse: () => true,
          loading: () => false,
        );

        return DefaultButton(
          onPressed:
              inCart && cartIsNotLoading ? () => _onPressed(context) : null,
          child: cartIsNotLoading
              ? Text(
                  S.of(context).order_item_button_text,
                  style: Theme.of(context).textTheme.defaultButtonTextStyle,
                )
              : const LoadingIndicator(),
        );
      },
    );
  }

  void _onPressed(BuildContext context) {
    context.router.push(const CartRoute());
  }
}
