import 'package:farm_market_app/screens/create_order/blocs/create_order_bloc/create_order_bloc.dart';
import 'package:farm_market_app/shared/widgets/buttons/default_button_widget.dart';
import 'package:farm_market_app/shared/widgets/loading_indicator_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateOrderButton extends StatelessWidget {
  const CreateOrderButton({required this.onPressed, Key? key})
      : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: kPageDefaultPadding,
      child: BlocBuilder<CreateOrderBloc, CreateOrderState>(
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            orElse: () => false,
            proccessing: () => true,
          );
          return DefaultButton(
            onPressed: isLoading ? null : onPressed,
            child: isLoading
                ? const LoadingIndicator()
                : Text(
                    S.of(context).confirm_order_button_text,
                    style: Theme.of(context).textTheme.defaultButtonTextStyle,
                  ),
          );
        },
      ),
    );
  }
}
