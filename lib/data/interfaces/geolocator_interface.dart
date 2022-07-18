import 'package:farm_market_app/shared/models/location_model.dart';

abstract class IGeolocator {
  Future<List<LocationModel>> autocompleteLocation(String input);
}
