import 'package:farm_market_app/screens/cart/blocs/cart_item_tile_bloc/cart_item_tile_bloc.dart';
import 'package:farm_market_app/screens/cart/widgets/cart_items_list/cart_item_list_tile.dart';
import 'package:farm_market_app/shared/widgets/loading_indicator_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemsListView extends StatelessWidget {
  const CartItemsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemTileBloc, CartItemTileState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const LoadingIndicator(),
          error: () => Padding(
            padding: kPageDefaultPadding,
            child: Text(
              S.of(context).item_error_text,
              textAlign: TextAlign.center,
            ),
          ),
          loaded: (data) {
            final items = data.keys.toList();

            return ListView.separated(
              itemCount: items.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final inCartItem = items[index];
                final item = data[inCartItem]!.key;
                final category = data[inCartItem]!.value;

                return CartItemListTile(
                  item: item,
                  inCartItem: inCartItem,
                  category: category,
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 1,
                  thickness: 1,
                  color: ColorsTheme.stokeColor,
                );
              },
            );
          },
        );
      },
    );
  }
}
