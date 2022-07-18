import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:farm_market_app/data/interfaces/geolocator_interface.dart';
import 'package:farm_market_app/shared/models/location_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_address_autocomplete_event.dart';
part 'delivery_address_autocomplete_state.dart';
part 'delivery_address_autocomplete_bloc.freezed.dart';

class DeliveryAddressAutocompleteBloc extends Bloc<
    DeliveryAddressAutocompleteEvent, DeliveryAddressAutocompleteState> {
  DeliveryAddressAutocompleteBloc(this.geolocator) : super(const _Initial()) {
    on<_InputChanged>(_inputChanged, transformer: restartable());
  }

  final IGeolocator geolocator;

  void _inputChanged(
    _InputChanged event,
    Emitter<DeliveryAddressAutocompleteState> emit,
  ) async {
    try {
      if (event.input.isEmpty) return emit(const _Initial());

      final locations = await geolocator.autocompleteLocation(event.input);
      emit(DeliveryAddressAutocompleteState.loaded(locations));
    } on Object catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(const DeliveryAddressAutocompleteState.error());
    }
  }
}
