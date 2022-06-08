import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  static const _borderRadius = 10.0;
  static const _elevation = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: kAppBarHeight,
      minWidth: kAppBarHeight,
      onPressed: () => _onPressed(context),
      color: ColorsTheme.textDefaultColor,
      elevation: _elevation,
      highlightElevation: _elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        side: const BorderSide(
          color: ColorsTheme.stokeColor,
        ),
      ),
      child: const Icon(
        Icons.arrow_back,
        color: ColorsTheme.textButtonColor,
      ),
    );
  }

  void _onPressed(BuildContext context) {
    context.router.pop();
  }
}
