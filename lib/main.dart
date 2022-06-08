import 'package:farm_market_app/app.dart';
import 'package:farm_market_app/utils/bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  BlocOverrides.runZoned(
    () => runApp(const FarmMarketApp()),
    blocObserver: AppBlocObserver(),
  );
}
