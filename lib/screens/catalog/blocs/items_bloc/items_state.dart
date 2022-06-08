part of 'items_bloc.dart';

@freezed
class ItemsState with _$ItemsState {
  const factory ItemsState.initial() = _Initial;

  const factory ItemsState.loading() = _Loading;

  const factory ItemsState.loaded(
    List<ItemModel> items,
    CategoryModel? selectedCategory,
  ) = _Loaded;

  const factory ItemsState.error() = _Error;

  static CategoryModel? lastSelectedCategory;
}
