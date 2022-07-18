part of 'delivery_address_autocomplete_bloc.dart';

@freezed
class DeliveryAddressAutocompleteEvent with _$DeliveryAddressAutocompleteEvent {
  const factory DeliveryAddressAutocompleteEvent.inputChanged(String input) =
      _InputChanged;
}
