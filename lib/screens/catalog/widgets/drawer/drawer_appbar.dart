import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/screens/catalog/blocs/items_bloc/items_bloc.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogDrawerAppBar extends StatelessWidget {
  const CatalogDrawerAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      leading: const BackButton(color: ColorsTheme.textDefaultColor),
      title: Text(
        S.of(context).categories_title,
        style: Theme.of(context).textTheme.appBarTitleStyle,
      ),
      actions: [
        IconButton(
          onPressed: () => _onResetFilterButtonPressed(context),
          icon: const Icon(Icons.restore, color: ColorsTheme.textDefaultColor),
        )
      ],
    );
  }

  void _onResetFilterButtonPressed(BuildContext context) {
    context.read<ItemsBloc>().add(const ItemsEvent.started());
    context.router.pop();
  }
}
