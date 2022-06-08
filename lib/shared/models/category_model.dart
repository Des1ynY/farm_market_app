// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel(
    String? uid,
    String? name,
    @JsonKey(name: 'category_icon') String? icon,
    @JsonKey(name: 'parent') String? parentCategory,
    List<String>? items,
    List<String>? children,
  ) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
