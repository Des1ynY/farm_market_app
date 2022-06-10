import 'package:farm_market_app/app.dart';
import 'package:farm_market_app/data/implementations/local_cart.dart';
import 'package:farm_market_app/utils/bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 200),
    minimumFetchInterval: const Duration(minutes: 30),
  ));
  await remoteConfig.fetchAndActivate();
  await remoteConfig.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final cart = LocalCart(prefs: prefs);

  BlocOverrides.runZoned(
    () => runApp(FarmMarketApp(cart: cart)),
    blocObserver: AppBlocObserver(),
  );
}
