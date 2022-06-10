import 'package:bloc/bloc.dart';
import 'package:farm_market_app/data/interfaces/database_interface.dart';
import 'package:farm_market_app/shared/models/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_event.dart';
part 'create_order_state.dart';
part 'create_order_bloc.freezed.dart';

class CreateOrderBloc extends Bloc<CreateOrderEvent, CreateOrderState> {
  CreateOrderBloc({required this.database}) : super(const _Initial()) {
    on<_CreateOrder>(_createOrder);
  }

  final IDatabase database;

  void _createOrder(_CreateOrder event, Emitter<CreateOrderState> emit) async {
    emit(const CreateOrderState.proccessing());
    try {
      await database.setNewOrder(event.order);
      emit(const CreateOrderState.success());
    } on Object catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(const CreateOrderState.error());
    }
  }
}
