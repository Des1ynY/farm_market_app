import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/screens/catalog/blocs/items_bloc/items_bloc.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestoreFiltersButton extends StatelessWidget {
  const RestoreFiltersButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: MaterialButton(
        onPressed: () => _onPressed(context),
        height: kBackButtonSize,
        minWidth: 150,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDefaultButtonBorderRadius),
        ),
        color: ColorsTheme.buttonDefaultColor,
        elevation: kDefaultElevation,
        highlightElevation: kDefaultElevation,
        child: Text(
          S.of(context).restore_filters_button_text,
          style: Theme.of(context).textTheme.defaultButtonTextStyle,
        ),
      ),
    );
  }

  void _onPressed(BuildContext context) {
    context
        .read<ItemsBloc>()
        .add(const ItemsEvent.loadData(selectedCategory: []));
    context.router.pop();
  }
}
