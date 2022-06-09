import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    required this.child,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: kDefaultButtonHeight,
      minWidth: MediaQuery.of(context).size.width,
      color: ColorsTheme.buttonDefaultColor,
      disabledColor: ColorsTheme.stokeColor,
      elevation: kDefaultElevation,
      highlightElevation: kDefaultElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kDefaultButtonBorderRadius),
      ),
      child: child,
    );
  }
}
