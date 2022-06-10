import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:farm_market_app/shared/models/order_model.dart';

abstract class IDatabase {
  Future<List<CategoryModel>> getCategories({String? parentCategoryId});

  Future<CategoryModel> getCategoryById({required String categoryId});

  Future<List<ItemModel>> getItems({String? categoryId});

  Future<ItemModel> getItemById({required String itemId});

  Future<MapEntry<ItemModel, CategoryModel?>> getItemByIdWithCategory(
      {required String itemId});

  Future<void> setNewOrder(OrderModel order);
}
