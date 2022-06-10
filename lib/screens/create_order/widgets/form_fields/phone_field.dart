import 'package:farm_market_app/screens/create_order/widgets/form_fields/create_order_form_field.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({
    required this.controller,
    required this.focusNode,
    required this.nextField,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode nextField;

  @override
  Widget build(BuildContext context) {
    return CreateOrderFormField(
      label: '${S.of(context).enter_phone}*',
      controller: controller,
      focusNode: focusNode,
      keyboardType: TextInputType.phone,
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
    FocusScope.of(context).requestFocus(nextField);
  }
}
