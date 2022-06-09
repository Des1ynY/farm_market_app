import 'package:equatable/equatable.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:farm_market_app/shared/models/price_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_in_order_model.g.dart';

@JsonSerializable()
class ItemInOrderModel extends Equatable {
  const ItemInOrderModel(this.itemId, this.selectedPrice, this.count);

  @JsonKey(name: 'item_id')
  final String itemId;
  @JsonKey(name: 'selected_price')
  final PriceModel selectedPrice;
  final int count;

  factory ItemInOrderModel.fromJson(Map<String, dynamic> json) =>
      _$ItemInOrderModelFromJson(json);

  factory ItemInOrderModel.fromItemPrice({
    required ItemModel item,
    required PriceModel selectedPrice,
  }) {
    return ItemInOrderModel(item.uid ?? item.name ?? 'no_id', selectedPrice, 0);
  }

  ItemInOrderModel increaseCount() {
    return ItemInOrderModel(itemId, selectedPrice, count + 1);
  }

  ItemInOrderModel decreaseCount() {
    assert(count >= 0);
    return ItemInOrderModel(itemId, selectedPrice, count - 1);
  }

  String toMapKey() => '$itemId-$selectedPrice';

  Map<String, dynamic> toJson() => _$ItemInOrderModelToJson(this);

  @override
  List<Object?> get props => [itemId, selectedPrice, count];
}
