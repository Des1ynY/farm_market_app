import 'package:flutter/material.dart';

class ColorsTheme {
  static const mainGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      _mainGradientStartColor,
      _mainGradientEndColor,
    ],
  );
  static const _mainGradientStartColor = Color(0xFFFFFFFF);
  static const _mainGradientEndColor = Color(0xFFE4F0E4);

  static const badgeColor = Color(0xFFC10000);
  static const itemTileShadowColor = Color(0xFFD3F3E1);
  static const stokeColor = Color(0xFFD6D3D3);
  static const buttonDefaultColor = Color(0xFF427A5B);
  static const textDefaultColor = Color(0xFF343235);
  static const textPassiveColor = Color(0xFF797474);
  static const textButtonColor = Color(0xFFF3F5F3);
}
