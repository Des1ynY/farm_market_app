import 'package:farm_market_app/screens/create_order/widgets/form_fields/delivery_address_field.dart';
import 'package:farm_market_app/shared/models/location_model.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';

class AutocompleteLocationTile extends StatelessWidget {
  const AutocompleteLocationTile({
    required this.location,
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final LocationModel location;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onTap(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Text(buttonText),
      ),
    );
  }

  void _onTap(BuildContext context) {
    var widget = context.findAncestorWidgetOfExactType<DeliveryAddressField>()!;
    widget.controller.text = buttonText;
    onSelected();
  }

  String get buttonText {
    if (location.structuredFormatting == null) {
      return S.current.invalid_location_name_error_text;
    }
    final firstPart = location.structuredFormatting!.mainText;
    final secondPart = location.structuredFormatting!.secondaryText != null
        ? ', ${location.structuredFormatting!.secondaryText!}'
        : '';

    return firstPart! + secondPart;
  }
}
