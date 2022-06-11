import 'package:farm_market_app/shared/widgets/buttons/custom_back_button.dart';
import 'package:farm_market_app/shared/widgets/transparent_appbar.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';

class CatalogDrawerAppBar extends StatelessWidget {
  const CatalogDrawerAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TransparentAppBar(
      leading: const CustomBackButton(),
      centerTitle: true,
      title: S.of(context).categories_title,
    );
  }
}
