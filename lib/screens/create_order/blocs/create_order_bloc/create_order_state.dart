part of 'create_order_bloc.dart';

@freezed
class CreateOrderState with _$CreateOrderState {
  const factory CreateOrderState.initial() = _Initial;

  const factory CreateOrderState.proccessing() = _Proccessing;

  const factory CreateOrderState.success() = _Success;

  const factory CreateOrderState.error() = _Error;
}
