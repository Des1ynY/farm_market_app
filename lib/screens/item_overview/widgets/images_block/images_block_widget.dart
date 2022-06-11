import 'package:farm_market_app/screens/item_overview/blocs/item_bloc/item_bloc.dart';
import 'package:farm_market_app/screens/item_overview/widgets/images_block/images_list_view_widget.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:farm_market_app/shared/widgets/item_parts/item_image_widget.dart';
import 'package:farm_market_app/utils/theme/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagesBlockWidget extends StatefulWidget {
  const ImagesBlockWidget({Key? key}) : super(key: key);

  @override
  State<ImagesBlockWidget> createState() => _ImagesBlockWidgetState();
}

class _ImagesBlockWidgetState extends State<ImagesBlockWidget> {
  late final ItemModel _item;

  static const _imageBorderRadius = Radius.circular(20);

  @override
  void initState() {
    super.initState();
    _item = RepositoryProvider.of<ItemModel>(context);
    context.read<ItemModel>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemBloc, ItemState>(
      builder: (context, state) {
        if (state.selectedImage == null) return Container();

        return SizedBox(
          height: 305,
          child: Row(
            children: [
              SizedBox(
                width: 90,
                height: 270,
                child: ItemImagesListView(images: _item.images!),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsTheme.stokeColor,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: _imageBorderRadius,
                      bottomLeft: _imageBorderRadius,
                    ),
                  ),
                  child: ItemImageWidget(
                    imageUrl: state.selectedImage!,
                    borderRadius: const BorderRadius.only(
                      topLeft: _imageBorderRadius,
                      bottomLeft: _imageBorderRadius,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
