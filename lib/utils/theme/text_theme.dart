import 'package:farm_market_app/utils/theme/colors_theme.dart';
import 'package:flutter/material.dart';

extension AppTextTheme on TextTheme {
  static const _manropeFamily = 'Manrope';

  static const _defaultTextStyle = TextStyle(
    fontFamily: _manropeFamily,
    fontWeight: FontWeight.w600,
    color: ColorsTheme.textDefaultColor,
  );

  TextStyle get onboardingHeadingTextStyle {
    return _defaultTextStyle.copyWith(fontSize: 24);
  }

  TextStyle get onboardingTextStyle {
    return _defaultTextStyle.copyWith(
      fontSize: 15,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get appBarTitleStyle {
    return _defaultTextStyle.copyWith(fontSize: 17);
  }

  TextStyle get catalogCategoryStyle {
    return _defaultTextStyle.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get catalogItemsCountStyle {
    return _defaultTextStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get itemTileCategory {
    return const TextStyle(
      fontFamily: _manropeFamily,
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: ColorsTheme.textPassiveColor,
    );
  }

  TextStyle get buttonTextStyle {
    return const TextStyle(
      fontFamily: _manropeFamily,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ColorsTheme.textButtonColor,
    );
  }

  TextStyle get categoryButtonTextStyle {
    return const TextStyle(
      fontFamily: _manropeFamily,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: ColorsTheme.textPassiveColor,
    );
  }
}
