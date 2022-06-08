import 'package:cached_network_image/cached_network_image.dart';
import 'package:farm_market_app/screens/item_overview/blocs/item_bloc/item_bloc.dart';
import 'package:farm_market_app/shared/widgets/loading_indicator_widget.dart';
import 'package:farm_market_app/utils/theme/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagesListTile extends StatelessWidget {
  const ImagesListTile({required this.imageUrl, Key? key}) : super(key: key);

  final String imageUrl;

  static const _width = 50.0;
  static const _borderRadius = 12.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onPressed(context),
      child: Container(
        width: _width,
        height: _width,
        decoration: BoxDecoration(
          border: Border.all(color: ColorsTheme.stokeColor, width: 1),
          borderRadius: BorderRadius.circular(_borderRadius),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(_borderRadius),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            errorWidget: (context, error, object) => Container(),
            progressIndicatorBuilder: (context, object, progress) =>
                LoadingIndicator(),
          ),
        ),
      ),
    );
  }

  void _onPressed(BuildContext context) {
    context.read<ItemBloc>().add(ItemEvent.imageSelected(imageUrl));
  }
}
