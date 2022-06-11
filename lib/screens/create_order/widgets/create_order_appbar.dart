import 'package:farm_market_app/screens/create_order/create_order_screen.dart';
import 'package:farm_market_app/shared/widgets/buttons/custom_back_button.dart';
import 'package:farm_market_app/shared/widgets/transparent_appbar.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';

class CreateOrderAppbar extends StatelessWidget {
  const CreateOrderAppbar({
    required this.deliveryType,
    Key? key,
  }) : super(key: key);

  final DeliveryType deliveryType;

  @override
  Widget build(BuildContext context) {
    return TransparentAppBar(
      leading: const CustomBackButton(),
      title: getAppBarTitle(context),
      centerTitle: true,
    );
  }

  String getAppBarTitle(BuildContext context) {
    switch (deliveryType) {
      case DeliveryType.delivery:
        return S.of(context).delivery;
      case DeliveryType.pickup:
        return S.of(context).pickup;
    }
  }
}
