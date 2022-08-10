import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farm_market_app/data/interfaces/database_interface.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:farm_market_app/shared/models/order_model.dart';

class FirebaseDatabase extends IDatabase {
  static final _db = FirebaseFirestore.instance;

  static const _category = 'category';
  static const _items = 'items';
  static const _orders = 'orders';

  @override
  Future<List<CategoryModel>> getCategories({String? parentCategoryId}) async {
    final List<CategoryModel> categories = [];
    late final QuerySnapshot<Map<String, dynamic>> query;

    if (parentCategoryId != null) {
      query = await _db
          .collection(_category)
          .where('parent', isEqualTo: parentCategoryId)
          .get();
      for (var doc in query.docs) {
        final category = CategoryModel.fromJson(doc.data());
        categories.add(category.copyWith(uid: doc.id));
      }
    } else {
      query = await _db.collection(_category).get();
      for (var doc in query.docs) {
        try {
          final category = CategoryModel.fromJson(doc.data());
          if (category.parentCategory != null) continue;
          categories.add(category.copyWith(uid: doc.id));
        } on Object {
          continue;
        }
      }
    }
    return categories;
  }

  @override
  Future<CategoryModel> getCategoryById({required String categoryId}) async {
    final doc = await _db.collection(_category).doc(categoryId).get();

    if (!doc.exists) throw Exception('Referenced document does not exist');

    try {
      return CategoryModel.fromJson(doc.data()!).copyWith(uid: categoryId);
    } on Object {
      rethrow;
    }
  }

  @override
  Future<List<ItemModel>> getItems({String? categoryId}) async {
    final List<ItemModel> items = [];
    late final QuerySnapshot<Map<String, dynamic>> query;

    if (categoryId != null) {
      query = await _db
          .collection(_items)
          .where('list_of_categories', arrayContains: categoryId)
          .get();
    } else {
      query = await _db.collection(_items).get();
    }
    for (var doc in query.docs) {
      try {
        final item = ItemModel.fromJson(doc.data());
        items.add(item.copyWith(uid: doc.id));
      } on Object {
        continue;
      }
    }
    return items;
  }

  @override
  Future<ItemModel> getItemById({required String itemId}) async {
    final doc = await _db.collection(_items).doc(itemId).get();

    if (!doc.exists) throw Exception('Referenced document does not exist');

    try {
      return ItemModel.fromJson(doc.data()!).copyWith(uid: itemId);
    } on Object {
      rethrow;
    }
  }

  @override
  Future<MapEntry<ItemModel, CategoryModel?>> getItemByIdWithCategory(
      {required String itemId}) async {
    final itemDoc = await _db.collection(_items).doc(itemId).get();

    if (!itemDoc.exists) throw Exception('Referenced document does not exist');

    try {
      final item = ItemModel.fromJson(itemDoc.data()!).copyWith(uid: itemId);

      if (item.category == null) return MapEntry(item, null);

      final categoryId = item.category!.split('/').last;
      final category = await getCategoryById(categoryId: categoryId);

      return MapEntry(item, category);
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> setNewOrder(OrderModel order) async {
    try {
      // jsonEncode нужен для корректного добавления в Firebase
      // Без него List<ItemInOrderModel> в OrderModel дает ошибку парсинга
      final json = jsonEncode(order.toJson());
      await _db.collection(_orders).doc(order.uid).set(jsonDecode(json));
    } on Object {
      rethrow;
    }
  }
}
