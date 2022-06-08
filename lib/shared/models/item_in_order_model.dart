// ignore_for_file: invalid_annotation_target
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:farm_market_app/shared/models/price_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_in_order_model.freezed.dart';
part 'item_in_order_model.g.dart';

@freezed
class ItemInOrderModel with _$ItemInOrderModel {
  const factory ItemInOrderModel(
    @JsonKey(name: 'item_id') String? itemId,
    @JsonKey(name: 'selected_price') PriceModel? selectedPrice,
    int? count,
  ) = _ItemInOrder;

  factory ItemInOrderModel.fromJson(Map<String, dynamic> json) =>
      _$ItemInOrderModelFromJson(json);
}
