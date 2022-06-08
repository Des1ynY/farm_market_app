import 'package:farm_market_app/utils/theme/colors_theme.dart';
import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      height: deviceSize.height,
      width: deviceSize.width,
      decoration: const BoxDecoration(
        gradient: ColorsTheme.mainGradient,
      ),
      child: child,
    );
  }
}
