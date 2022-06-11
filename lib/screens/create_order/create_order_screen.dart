import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/data/app_config_repository.dart';
import 'package:farm_market_app/data/implementations/firebase_database.dart';
import 'package:farm_market_app/screens/create_order/blocs/create_order_bloc/create_order_bloc.dart';
import 'package:farm_market_app/screens/create_order/widgets/create_order_appbar.dart';
import 'package:farm_market_app/screens/create_order/widgets/create_order_button.dart';
import 'package:farm_market_app/screens/create_order/widgets/form_fields/comment_field.dart';
import 'package:farm_market_app/screens/create_order/widgets/form_fields/delivery_address_field.dart';
import 'package:farm_market_app/screens/create_order/widgets/form_fields/phone_field.dart';
import 'package:farm_market_app/screens/create_order/widgets/form_fields/pickup_point_select.dart';
import 'package:farm_market_app/shared/blocs/cart_bloc/cart_bloc.dart';
import 'package:farm_market_app/shared/models/city_model.dart';
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:farm_market_app/shared/models/order_model.dart';
import 'package:farm_market_app/shared/widgets/background_gradient_widget.dart';
import 'package:farm_market_app/shared/widgets/error_widget.dart';
import 'package:farm_market_app/shared/widgets/loading_indicator_widget.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/router/router.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

enum DeliveryType {
  delivery,
  pickup,
}

class CreateOrderScreen extends StatefulWidget {
  const CreateOrderScreen({
    required this.deliveryType,
    Key? key,
  }) : super(key: key);

  final DeliveryType deliveryType;

  @override
  State<CreateOrderScreen> createState() => _CreateOrderScreenState();
}

class _CreateOrderScreenState extends State<CreateOrderScreen> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _addressController,
      _phoneController,
      _commentController;
  late final FocusNode _addressFocus, _phoneFocus, _commentFocus;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _addressController = TextEditingController();
    _phoneController = TextEditingController();
    _commentController = TextEditingController();
    _addressFocus = FocusNode();
    _phoneFocus = FocusNode();
    _commentFocus = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateOrderBloc(database: FirebaseDatabase()),
      child: Scaffold(
        body: BackgroundGradient(
          child: BlocListener<CreateOrderBloc, CreateOrderState>(
            listener: (context, state) {
              state.whenOrNull(
                error: () => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(S.of(context).task_error_text),
                    duration: const Duration(seconds: 1),
                  ),
                ),
                success: () => _onSuccess(context),
              );
            },
            child: Column(
              children: [
                CreateOrderAppbar(deliveryType: widget.deliveryType),
                Expanded(
                  child: BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const LoadingIndicator(),
                        error: () => CustomErrorWidget(
                          errorText: S.of(context).default_error_text,
                          onRefreshButtonPressed: () =>
                              _onRefreshButtonPressed(context),
                        ),
                        loaded: (items, city) {
                          return Column(
                            children: [
                              Expanded(
                                child: Form(
                                  key: _formKey,
                                  child: SingleChildScrollView(
                                    padding: kPageDefaultPadding,
                                    child: Column(
                                      children: [
                                        _isDeliveryType
                                            ? DeliveryAddressField(
                                                controller: _addressController,
                                                cityData: city,
                                                focusNode: _addressFocus,
                                                nextField: _phoneFocus,
                                              )
                                            : PickupPointSelectWidget(
                                                addresses:
                                                    city.pickupAddersses!,
                                                controller: _addressController,
                                              ),
                                        const SizedBox(height: 25),
                                        PhoneField(
                                          controller: _phoneController,
                                          focusNode: _phoneFocus,
                                          nextField: _commentFocus,
                                        ),
                                        const SizedBox(height: 25),
                                        CommentField(
                                          controller: _commentController,
                                          focusNode: _commentFocus,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              CreateOrderButton(
                                onPressed: () => _onFormSubmitted(context),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onFormSubmitted(BuildContext orderBlocContext) {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<CartBloc>().state.whenOrNull(
            loaded: (cartData, cityData) => _createOrder(
              cartData.values.toList(),
              cityData,
              orderBlocContext,
            ),
          );
    }
  }

  void _createOrder(
      List<ItemInOrderModel> items, CityModel city, BuildContext context) {
    final orderId = const Uuid().v4();
    final double overallPrice = items
        .map((e) => e.selectedPrice.price.toDouble() * e.count)
        .fold(city.deliveryPrice?.toDouble() ?? 0.0, (sum, e) => sum + e);

    final order = OrderModel(
      orderId,
      items,
      widget.deliveryType.name,
      city.name,
      _addressController.text.trim(),
      _phoneController.text.trim(),
      _commentController.text.trim(),
      overallPrice,
      DateTime.now().toUtc().toString(),
    );

    context.read<CreateOrderBloc>().add(CreateOrderEvent.createOrder(order));
  }

  void _onSuccess(BuildContext context) async {
    context.read<CartBloc>().add(const CartEvent.clearCart());
    if (!_isDeliveryType) {
      final city = await AppConfig.getCity();
      final pickupPoint = city.pickupAddersses!
          .firstWhere((e) => e.address == _addressController.text);
      context.router.replace(OrderFinishRoute(pickupPoint: pickupPoint));
    } else {
      context.router.replace(OrderFinishRoute(pickupPoint: null));
    }
  }

  void _onRefreshButtonPressed(BuildContext context) {
    context.read<CartBloc>().add(const CartEvent.refresh());
  }

  bool get _isDeliveryType {
    return widget.deliveryType.name == DeliveryType.delivery.name;
  }
}
