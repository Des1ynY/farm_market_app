import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class CreateOrderFormField extends StatelessWidget {
  const CreateOrderFormField({
    required this.label,
    required this.controller,
    required this.focusNode,
    this.keyboardType,
    this.textCapitalization,
    this.validator,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.onTap,
    this.onChanged,
    this.maxLines,
    this.minLines,
    Key? key,
  }) : super(key: key);

  final String label;
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final int? maxLines;
  final int? minLines;
  final String? Function(String?)? validator;
  final void Function(String?)? onFieldSubmitted;
  final VoidCallback? onEditingComplete;
  final VoidCallback? onTap;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.labelTextStyle),
        const SizedBox(height: 2),
        TextFormField(
          key: key,
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 3,
              horizontal: 10,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(kDefaultButtonBorderRadius),
              borderSide: const BorderSide(
                color: ColorsTheme.stokeColor,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(kDefaultButtonBorderRadius),
              borderSide: const BorderSide(
                color: ColorsTheme.buttonDefaultColor,
                width: 1.5,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(kDefaultButtonBorderRadius),
              borderSide: const BorderSide(
                color: ColorsTheme.badgeColor,
                width: 1,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(kDefaultButtonBorderRadius),
              borderSide: const BorderSide(
                color: ColorsTheme.badgeColor,
                width: 1,
              ),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
          cursorColor: ColorsTheme.buttonDefaultColor,
          cursorWidth: 1.5,
          minLines: minLines,
          maxLines: maxLines,
          keyboardType: keyboardType ?? TextInputType.text,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          onTap: onTap,
          onChanged: onChanged,
          validator: validator,
          onFieldSubmitted: onFieldSubmitted,
          onEditingComplete: onEditingComplete,
        ),
      ],
    );
  }
}
