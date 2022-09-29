// import 'package:farm_market_app/screens/create_order/blocs/delivery_address_autocomplete_bloc/delivery_address_autocomplete_bloc.dart';
// import 'package:farm_market_app/screens/create_order/widgets/address_autocomplete/address_autocomplete_list.dart';
import 'package:farm_market_app/screens/create_order/widgets/form_fields/create_order_form_field.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class DeliveryAddressField extends StatelessWidget {
  const DeliveryAddressField({
    required this.controller,
    required this.focusNode,
    required this.nextField,
    // required this.fieldKey,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode nextField;

  @override
  Widget build(BuildContext context) {
    return CreateOrderFormField(
      label: '${S.of(context).enter_address}*',
      controller: controller,
      focusNode: focusNode,
      keyboardType: TextInputType.streetAddress,
      validator: (value) => _validator(value, context),
      onFieldSubmitted: (value) => _onFieldSubmitted(value, context),
    );
  }

  String? _validator(String? value, BuildContext context) {
    if (value == null) return S.of(context).input_error_text;
    final editedValue = value.trim();

    return editedValue.isEmpty ? S.of(context).input_error_text : null;
  }

  void _onFieldSubmitted(String? value, BuildContext context) {
    FocusScope.of(context).requestFocus(nextField);
  }
}

// class DeliveryAddressField extends StatefulWidget {
//   const DeliveryAddressField({
//     required this.controller,
//     required this.focusNode,
//     required this.nextField,
//     // required this.fieldKey,
//     Key? key,
//   }) : super(key: key);

//   final TextEditingController controller;
//   final FocusNode focusNode;
//   final FocusNode nextField;
//   //final GlobalKey<FormFieldState> fieldKey;

//   @override
//   State<DeliveryAddressField> createState() => _DeliveryAddressFieldState();
// }

// class _DeliveryAddressFieldState extends State<DeliveryAddressField> {
//   bool isEditing = false;
//   bool isSelectedAddress = false;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CreateOrderFormField(
//           //key: widget.fieldKey,
//           label: '${S.of(context).enter_address}*',
//           controller: widget.controller,
//           focusNode: widget.focusNode,
//           onTap: _onTap,
//           onChanged: _onChange,
//           validator: _validator,
//           onEditingComplete: _onEditingComplete,
//           onFieldSubmitted: _onFieldSubmitted,
//         ),
//         if (isEditing)
//           AddressAutocompleteList(onLocationSelected: _onLocationSelected),
//       ],
//     );
//   }

//   void _onLocationSelected() {
//     setState(() {
//       isSelectedAddress = true;
//       isEditing = false;
//     });

//     //widget.fieldKey.currentState?.validate();

//     FocusScope.of(context).requestFocus(widget.nextField);
//   }

//   void _onTap() {
//     setState(() => isEditing = true);
//   }

//   void _onChange(String? input) {
//     assert(input != null);

//     setState(() {
//       isSelectedAddress = false;
//       isEditing = true;
//     });

//     context
//         .read<DeliveryAddressAutocompleteBloc>()
//         .add(DeliveryAddressAutocompleteEvent.inputChanged(input!.trim()));
//   }

//   String? _validator(String? value) {
//     if (!isSelectedAddress) {
//       return S.of(context).no_location_selected_error_text;
//     }
//     if (value == null || value.isEmpty) return S.of(context).input_error_text;

//     final editedValue = value.trim();
//     return editedValue.isEmpty ? S.of(context).input_error_text : null;
//   }

//   void _onEditingComplete() {
//     setState(() => isEditing = false);

//     //widget.fieldKey.currentState?.validate();
//   }

//   void _onFieldSubmitted(String? value) {
//     _onEditingComplete();

//     FocusScope.of(context).requestFocus(widget.nextField);
//   }
// }
