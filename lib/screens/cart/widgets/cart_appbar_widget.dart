import 'package:farm_market_app/shared/blocs/cart_bloc/cart_bloc.dart';
import 'package:farm_market_app/shared/widgets/buttons/custom_back_button.dart';
import 'package:farm_market_app/shared/widgets/transparent_appbar.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartAppBarWidget extends StatelessWidget {
  const CartAppBarWidget({Key? key}) : super(key: key);

  static const _deleteIcon = 'assets/icons/delete.svg';

  @override
  Widget build(BuildContext context) {
    return TransparentAppBar(
      centerTitle: true,
      leading: const CustomBackButton(),
      title: S.of(context).cart_appbar_title,
      action: GestureDetector(
        onTap: () => _onClearCartButtonPressed(context),
        child: SvgPicture.asset(
          _deleteIcon,
          width: kAppBarIconSize,
          height: kAppBarIconSize,
        ),
      ),
    );
  }

  void _onClearCartButtonPressed(BuildContext context) {
    context.read<CartBloc>().add(const CartEvent.clearCart());
  }
}
