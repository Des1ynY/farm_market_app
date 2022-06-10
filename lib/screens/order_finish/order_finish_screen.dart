import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/shared/widgets/background_gradient_widget.dart';
import 'package:farm_market_app/shared/widgets/transparent_appbar.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/router/router.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class OrderFinishScreen extends StatefulWidget {
  const OrderFinishScreen({Key? key}) : super(key: key);

  @override
  State<OrderFinishScreen> createState() => _OrderFinishScreenState();
}

class _OrderFinishScreenState extends State<OrderFinishScreen> {
  late final String _assetPath;
  static const _assetsPaths = [
    'assets/img/order_finish_img_0.png',
    'assets/img/order_finish_img_1.png',
  ];

  @override
  void initState() {
    super.initState();
    final rnd = Random();
    _assetPath = _assetsPaths[rnd.nextInt(_assetsPaths.length)];
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: BackgroundGradient(
        child: Column(
          children: [
            TransparentAppBar(
              action: IconButton(
                onPressed: () => _onPressed(context),
                icon: const Icon(
                  Icons.close,
                  color: ColorsTheme.textDefaultColor,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Image.asset(
                      _assetPath,
                      fit: BoxFit.fitWidth,
                    ),
                    Text(
                      S.of(context).order_finish_text,
                      textAlign: TextAlign.center,
                      style: textTheme.onboardingHeadingTextStyle,
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onPressed(BuildContext context) {
    context.router.replaceAll([const CatalogRoute()]);
  }
}
