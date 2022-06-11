import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/shared/models/pickup_model.dart';
import 'package:farm_market_app/shared/widgets/background_gradient_widget.dart';
import 'package:farm_market_app/shared/widgets/buttons/default_button_widget.dart';
import 'package:farm_market_app/shared/widgets/transparent_appbar.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/router/router.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_launcher/map_launcher.dart';

class OrderFinishScreen extends StatefulWidget {
  const OrderFinishScreen({
    required this.pickupPoint,
    Key? key,
  }) : super(key: key);

  final PickupModel? pickupPoint;

  @override
  State<OrderFinishScreen> createState() => _OrderFinishScreenState();
}

class _OrderFinishScreenState extends State<OrderFinishScreen> {
  late final String _selectedImage;

  static const _closeIcon = 'assets/icons/close.svg';
  static const _images = [
    'assets/img/order_finish_img_0.png',
    'assets/img/order_finish_img_1.png',
  ];

  @override
  void initState() {
    super.initState();
    final rnd = Random();
    _selectedImage = _images[rnd.nextInt(_images.length)];
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: BackgroundGradient(
        child: Column(
          children: [
            TransparentAppBar(
              action: GestureDetector(
                onTap: () => _onCloseButtonPressed(context),
                child: SvgPicture.asset(
                  _closeIcon,
                  width: kAppBarIconSize,
                  height: kAppBarIconSize,
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
                      _selectedImage,
                      fit: BoxFit.fitWidth,
                    ),
                    Text(
                      S.of(context).order_finish_text,
                      textAlign: TextAlign.center,
                      style: textTheme.onboardingHeadingTextStyle,
                    ),
                    if (widget.pickupPoint != null)
                      DefaultButton(
                        onPressed: () => _onCreateMapButtonPressed(),
                        child: Text(
                          S.of(context).create_map_button_text,
                          style: textTheme.defaultButtonTextStyle,
                        ),
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onCreateMapButtonPressed() async {
    final maps = await MapLauncher.installedMaps;
    if (maps.isNotEmpty) {
      await maps.first.showMarker(
        coords: Coords(
          widget.pickupPoint!.latitude.toDouble(),
          widget.pickupPoint!.longitude.toDouble(),
        ),
        title: widget.pickupPoint!.address,
      );
    } else {
      _showErrorSnackbar();
    }
  }

  void _showErrorSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(S.of(context).no_map_error_text),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  void _onCloseButtonPressed(BuildContext context) {
    context.router.replaceAll([const CatalogRoute()]);
  }
}
