import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    required this.label,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final String label;
  final VoidCallback? onPressed;

  static const _borderRadius = 15.0;
  static const _elevation = 0.0;
  static const _height = 48.0;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: _height,
      minWidth: MediaQuery.of(context).size.width,
      color: ColorsTheme.buttonDefaultColor,
      disabledColor: ColorsTheme.stokeColor,
      elevation: _elevation,
      highlightElevation: _elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.buttonTextStyle,
      ),
    );
  }
}
