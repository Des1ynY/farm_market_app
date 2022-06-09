import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:farm_market_app/data/implementations/firebase_database.dart';
import 'package:farm_market_app/screens/catalog/blocs/item_tile_bloc/item_tile_bloc.dart';
import 'package:farm_market_app/shared/widgets/item_category_row.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/router/router.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemTile extends StatefulWidget {
  const ItemTile({required this.item, this.selectedCategory, Key? key})
      : super(key: key);

  final ItemModel item;
  final CategoryModel? selectedCategory;

  @override
  State<ItemTile> createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  late CategoryModel? _itemCategory;

  @override
  void initState() {
    super.initState();
    _itemCategory = widget.selectedCategory;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const paddings = 65;

    return GestureDetector(
      onTap: () => _onPressed(context),
      child: Container(
        width: (MediaQuery.of(context).size.width - paddings) / 2,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(19),
          boxShadow: const [
            BoxShadow(color: ColorsTheme.itemTileShadowColor),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: CachedNetworkImage(
                imageUrl: widget.item.images?.first ?? '',
                height: 115,
                fit: BoxFit.fitWidth,
                errorWidget: (context, error, object) {
                  return Center(
                    child: Text(S.of(context).no_image_available),
                  );
                },
              ),
            ),
            const SizedBox(height: 5),
            if (widget.item.name != null)
              Text(
                widget.item.name!,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: textTheme.catalogCategoryStyle,
              ),
            _itemCategory != null
                ? CategoryRow(category: _itemCategory)
                : BlocProvider(
                    create: (context) => ItemTileBloc(
                      database: FirebaseDatabase(),
                    )..add(ItemTileEvent.started(widget.item)),
                    child: BlocConsumer<ItemTileBloc, ItemTileState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () => null,
                          loaded: (category) =>
                              setState(() => _itemCategory = category),
                        );
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const SizedBox(height: 20),
                          loaded: (category) => CategoryRow(category: category),
                        );
                      },
                    ),
                  ),
            Container(
              height: 25,
              width: 80,
              decoration: BoxDecoration(
                color: ColorsTheme.buttonDefaultColor,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Center(
                child: Text(
                  S.of(context).item_tile_more,
                  style:
                      textTheme.defaultButtonTextStyle.copyWith(fontSize: 11),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onPressed(BuildContext context) {
    context.router.push(ItemOverviewRoute(
      item: widget.item,
      itemCategory: _itemCategory,
    ));
  }
}
