import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class ItemCountButton extends StatelessWidget {
  const ItemCountButton({
    required this.onPressed,
    required this.icon,
    required this.buttonColor,
    Key? key,
  }) : super(key: key);

  final Icon icon;
  final Color buttonColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: kDefaultButtonHeight,
      minWidth: kDefaultButtonHeight,
      shape: const CircleBorder(),
      color: buttonColor,
      disabledColor: buttonColor,
      elevation: kDefaultElevation,
      highlightElevation: kDefaultElevation,
      child: icon,
    );
  }
}
