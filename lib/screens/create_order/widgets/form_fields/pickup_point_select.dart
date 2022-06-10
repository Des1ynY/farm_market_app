import 'package:farm_market_app/shared/models/pickup_model.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class PickupPointSelectWidget extends StatefulWidget {
  const PickupPointSelectWidget({
    required this.addresses,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final List<PickupModel> addresses;
  final TextEditingController controller;

  @override
  State<PickupPointSelectWidget> createState() =>
      _PickupPointSelectWidgetState();
}

class _PickupPointSelectWidgetState extends State<PickupPointSelectWidget> {
  String? _selectedAddress;

  @override
  void initState() {
    super.initState();
    _selectedAddress = widget.addresses.first.address;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...widget.addresses.map(
          (e) => RadioListTile(
            value: e.address,
            groupValue: _selectedAddress,
            onChanged: _onRadioButtonPressed,
            title: Text(
              e.address,
              style: Theme.of(context).textTheme.labelTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  void _onRadioButtonPressed(String? value) {
    widget.controller.text = value ?? '';
    setState(() => _selectedAddress = value);
  }
}
