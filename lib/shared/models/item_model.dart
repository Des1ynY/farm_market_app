// ignore_for_file: invalid_annotation_target
import 'package:farm_market_app/shared/models/price_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel(
    String? uid,
    @JsonKey(name: 'title') String? name,
    String? description,
    String? category,
    String? composition,
    @JsonKey(name: 'list_of_images') List<String>? images,
    List<PriceModel>? prices,
  ) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);
}
