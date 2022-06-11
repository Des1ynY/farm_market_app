import 'package:farm_market_app/screens/catalog/blocs/items_bloc/items_bloc.dart';
import 'package:farm_market_app/screens/catalog/widgets/items_list/item_tile_widget.dart';
import 'package:farm_market_app/shared/widgets/error_widget.dart';
import 'package:farm_market_app/shared/widgets/loading_indicator_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogItemsListView extends StatelessWidget {
  const CatalogItemsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<ItemsBloc, ItemsState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const LoadingIndicator(),
          error: () => CustomErrorWidget(
            onRefreshButtonPressed: () => _onRefresh(context),
          ),
          loaded: (items, selectedCategory) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  if (selectedCategory != null)
                    Text(
                      selectedCategory.name ?? S.of(context).no_name,
                      style: textTheme.catalogCategoryStyle,
                    ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '${S.of(context).items_count}: ${items.length}',
                      textAlign: TextAlign.right,
                      style: textTheme.catalogItemsCountStyle,
                    ),
                  ),
                  const SizedBox(height: 20),
                  items.isEmpty
                      ? Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 40,
                            horizontal: 20,
                          ),
                          child: Text(S.of(context).no_items_available),
                        )
                      : Wrap(
                          spacing: 15,
                          runSpacing: 16,
                          children:
                              items.map((e) => ItemTile(item: e)).toList(),
                        ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _onRefresh(BuildContext context) {
    context.read<ItemsBloc>().add(const ItemsEvent.refresh());
  }
}
