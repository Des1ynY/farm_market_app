import 'package:farm_market_app/shared/blocs/cart_bloc/cart_bloc.dart';
import 'package:farm_market_app/shared/widgets/transparent_appbar.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartAppBarWidget extends StatelessWidget {
  const CartAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TransparentAppBar(
      centerTitle: true,
      leading: const BackButton(color: ColorsTheme.textDefaultColor),
      title: S.of(context).cart_appbar_title,
      action: IconButton(
        onPressed: () => _onClearCartButtonPressed(context),
        icon: const Icon(
          Icons.delete,
          color: ColorsTheme.textDefaultColor,
        ),
      ),
    );
  }

  void _onClearCartButtonPressed(BuildContext context) {
    context.read<CartBloc>().add(const CartEvent.clearCart());
  }
}
