import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/data/implementations/firebase_database.dart';
import 'package:farm_market_app/screens/cart/blocs/cart_item_tile_bloc/cart_item_tile_bloc.dart';
import 'package:farm_market_app/shared/blocs/add_to_cart_bloc/add_to_cart_bloc.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:farm_market_app/shared/widgets/item_parts/item_category_row.dart';
import 'package:farm_market_app/shared/widgets/item_parts/item_image_widget.dart';
import 'package:farm_market_app/shared/widgets/item_parts/item_price_text_widget.dart';
import 'package:farm_market_app/shared/widgets/loading_indicator_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/router/router.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemListTile extends StatelessWidget {
  const CartItemListTile({required this.inCartItem, Key? key})
      : super(key: key);

  final ItemInOrderModel inCartItem;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (contet) => CartItemTileBloc(database: FirebaseDatabase())
        ..add(CartItemTileEvent.started(itemId: inCartItem.itemId)),
      child: BlocBuilder<CartItemTileBloc, CartItemTileState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => SizedBox(
              height: 100,
              child: LoadingIndicator(),
            ),
            error: () => Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(
                S.of(context).item_error_text,
                textAlign: TextAlign.center,
              ),
            ),
            loaded: (item, category) {
              return Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    if (item.images != null || item.images!.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: ItemImageWidget(
                          imageUrl: item.images!.first,
                          borderRadius: BorderRadius.circular(9),
                          height: 90,
                          width: 100,
                        ),
                      ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => _onTilePressed(
                                context,
                                item,
                                category!,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.name ?? S.of(context).no_name,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .catalogCategoryStyle,
                                  ),
                                  const SizedBox(height: 5),
                                  CategoryRow(
                                    category: category,
                                    fontSize: 14,
                                    iconSize: 20,
                                  ),
                                  Text(
                                    '${inCartItem.selectedPrice.capacity} ${inCartItem.selectedPrice.capacityType}, ${inCartItem.count} шт.',
                                    style: Theme.of(context)
                                        .textTheme
                                        .categoryTextStyle,
                                  ),
                                  const SizedBox(height: 5),
                                  ItemPriceTextWidget(
                                    price: inCartItem.selectedPrice.price *
                                        inCartItem.count,
                                    fontSize: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => _onDeleteItemButtonPressed(context),
                            child: const Icon(
                              Icons.delete,
                              color: ColorsTheme.textDefaultColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _onTilePressed(
      BuildContext context, ItemModel item, CategoryModel category) {
    context.router.push(ItemOverviewRoute(item: item, itemCategory: category));
  }

  void _onDeleteItemButtonPressed(BuildContext context) {
    context.read<AddToCartBloc>().add(AddToCartEvent.deleteItem(inCartItem));
  }
}
