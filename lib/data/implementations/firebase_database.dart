import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farm_market_app/data/interfaces/database_interface.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/shared/models/item_model.dart';

class FirebaseDatabase extends IDatabase {
  static final _db = FirebaseFirestore.instance;

  static const _category = 'category';
  static const _items = 'items';

  @override
  Future<List<CategoryModel>> getCategories({String? parentCategoryId}) async {
    final List<CategoryModel> categories = [];
    late final QuerySnapshot<Map<String, dynamic>> query;

    if (parentCategoryId != null) {
      query = await _db
          .collection(_category)
          .where('parent', isEqualTo: '/$_category/$parentCategoryId')
          .get();
      for (var doc in query.docs) {
        final category = CategoryModel.fromJson(doc.data());
        categories.add(category.copyWith(uid: doc.id));
      }
    } else {
      query = await _db.collection(_category).get();
      for (var doc in query.docs) {
        final category = CategoryModel.fromJson(doc.data());
        if (category.parentCategory != null) continue;
        categories.add(category.copyWith(uid: doc.id));
      }
    }
    return categories;
  }

  @override
  Future<CategoryModel> getCategoryById({required String categoryId}) async {
    final doc = await _db.collection(_category).doc(categoryId).get();

    if (!doc.exists) throw Exception('Referenced document does not exist');
    return CategoryModel.fromJson(doc.data()!).copyWith(uid: categoryId);
  }

  @override
  Future<List<ItemModel>> getItems({String? categoryId}) async {
    final List<ItemModel> items = [];
    late final QuerySnapshot<Map<String, dynamic>> query;

    if (categoryId != null) {
      query = await _db
          .collection(_items)
          .where('category', isEqualTo: '/$_category/$categoryId')
          .get();
    } else {
      query = await _db.collection(_items).get();
    }
    for (var doc in query.docs) {
      final item = ItemModel.fromJson(doc.data());
      items.add(item.copyWith(uid: doc.id));
    }
    return items;
  }
}
