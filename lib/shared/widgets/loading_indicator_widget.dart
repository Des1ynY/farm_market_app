import 'package:farm_market_app/utils/theme/colors_theme.dart';
import 'package:flutter/material.dart';

enum LoadingIndicatorType {
  defaultIndicator,
  pullToRefreshIndicator,
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator._({required this.type, Key? key}) : super(key: key);

  final LoadingIndicatorType type;

  factory LoadingIndicator() =>
      const LoadingIndicator._(type: LoadingIndicatorType.defaultIndicator);

  factory LoadingIndicator.pullToRefresh() => const LoadingIndicator._(
      type: LoadingIndicatorType.pullToRefreshIndicator);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case LoadingIndicatorType.defaultIndicator:
        return const _DefaultLoadingIndicator();
      case LoadingIndicatorType.pullToRefreshIndicator:
        return const _PullToRefreshLoadingIndicator();
    }
  }
}

class _DefaultLoadingIndicator extends StatelessWidget {
  const _DefaultLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: ColorsTheme.buttonDefaultColor,
      ),
    );
  }
}

class _PullToRefreshLoadingIndicator extends StatelessWidget {
  const _PullToRefreshLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: const _DefaultLoadingIndicator(),
    );
  }
}
