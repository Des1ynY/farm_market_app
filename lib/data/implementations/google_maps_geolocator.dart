import 'package:dio/dio.dart';
import 'package:farm_market_app/data/app_config_repository.dart';
import 'package:farm_market_app/data/interfaces/geolocator_interface.dart';
import 'package:farm_market_app/shared/models/city_model.dart';
import 'package:farm_market_app/shared/models/location_model.dart';

class GoogleMapsLocator extends IGeolocator {
  GoogleMapsLocator() {
    _initData();
  }

  late final CityModel? _selectedCity;
  late final String _googleApiKey;

  final _dio = Dio();

  void _initData() async {
    _googleApiKey = AppConfig.googleApiKey;
    if (await AppConfig.cityIsSet) {
      _selectedCity = await AppConfig.getCity();
    }
  }

  @override
  Future<List<LocationModel>> autocompleteLocation(String input) async {
    try {
      final response = await _dio.get(
        'https://maps.googleapis.com/maps/api/place/autocomplete/json',
        queryParameters: {
          'input': input,
          'language': 'ru',
          'types': 'route',
          'components': 'country:ru',
          'key': _googleApiKey,
          if (_selectedCity != null)
            'location':
                '${_selectedCity!.latitude},${_selectedCity!.longitude}',
        },
      );
      final body = response.data as Map<String, dynamic>;

      if (body['status'] != 'OK') throw Exception('Request exception');

      final predictions = body['predictions'] as List;

      final locations = predictions
          .map((e) => LocationModel.fromJson(e as Map<String, dynamic>));

      return locations.toList();
    } on Object {
      rethrow;
    }
  }
}
