import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({this.onTap, Key? key}) : super(key: key);

  final VoidCallback? onTap;

  static const _backIcon = 'assets/icons/back.svg';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => context.router.pop(),
      child: Container(
        width: kBackButtonSize,
        height: kBackButtonSize,
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
          color: ColorsTheme.textDefaultColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ColorsTheme.stokeColor, width: 1),
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(_backIcon),
      ),
    );
  }
}
