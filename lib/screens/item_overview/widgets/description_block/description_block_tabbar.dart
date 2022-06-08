import 'package:farm_market_app/screens/item_overview/blocs/item_bloc/item_bloc.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DescriptionBlockTabBar extends StatelessWidget {
  const DescriptionBlockTabBar({
    required this.tabController,
    required this.hasComposition,
    required this.hasDescription,
    Key? key,
  }) : super(key: key);

  final TabController tabController;
  final bool hasDescription;
  final bool hasComposition;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      onTap: (index) => _onPressed(index, context),
      indicatorColor: ColorsTheme.buttonDefaultColor,
      labelColor: ColorsTheme.buttonDefaultColor,
      labelStyle: const TextStyle(
        color: ColorsTheme.buttonDefaultColor,
        inherit: true,
      ),
      unselectedLabelColor: ColorsTheme.textPassiveColor,
      unselectedLabelStyle: const TextStyle(
        color: ColorsTheme.textPassiveColor,
        inherit: true,
      ),
      tabs: [
        if (hasDescription) Tab(text: S.of(context).item_description),
        if (hasComposition) Tab(text: S.of(context).item_composition),
      ],
    );
  }

  void _onPressed(int tabIndex, BuildContext context) {
    context.read<ItemBloc>().add(ItemEvent.tabChanged(tabIndex));
  }
}
