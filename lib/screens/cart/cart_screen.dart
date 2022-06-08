import 'package:farm_market_app/shared/widgets/background_gradient_widget.dart';
import 'package:farm_market_app/shared/widgets/transparent_appbar.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGradient(
        child: Column(
          children: [
            TransparentAppBar(
              centerTitle: true,
              leading: const BackButton(color: ColorsTheme.textDefaultColor),
              title: S.of(context).cart_appbar_title,
            ),
          ],
        ),
      ),
    );
  }
}
