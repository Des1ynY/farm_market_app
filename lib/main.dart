import 'package:farm_market_app/app.dart';
import 'package:farm_market_app/utils/bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final prefs = await SharedPreferences.getInstance();

  BlocOverrides.runZoned(
    () => runApp(FarmMarketApp(prefs: prefs)),
    blocObserver: AppBlocObserver(),
  );
}
