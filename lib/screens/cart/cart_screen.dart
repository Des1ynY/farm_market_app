import 'package:farm_market_app/data/implementations/firebase_database.dart';
import 'package:farm_market_app/screens/cart/blocs/cart_item_tile_bloc/cart_item_tile_bloc.dart';
import 'package:farm_market_app/screens/cart/widgets/cart_appbar_widget.dart';
import 'package:farm_market_app/screens/cart/widgets/cart_items_list/cart_items_list_view.dart';
import 'package:farm_market_app/screens/cart/widgets/cart_overall_price/cart_overall_price_widget.dart';
import 'package:farm_market_app/shared/blocs/cart_bloc/cart_bloc.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:farm_market_app/shared/widgets/background_gradient_widget.dart';
import 'package:farm_market_app/shared/widgets/error_widget.dart';
import 'package:farm_market_app/shared/widgets/loading_indicator_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartItemTileBloc(database: FirebaseDatabase()),
      child: Scaffold(
        body: BackgroundGradient(
          child: Column(
            children: [
              const CartAppBarWidget(),
              Expanded(
                child: BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const LoadingIndicator(),
                      error: () => Padding(
                        padding: kPageDefaultPadding,
                        child: CustomErrorWidget(
                          errorText: S.of(context).default_error_text,
                          onRefreshButtonPressed: () =>
                              _onRefreshButtonPressed(context),
                        ),
                      ),
                      loaded: (items, city) {
                        _updateItems(items, context);
                        return items.isNotEmpty
                            ? Column(
                                children: [
                                  const Expanded(
                                    child: CartItemsListView(),
                                  ),
                                  CartOverallPriceWidget(
                                    items: items.values.toList(),
                                    cityData: city,
                                  )
                                ],
                              )
                            : Center(
                                child: Text(S.of(context).cart_no_items),
                              );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _updateItems(Map<String, ItemInOrderModel> data, BuildContext context) {
    final items = data.values.toList();
    context
        .read<CartItemTileBloc>()
        .add(CartItemTileEvent.loadItems(items: items));
  }

  void _onRefreshButtonPressed(BuildContext context) {
    context.read<CartBloc>().add(const CartEvent.refresh());
  }
}
