import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class TransparentAppBar extends StatelessWidget {
  const TransparentAppBar({
    this.leading,
    this.title,
    this.action,
    this.centerTitle = false,
    Key? key,
  }) : super(key: key);

  final Widget? leading;
  final Widget? action;
  final String? title;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    final appBarHeight = AppBar().preferredSize.height;

    return SafeArea(
      child: Container(
        height: appBarHeight,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Container(
              width: kBackButtonSize,
              height: kBackButtonSize,
              alignment: Alignment.centerLeft,
              child: leading,
            ),
            Expanded(
              child: Container(
                alignment:
                    centerTitle ? Alignment.center : Alignment.centerLeft,
                child: Text(
                  title ?? '',
                  style: Theme.of(context).textTheme.appBarTitleStyle,
                ),
              ),
            ),
            Container(
              width: kBackButtonSize,
              height: kBackButtonSize,
              alignment: Alignment.centerRight,
              child: action,
            ),
          ],
        ),
      ),
    );
  }
}
