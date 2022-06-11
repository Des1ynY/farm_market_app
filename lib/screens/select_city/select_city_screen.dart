import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/screens/select_city/blocs/select_city_bloc/select_city_bloc.dart';
import 'package:farm_market_app/shared/models/city_model.dart';
import 'package:farm_market_app/shared/widgets/background_gradient_widget.dart';
import 'package:farm_market_app/shared/widgets/buttons/default_button_widget.dart';
import 'package:farm_market_app/shared/widgets/loading_indicator_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/router/router.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectCityScreen extends StatefulWidget {
  const SelectCityScreen({Key? key}) : super(key: key);

  @override
  State<SelectCityScreen> createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends State<SelectCityScreen> {
  static const _assetImagePath = 'assets/img/vladimir_img_no_back.png';

  late final String remoteCitiesConfig;

  @override
  void initState() {
    super.initState();
    final remoteConfig = FirebaseRemoteConfig.instance;
    remoteCitiesConfig = remoteConfig.getValue('vladimir').asString();

    //remoteCitiesConfig = remoteConfig.getString('vladimir');
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (context) => SelectCityBloc(),
      child: Scaffold(
        body: BackgroundGradient(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 40),
                  Image.asset(
                    _assetImagePath,
                    fit: BoxFit.fitWidth,
                  ),
                  Text(
                    S.of(context).select_city_text,
                    textAlign: TextAlign.center,
                    style: textTheme.onboardingTextStyle,
                  ),
                  BlocConsumer<SelectCityBloc, SelectCityState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        success: () => _onFinished(context),
                        error: () => ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(S.of(context).task_error_text),
                            duration: const Duration(seconds: 1),
                          ),
                        ),
                      );
                    },
                    builder: (context, state) {
                      final isLoading = state.maybeWhen(
                        orElse: () => false,
                        processing: () => true,
                      );

                      return DefaultButton(
                        onPressed: isLoading ? null : () => _onPressed(context),
                        child: isLoading
                            ? const LoadingIndicator()
                            : Text(
                                S.of(context).next_button_text,
                                style: textTheme.defaultButtonTextStyle,
                              ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onPressed(BuildContext context) {
    final city = CityModel.fromJson(jsonDecode(remoteCitiesConfig));
    context.read<SelectCityBloc>().add(SelectCityEvent.setCity(city));
  }

  void _onFinished(BuildContext context) {
    context.router.replace(const CatalogRoute());
  }
}
