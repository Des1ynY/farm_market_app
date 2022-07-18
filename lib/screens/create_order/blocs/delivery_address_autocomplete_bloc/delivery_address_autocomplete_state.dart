part of 'delivery_address_autocomplete_bloc.dart';

@freezed
class DeliveryAddressAutocompleteState with _$DeliveryAddressAutocompleteState {
  const factory DeliveryAddressAutocompleteState.initial() = _Initial;

  const factory DeliveryAddressAutocompleteState.loading() = _Loading;

  const factory DeliveryAddressAutocompleteState.loaded(
    List<LocationModel> locations,
  ) = _Loaded;

  const factory DeliveryAddressAutocompleteState.error() = _Error;
}
