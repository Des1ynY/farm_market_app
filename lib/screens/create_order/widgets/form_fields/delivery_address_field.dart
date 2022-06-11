import 'package:address_search_field/address_search_field.dart';
import 'package:farm_market_app/screens/create_order/widgets/form_fields/create_order_form_field.dart';
import 'package:farm_market_app/shared/models/city_model.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';

class DeliveryAddressField extends StatefulWidget {
  const DeliveryAddressField({
    required this.controller,
    required this.cityData,
    required this.focusNode,
    required this.nextField,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final CityModel cityData;
  final FocusNode focusNode;
  final FocusNode nextField;

  @override
  State<DeliveryAddressField> createState() => _DeliveryAddressFieldState();
}

class _DeliveryAddressFieldState extends State<DeliveryAddressField> {
  late final GeoMethods geoMethods;

  // TODO: replace this to real api key
  static const _googleApiKey = '';

  @override
  void initState() {
    super.initState();
    geoMethods = GeoMethods(
      googleApiKey: _googleApiKey,
      language: 'ru',
      countryCode: 'ru',
      country: 'Russia',
      city: widget.cityData.name,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CreateOrderFormField(
      label: '${S.of(context).enter_address}*',
      controller: widget.controller,
      focusNode: widget.focusNode,
      // onTap: () => _onTap(context),
      validator: (value) => _validator(value, context),
      onFieldSubmitted: (value) => _onFieldSubmitted(value, context),
    );
  }

  String? _validator(String? value, BuildContext context) {
    if (value == null || value.isEmpty) return S.of(context).input_error_text;
    final editedValue = value.trim();

    return editedValue.isEmpty ? S.of(context).input_error_text : null;
  }

  void _onFieldSubmitted(String? value, BuildContext context) {
    FocusScope.of(context).requestFocus(widget.nextField);
  }

  void _onTap(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        return AddressSearchDialog(
          geoMethods: geoMethods,
          controller: TextEditingController(),
          onDone: (address) =>
              widget.controller.text = address.coords.toString(),
        );
      },
    );
  }
}
