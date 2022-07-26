import 'package:farm_market_app/screens/create_order/blocs/delivery_address_autocomplete_bloc/delivery_address_autocomplete_bloc.dart';
import 'package:farm_market_app/screens/create_order/widgets/address_autocomplete/location_tile.dart';
import 'package:farm_market_app/shared/widgets/loading_indicator_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressAutocompleteList extends StatelessWidget {
  const AddressAutocompleteList({
    required this.onLocationSelected,
    Key? key,
  }) : super(key: key);

  final VoidCallback onLocationSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 25),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: ColorsTheme.stokeColor, width: 1),
        borderRadius: BorderRadius.circular(kDefaultButtonBorderRadius),
      ),
      child: BlocBuilder<DeliveryAddressAutocompleteBloc,
          DeliveryAddressAutocompleteState>(
        builder: (context, state) {
          return state.when(
            initial: () => Text(
              S.of(context).start_enter_text_tip,
              textAlign: TextAlign.center,
            ),
            loading: () => const LoadingIndicator(),
            error: () => Text(
              S.of(context).task_error_text,
              textAlign: TextAlign.center,
            ),
            loaded: (locations) {
              if (locations.isEmpty) {
                return Text(
                  S.of(context).no_locations_error_text,
                  textAlign: TextAlign.center,
                );
              }
              return ConstrainedBox(
                constraints: const BoxConstraints(
                  minHeight: 100,
                  maxHeight: 250,
                ),
                child: ListView(
                  children: locations
                      .map(
                        (location) => AutocompleteLocationTile(
                          location: location,
                          onSelected: onLocationSelected,
                        ),
                      )
                      .toList(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
