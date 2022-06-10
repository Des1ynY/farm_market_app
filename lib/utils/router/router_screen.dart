import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/shared/widgets/background_gradient_widget.dart';
import 'package:flutter/material.dart';

class RouterScreen extends StatefulWidget {
  const RouterScreen({Key? key}) : super(key: key);

  @override
  State<RouterScreen> createState() => _RouterScreenState();
}

class _RouterScreenState extends State<RouterScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      builder: (context, content) => BackgroundGradient(child: content),
    );
  }
}
