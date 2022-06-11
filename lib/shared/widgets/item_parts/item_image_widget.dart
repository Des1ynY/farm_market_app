import 'package:cached_network_image/cached_network_image.dart';
import 'package:farm_market_app/shared/widgets/loading_indicator_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';

class ItemImageWidget extends StatelessWidget {
  const ItemImageWidget({
    required this.imageUrl,
    this.borderRadius,
    this.height,
    this.width,
    this.fit,
    Key? key,
  }) : super(key: key);

  final String imageUrl;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: height,
        width: width,
        fit: fit ?? BoxFit.cover,
        errorWidget: (_, __, ___) => Center(
          child: Text(S.of(context).image_error_text),
        ),
        progressIndicatorBuilder: (_, __, ___) => const LoadingIndicator(),
      ),
    );
  }
}
