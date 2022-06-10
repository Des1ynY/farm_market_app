// ignore_for_file: invalid_annotation_target
import 'package:farm_market_app/shared/models/item_in_order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel(
    String uid,
    List<ItemInOrderModel> items,
    @JsonKey(name: 'delivery_type') String deliveryType,
    String deliveryCity,
    String deliveryAddress,
    String contactPhone,
    String? comment,
    double price,
    @JsonKey(name: 'creation_date') String creationDate,
  ) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
