import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class TransparentAppBar extends StatelessWidget {
  const TransparentAppBar({
    this.leading,
    this.title,
    this.action,
    this.centerTitle,
    Key? key,
  }) : super(key: key);

  final Widget? leading;
  final Widget? action;
  final String? title;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: centerTitle,
      backgroundColor: Colors.transparent,
      leading: leading,
      title: Text(
        title ?? '',
        style: Theme.of(context).textTheme.appBarTitleStyle,
      ),
      actions: [
        if (action != null) action!,
      ],
    );
  }
}
