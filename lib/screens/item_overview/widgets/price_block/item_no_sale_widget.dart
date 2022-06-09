import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class ItemNoSaleWidget extends StatelessWidget {
  const ItemNoSaleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      padding: kDefaultHorizontalPadding,
      alignment: Alignment.centerLeft,
      child: Text(
        S.of(context).item_no_sale,
        style: Theme.of(context)
            .textTheme
            .itemTitleStyle
            .copyWith(color: ColorsTheme.textPassiveColor),
      ),
    );
  }
}
