import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/shared/widgets/background_gradient_widget.dart';
import 'package:flutter/material.dart';

class RouterScreen extends StatelessWidget {
  const RouterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundGradient(
      child: AutoRouter(
        builder: (context, content) => content,
      ),
    );
  }
}
