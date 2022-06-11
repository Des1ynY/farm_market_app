import 'package:farm_market_app/utils/theme/colors_theme.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: ColorsTheme.buttonDefaultColor,
      ),
    );
  }
}
