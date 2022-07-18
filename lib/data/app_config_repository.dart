import 'dart:convert';

import 'package:farm_market_app/shared/models/city_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppConfig {
  const AppConfig._();

  static const _configStorage = FlutterSecureStorage();
  static const _isFirstLaunchKey = 'is_first_launch';
  static const _cityDataKey = 'city_data';

  static Future<bool> get isFirstLaunch async {
    final data = await _configStorage.read(key: _isFirstLaunchKey) ?? 'true';
    return data == 'true';
  }

  static Future<bool> get cityIsSet async {
    final data = await _configStorage.read(key: _cityDataKey) ?? 'null';
    return data != 'null';
  }

  static Future<void> appWasLaunched() async {
    await _configStorage.write(key: _isFirstLaunchKey, value: 'false');
  }

  static Future<CityModel> getCity() async {
    final data = await _configStorage.read(key: _cityDataKey);
    if (data == null) throw Exception('No city is set');
    try {
      return CityModel.fromJson(jsonDecode(data));
    } on Object {
      rethrow;
    }
  }

  static Future<void> setCity(CityModel city) async {
    await _configStorage.write(
      key: _cityDataKey,
      value: jsonEncode(city.toJson()),
    );
  }

  static Future<void> deleteCityData() async {
    await _configStorage.delete(key: _cityDataKey);
  }

  static String get googleApiKey {
    assert(dotenv.isInitialized);
    assert(dotenv.isEveryDefined(['GOOGLE_API_KEY']));

    return dotenv.get('GOOGLE_API_KEY');
  }
}
