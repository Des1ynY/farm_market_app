import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/shared/widgets/background_gradient_widget.dart';
import 'package:farm_market_app/shared/widgets/buttons/button_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/router/router.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  static const _assetImagePath = 'assets/img/onboarding_flower_img.png';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: BackgroundGradient(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 40),
                Image.asset(
                  _assetImagePath,
                  height: 226,
                  width: 226,
                ),
                Column(
                  children: [
                    Text(
                      S.of(context).onboarding_heading_text,
                      style: textTheme.onboardingHeadingTextStyle,
                    ),
                    const SizedBox(height: 35),
                    Text(
                      S.of(context).onboarding_text,
                      textAlign: TextAlign.center,
                      style: textTheme.onboardingTextStyle,
                    ),
                  ],
                ),
                Button(
                  onPressed: () => _onPressed(context),
                  label: S.of(context).next_button_text,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onPressed(BuildContext context) {
    context.router.replace(const CatalogRoute());
  }
}
