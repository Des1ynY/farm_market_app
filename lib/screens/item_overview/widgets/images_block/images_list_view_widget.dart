import 'package:farm_market_app/screens/item_overview/widgets/images_block/images_list_tile.dart';
import 'package:flutter/material.dart';

class ItemImagesListView extends StatelessWidget {
  const ItemImagesListView({required this.images, Key? key}) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          images.length,
          (i) {
            return Padding(
              padding: i == images.length - 1
                  ? EdgeInsets.zero
                  : const EdgeInsets.only(bottom: 16),
              child: ImagesListTile(imageUrl: images[i]),
            );
          },
        ),
      ),
    );
  }
}
