import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/shared/blocs/add_to_cart_bloc/add_to_cart_bloc.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:farm_market_app/shared/widgets/item_parts/item_category_row.dart';
import 'package:farm_market_app/shared/widgets/item_parts/item_image_widget.dart';
import 'package:farm_market_app/shared/widgets/item_parts/item_price_text_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/router/router.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartItemListTile extends StatelessWidget {
  const CartItemListTile({
    required this.item,
    required this.inCartItem,
    required this.category,
    Key? key,
  }) : super(key: key);

  final ItemModel item;
  final ItemInOrderModel inCartItem;
  final CategoryModel? category;

  static const _deleteIcon = 'assets/icons/delete.svg';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
                    onTap: () => _onTilePressed(context, item, category),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name ?? S.of(context).no_name,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.catalogCategoryStyle,
                        ),
                        const SizedBox(height: 5),
                        CategoryRow(
                          category: category,
                          fontSize: 14,
                          iconSize: 20,
                        ),
                        Text(
                          '${inCartItem.selectedPrice.capacity} ${inCartItem.selectedPrice.capacityType}, ${inCartItem.count} шт.',
                          style: textTheme.categoryTextStyle,
                        ),
                        const SizedBox(height: 5),
                        ItemPriceTextWidget(
                          price:
                              inCartItem.selectedPrice.price * inCartItem.count,
                          fontSize: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _onDeleteItemButtonPressed(context),
                  child: SvgPicture.asset(
                    _deleteIcon,
                    height: kAppBarIconSize,
                    width: kAppBarIconSize,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onTilePressed(
    BuildContext context,
    ItemModel item,
    CategoryModel? category,
  ) {
    context.router.push(ItemOverviewRoute(item: item, itemCategory: category));
  }

  void _onDeleteItemButtonPressed(BuildContext context) {
    context.read<AddToCartBloc>().add(AddToCartEvent.deleteItem(inCartItem));
  }
}
