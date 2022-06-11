part of 'items_bloc.dart';

@freezed
class ItemsEvent with _$ItemsEvent {
  const factory ItemsEvent.loadData({
    required List<CategoryModel> selectedCategory,
  }) = _LoadData;

  //const factory ItemsEvent.refresh() = _Refresh;
}
