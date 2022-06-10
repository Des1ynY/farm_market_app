import 'package:farm_market_app/screens/create_order/widgets/form_fields/create_order_form_field.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';

class CommentField extends StatelessWidget {
  const CommentField({
    required this.controller,
    required this.focusNode,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return CreateOrderFormField(
      label: S.of(context).enter_comment,
      controller: controller,
      focusNode: focusNode,
      textCapitalization: TextCapitalization.sentences,
    );
  }
}
