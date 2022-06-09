import 'package:farm_market_app/screens/cart/widgets/cart_appbar_widget.dart';
import 'package:farm_market_app/shared/widgets/background_gradient_widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGradient(
        child: Column(
          children: const [
            CartAppBarWidget(),
          ],
        ),
      ),
    );
  }
}
