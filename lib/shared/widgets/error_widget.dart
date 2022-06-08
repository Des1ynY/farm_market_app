import 'package:farm_market_app/shared/widgets/buttons/button_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    this.errorText,
    this.onRefreshButtonPressed,
    Key? key,
  }) : super(key: key);

  final String? errorText;
  final VoidCallback? onRefreshButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          errorText ?? S.of(context).default_error_text,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 40),
        Button(
          label: S.of(context).refresh_button_text,
          onPressed: onRefreshButtonPressed,
        ),
      ],
    );
  }
}
