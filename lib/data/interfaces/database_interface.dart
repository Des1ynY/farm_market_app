import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/shared/models/item_model.dart';

abstract class IDatabase {
  Future<List<CategoryModel>> getCategories({String? parentCategoryId});

  Future<CategoryModel> getCategoryById({required String categoryId});

  Future<List<ItemModel>> getItems({String? categoryId});
}
