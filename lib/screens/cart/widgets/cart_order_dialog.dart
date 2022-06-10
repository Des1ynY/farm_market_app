import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/screens/create_order/create_order_screen.dart';
import 'package:farm_market_app/shared/models/city_model.dart';
import 'package:farm_market_app/shared/widgets/buttons/default_button_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/router/router.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class CartOrderDialog extends StatelessWidget {
  const CartOrderDialog({required this.cityData, Key? key}) : super(key: key);

  final CityModel cityData;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        margin: kPageDefaultPadding,
        padding: kPageDefaultPadding,
        height: 202,
        width: deviceSize.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              S.of(context).select_delivery_type,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelTextStyle,
            ),
            const SizedBox(),
            DefaultButton(
              onPressed: cityData.hasDelivery
                  ? () => _onPressed(context, DeliveryType.delivery)
                  : null,
              child: Text(
                S.of(context).delivery,
                style: textTheme.defaultButtonTextStyle.copyWith(
                  color:
                      cityData.hasDelivery ? ColorsTheme.textButtonColor : null,
                ),
              ),
            ),
            MaterialButton(
              onPressed: cityData.hasPickup
                  ? () => _onPressed(context, DeliveryType.pickup)
                  : null,
              height: kDefaultButtonHeight,
              minWidth: deviceSize.width,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kDefaultButtonBorderRadius),
              ),
              color: ColorsTheme.textButtonColor,
              disabledColor: ColorsTheme.stokeColor,
              elevation: kDefaultElevation,
              highlightElevation: kDefaultElevation,
              child: Text(
                S.of(context).pickup,
                style: textTheme.defaultButtonTextStyle.copyWith(
                  color: cityData.hasPickup
                      ? ColorsTheme.textPassiveColor
                      : ColorsTheme.textButtonColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onPressed(BuildContext context, DeliveryType deliveryType) {
    context.router.pop();
    context.router.push(CreateOrderRoute(deliveryType: deliveryType));
  }
}
